/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 13/09/2021 09:46:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `item_id` int(11) NULL DEFAULT NULL COMMENT '商品id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `num` int(11) NULL DEFAULT NULL COMMENT '商品数量',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品价格',
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品总价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论者',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '商品id',
  `item_id` int(11) NULL DEFAULT NULL COMMENT '评论内容',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论时间',
  `addTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (9, NULL, 28, '万能的水果，好吃又好玩', '2021-01-30 21:29:50');
INSERT INTO `comment` VALUES (10, NULL, 27, '哈哈哈哈', '2021-04-24 21:58:29');
INSERT INTO `comment` VALUES (11, NULL, 27, '真好吃', '2021-05-08 11:02:54');
INSERT INTO `comment` VALUES (12, NULL, 27, '万能的水果，好吃又好玩', '2021-05-08 11:09:17');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `scNum` int(11) NULL DEFAULT NULL COMMENT '收藏数',
  `gmNum` int(11) NULL DEFAULT NULL COMMENT '购买数',
  `url1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ms` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pam1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数1',
  `pam2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数2',
  `pam3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数3',
  `val3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值3',
  `val2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值2',
  `val1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值1',
  `type` int(11) NULL DEFAULT NULL,
  `zk` int(10) NULL DEFAULT NULL COMMENT '折扣',
  `category_id_one` int(11) NULL DEFAULT NULL COMMENT '类别id',
  `category_id_two` int(11) NULL DEFAULT NULL COMMENT '类别2级',
  `isDelete` int(2) NULL DEFAULT NULL COMMENT '0否 1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (27, '山西运城新鲜水果苹果红富士', '54.9', 7, 42, '\\resource\\ueditor\\upload\\9f0296902c2111e865b6dc2da7582a7aTB19p5HeKuSBuNjSsziXXbq8pXa_!!0-item_pic.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\9f030bc02c2111e865b6dc2da7582a7aTB19p5HeKuSBuNjSsziXXbq8pXa_!!0-item_pic.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\9f05cae02c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\9f0667202c2111e865b6dc2da7582a7aTB2faFrcFGWBuNjy0FbXXb4sXXa_!!3320501499.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\9f06dc502c2111e865b6dc2da7582a7aTB2GaJWaYArBKNjSZFLXXc_dVXa_!!3320501499.jpg_430x430q90.jpg', '<p><img src=\"/resource/ueditor/upload/3ca705602c1e11e865b6dc2da7582a7a1.jpg\" title=\"\" alt=\"1.jpg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 75, 76, 0);
INSERT INTO `item` VALUES (28, '黄河古道安徽砀山红富士 丑苹果 不打蜡，无农药', '66.5', 3, 17, '\\resource\\ueditor\\upload\\ba329bc02c1e11e865b6dc2da7582a7a811f5031-87ab-4a55-bfd2-3e29a5eb0ad7.jpg', '\\resource\\ueditor\\upload\\ba3310f02c1e11e865b6dc2da7582a7a6431e0f4-1f60-465b-906e-25ea52bd076b.jpg', '\\resource\\ueditor\\upload\\ba3386202c1e11e865b6dc2da7582a7ae13bedb5-c6c1-47f2-8588-5735397f0dea (1).jpg', '\\resource\\ueditor\\upload\\ba33d4402c1e11e865b6dc2da7582a7ae13bedb5-c6c1-47f2-8588-5735397f0dea.jpg', '\\resource\\ueditor\\upload\\ba3449702c1e11e865b6dc2da7582a7ae37c45cf-fcea-4cb1-8b4e-c7ead141c76d.jpg', '<p><img src=\"/resource/ueditor/a730e2c02c1e11e865b6dc2da7582a7a1.jpg\" title=\"\" alt=\"1.jpg\"/></p><p><img src=\"/test1_war_exploded/resource/ueditor/a93984002c1e11e865b6dc2da7582a7a2.png\" title=\"\" alt=\"2.png\"/></p><p><br/></p><p><img src=\"/test1_war_exploded/resource/ueditor/upload/ab62cca02c1e11e865b6dc2da7582a7a3.jpg\" title=\"\" alt=\"3.jpg\"/></p><p><img src=\"/resource/ueditor/upload/ad2368602c1e11e865b6dc2da7582a7a4.png\" title=\"\" alt=\"4.png\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 75, 76, 0);
INSERT INTO `item` VALUES (29, '2017山东新鲜红富士苹果', '49.9', 1, 0, '\\resource\\ueditor\\upload\\2cb2e5102c1f11e865b6dc2da7582a7a5f5bfef1-1183-4c8a-80f5-23a8251422eb.jpg', '\\resource\\ueditor\\upload\\2cb333302c1f11e865b6dc2da7582a7a49e3c13e-5e8c-4c4a-8382-0721d61ae630.jpg', '\\resource\\ueditor\\upload\\2cb3a8602c1f11e865b6dc2da7582a7adbbbca07-7c2d-4ecb-a1e3-097620517400.jpg', '\\resource\\ueditor\\upload\\2cb41d902c1f11e865b6dc2da7582a7ae798f106-7f85-43f8-82d0-7a1918bd5876.jpg', '\\resource\\ueditor\\upload\\2cb46bb02c1f11e865b6dc2da7582a7adbbbca07-7c2d-4ecb-a1e3-097620517400.jpg', '<p><img src=\"/resource/ueditor/29418c102c1f11e865b6dc2da7582a7a1.jpg\" title=\"\" alt=\"1.jpg\"/></p><p><img src=\"/resource/ueditor/upload/2bb683b02c1f11e865b6dc2da7582a7a2.jpg\" title=\"\" alt=\"2.jpg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 75, 76, 0);
INSERT INTO `item` VALUES (30, '陕西新鲜石榴现摘时令水果贵妃大石榴农家特产薄皮酸石榴', '85', 0, 10, '\\resource\\ueditor\\upload\\d9a752b02c1f11e865b6dc2da7582a7aTB1pC88XOCYBuNkSnaVXXcMsVXa_!!0-item_pic.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\d9a7eef02c1f11e865b6dc2da7582a7aTB2dP17arGYBuNjy0FoXXciBFXa_!!2455418594.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\d9a864202c1f11e865b6dc2da7582a7aTB2TmdedPgy_uJjSZLeXXaPlFXa_!!2455418594.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\d9a8b2402c1f11e865b6dc2da7582a7aTB2dP17arGYBuNjy0FoXXciBFXa_!!2455418594.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\d9aad5202c1f11e865b6dc2da7582a7aTB2TmdedPgy_uJjSZLeXXaPlFXa_!!2455418594.jpg_430x430q90.jpg', '<p><img src=\"/resource/ueditor/upload/d89212202c1f11e865b6dc2da7582a7aTB2TmdedPgy_uJjSZLeXXaPlFXa_!!2455418594.jpg_430x430q90.jpg\" title=\"\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 71, 72, 0);
INSERT INTO `item` VALUES (31, '【现货】蒙自甜石榴云南特产薄皮 新鲜水果9个装 单果4.5两左右', '36', 0, 5, '\\resource\\ueditor\\upload\\23dc83f02c2011e865b6dc2da7582a7aTB2A3FzXRLzQeBjSZFoXXc5gFXa_!!2455185564.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\23dcf9202c2011e865b6dc2da7582a7aTB2iwNJX8PzQeBjSZPiXXb0TpXa_!!2455185564.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\23dd95602c2011e865b6dc2da7582a7aTB2MpRlaqnyQeBjSsplXXaLWVXa_!!2455185564.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\23de0a902c2011e865b6dc2da7582a7aTB11gurg63z9KJjy0FmXXXiwXXa_!!0-item_pic.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\23de7fc02c2011e865b6dc2da7582a7aTB2MpRlaqnyQeBjSsplXXaLWVXa_!!2455185564.jpg_430x430q90.jpg', '<p>品牌名称：<span class=\"J_EbrandLogo\" style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51);\">绿养道</span></p><p class=\"attr-list-hd tm-clear\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 20px; line-height: 22px; color: rgb(153, 153, 153); font-family: tahoma, arial, 微软雅黑, sans-serif; font-size: 12px; font-variant-numeric: normal; font-variant-east-asian: normal; white-space: normal; widows: 1; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-weight: 700; float: left;\">产品参数：</span></p><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>厂名：绿养道农产品产销合作社</p></li><li><p>厂址：云南蒙自攀枝村花石榴园</p></li><li><p>厂家联系方式：13521676858</p></li><li><p>保质期：60 天</p></li><li><p>净含量:&nbsp;1900g</p></li><li><p>包装方式:&nbsp;包装</p></li><li><p>品牌:&nbsp;绿养道</p></li><li><p>售卖方式:&nbsp;单品</p></li><li><p>生鲜储存温度:&nbsp;8-15℃</p></li><li><p>热卖时间:&nbsp;1月&nbsp;2月&nbsp;8月&nbsp;9月&nbsp;10月&nbsp;11月&nbsp;12月</p></li><li><p>产地:&nbsp;中国大陆</p></li><li><p>省份:&nbsp;云南省</p></li><li><p>城市:&nbsp;红河哈尼族彝族自治州</p></li><li><p>特产品类:&nbsp;蒙自石榴</p></li><li><p>净含量:&nbsp;2.5kg(含）-5kg(不含)</p></li><li><p>价格:&nbsp;51-100元</p></li></ul><p><br/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 71, 72, 0);
INSERT INTO `item` VALUES (32, '现货突尼斯软籽石榴2个超大果软子甜酸石榴新鲜水果非蒙自石榴', '99', 0, 12, '\\resource\\ueditor\\upload\\92cc7a902c2011e865b6dc2da7582a7aTB1a7xUdUR1BeNjy0FmXXb0wVXa_!!0-item_pic.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\92ccefc02c2011e865b6dc2da7582a7aTB2GV6ld7fb_uJjSsD4XXaqiFXa_!!3206065077.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\92cd8c002c2011e865b6dc2da7582a7aTB2J81_nf2H8KJjy0FcXXaDlFXa_!!3206065077.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\92ce01302c2011e865b6dc2da7582a7aTB2oM1InmYH8KJjSspdXXcRgVXa_!!3206065077.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\92ce76602c2011e865b6dc2da7582a7aTB29bjrngLD8KJjSszeXXaGRpXa_!!3206065077.jpg_430x430q90.jpg', '<p><img src=\"/resource/ueditor/upload/8bbe4bc02c2011e865b6dc2da7582a7a1.jpg\" title=\"\" alt=\"1.jpg\"/><img src=\"/resource/ueditor/upload/8d8947c02c2011e865b6dc2da7582a7a2.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/resource/ueditor/upload/8fd310b02c2011e865b6dc2da7582a7a77.jpg\" title=\"\" alt=\"77.jpg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 71, 72, 0);
INSERT INTO `item` VALUES (33, '荥阳突尼斯陈氏河阴软籽石榴软子新鲜水果非会理蒙自临潼甜新鲜', '80', 1, 3, '\\resource\\ueditor\\upload\\dcb3b2e02c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\dcb6e7302c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\dcb75c602c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\dcb7d1902c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\dcb86dd02c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg', '<p><img src=\"/resource/ueditor/upload/dbbc33802c2011e865b6dc2da7582a7aTB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg\" title=\"\" alt=\"TB2VP8VmjuhSKJjSspaXXXFgFXa_!!3363047546.jpg_430x430q90.jpg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 71, 72, 0);
INSERT INTO `item` VALUES (34, '正宗陕西红心石榴水果新鲜', '85', 0, 5, '\\resource\\ueditor\\upload\\fcb3d5805ef311ebfce5482ba1cc1caf4.jpg', '\\resource\\ueditor\\upload\\fcb423a05ef311ebfce5482ba1cc1caf', '\\resource\\ueditor\\upload\\fcb44ab05ef311ebfce5482ba1cc1caf', '\\resource\\ueditor\\upload\\fcb44ab15ef311ebfce5482ba1cc1caf', '\\resource\\ueditor\\upload\\fcb5f8605ef311ebfce5482ba1cc1caf', '<p><img src=\"/resource/ueditor/upload/e90b2e205ef311ebfce5482ba1cc1caf2d9442dd46cc58ea93bb838259939d2d.png\" title=\"\" alt=\"2d9442dd46cc58ea93bb838259939d2d.png\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 71, 72, 0);
INSERT INTO `item` VALUES (35, '新鲜油桃5斤 新鲜孕妇水果非水蜜桃黄桃毛桃子樱桃当季时令鲜果', '25', 0, 8, '\\resource\\ueditor\\upload\\4152abc02c2111e865b6dc2da7582a7aTB1sRNzXSMmBKNjSZTEXXasKpXa_!!0-item_pic.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\41536f102c2111e865b6dc2da7582a7aTB2d_RhaKuSBuNjy1XcXXcYjFXa_!!2102024380.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\41540b502c2111e865b6dc2da7582a7aTB1sRNzXSMmBKNjSZTEXXasKpXa_!!0-item_pic.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\415459702c2111e865b6dc2da7582a7aTB2d_RhaKuSBuNjy1XcXXcYjFXa_!!2102024380.jpg_430x430q90.jpg', '\\resource\\ueditor\\upload\\4154cea02c2111e865b6dc2da7582a7aTB1sRNzXSMmBKNjSZTEXXasKpXa_!!0-item_pic.jpg_430x430q90.jpg', '<p><img src=\"/resource/ueditor/upload/407173802c2111e865b6dc2da7582a7aTB2d_RhaKuSBuNjy1XcXXcYjFXa_!!2102024380.jpg_430x430q90.jpg\" title=\"\" alt=\"TB2d_RhaKuSBuNjy1XcXXcYjFXa_!!2102024380.jpg_430x430q90.jpg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 73, 74, 1);
INSERT INTO `item` VALUES (36, '现摘3斤 桃子水蜜桃 新鲜水果包邮脆桃硬桃现货新摘桃子非油桃黄', '120', 0, 3, '\\resource\\ueditor\\upload\\8f309d005eed11ebb6ba7b67517d3ffd5.jpg', '\\resource\\ueditor\\upload\\8f30c4105eed11ebb6ba7b67517d3ffd', '\\resource\\ueditor\\upload\\8f30eb205eed11ebb6ba7b67517d3ffd', '\\resource\\ueditor\\upload\\8f324ab05eed11ebb6ba7b67517d3ffd', '\\resource\\ueditor\\upload\\8f3271c05eed11ebb6ba7b67517d3ffd', '<p>12</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 73, 74, 1);
INSERT INTO `item` VALUES (37, 'agaa', '12', 0, 0, '\\resource\\ueditor\\upload\\2e867560b07811eb0fff96abda244bcc1591318517245.jpeg', '\\resource\\ueditor\\upload\\2e87ade0b07811eb0fff96abda244bcc', '\\resource\\ueditor\\upload\\2e9605c0b07811eb0fff96abda244bcc', '\\resource\\ueditor\\upload\\2e973e40b07811eb0fff96abda244bcc', '\\resource\\ueditor\\upload\\2e973e41b07811eb0fff96abda244bcc', '<p>afhiahgfui<img src=\"/resource/ueditor/upload/2cf83440b07811eb0fff96abda244bcc1591318517245.jpeg\" title=\"\" alt=\"1591318517245.jpeg\"/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, 69, 70, 1);

-- ----------------------------
-- Table structure for item_category
-- ----------------------------
DROP TABLE IF EXISTS `item_category`;
CREATE TABLE `item_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类目名',
  `pid` int(11) NULL DEFAULT NULL COMMENT '二级类目名',
  `isDelete` int(11) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_category
-- ----------------------------
INSERT INTO `item_category` VALUES (50, ' 礼帽', 44, 1);
INSERT INTO `item_category` VALUES (69, '梨', NULL, 0);
INSERT INTO `item_category` VALUES (70, '湾里酥梨放', 69, 0);
INSERT INTO `item_category` VALUES (71, '石榴', NULL, 0);
INSERT INTO `item_category` VALUES (72, '肖山御石榴', 71, 0);
INSERT INTO `item_category` VALUES (73, '桃子', NULL, 0);
INSERT INTO `item_category` VALUES (74, '史德镇御桃', 73, 0);
INSERT INTO `item_category` VALUES (75, '苹果', NULL, 0);
INSERT INTO `item_category` VALUES (76, '日本红富士', 75, 0);
INSERT INTO `item_category` VALUES (77, '秦冠', 75, 0);
INSERT INTO `item_category` VALUES (78, '嘎拉', 75, 1);
INSERT INTO `item_category` VALUES (79, '黄元帅', 75, 0);
INSERT INTO `item_category` VALUES (80, '菠菜', NULL, 0);
INSERT INTO `item_category` VALUES (81, 'xx', 75, 0);
INSERT INTO `item_category` VALUES (82, '火龙果', NULL, 0);
INSERT INTO `item_category` VALUES (83, '葡萄', NULL, 0);
INSERT INTO `item_category` VALUES (84, '菜单', NULL, 0);
INSERT INTO `item_category` VALUES (85, 'aga', NULL, 0);
INSERT INTO `item_category` VALUES (86, '里里', 69, 0);

-- ----------------------------
-- Table structure for item_order
-- ----------------------------
DROP TABLE IF EXISTS `item_order`;
CREATE TABLE `item_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `item_id` int(11) NULL DEFAULT NULL COMMENT '商品id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '购买者id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `addTime` datetime(0) NULL DEFAULT NULL COMMENT '购买时间',
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购买数量',
  `isDelete` int(255) NULL DEFAULT NULL COMMENT '0未删除',
  `status` int(255) NULL DEFAULT NULL COMMENT '0.新建待发货1.已取消 2已发货3.到收货4.已评价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_order
-- ----------------------------
INSERT INTO `item_order` VALUES (33, NULL, 9, '2021013019520001', '2021-01-30 19:52:53', '267.95', 0, 1);
INSERT INTO `item_order` VALUES (34, NULL, 9, '2021013020070001', '2021-01-30 20:07:29', '314.82', 0, 1);
INSERT INTO `item_order` VALUES (35, NULL, 9, '2021013020200001', '2021-01-30 20:20:22', '59.86', 0, 3);
INSERT INTO `item_order` VALUES (36, NULL, 9, '2021022414040001', '2021-02-24 14:04:57', '197.64', 0, 3);
INSERT INTO `item_order` VALUES (37, NULL, 9, '2021032410150001', '2021-03-24 10:15:49', '148.23', 0, 1);
INSERT INTO `item_order` VALUES (38, NULL, 9, '2021042310000001', '2021-04-23 10:00:17', '247.05', 0, 1);
INSERT INTO `item_order` VALUES (39, NULL, 9, '2021042421570001', '2021-04-24 21:57:25', '395.28', 0, 1);
INSERT INTO `item_order` VALUES (40, NULL, 9, '2021042712150001', '2021-04-27 12:15:25', '100.80', 0, 2);
INSERT INTO `item_order` VALUES (41, NULL, 9, '2021042712300001', '2021-04-27 12:30:22', '49.41', 0, 2);
INSERT INTO `item_order` VALUES (42, NULL, 9, '2021042714400001', '2021-04-27 14:40:22', '382.50', 0, 3);
INSERT INTO `item_order` VALUES (43, NULL, 9, '2021042814210001', '2021-04-28 14:21:01', '296.46', 0, 3);
INSERT INTO `item_order` VALUES (44, NULL, 9, '2021050810560001', '2021-05-08 10:56:41', '76.50', 0, 1);
INSERT INTO `item_order` VALUES (45, NULL, 9, '2021050811050001', '2021-05-08 11:05:55', '25.20', 0, 1);
INSERT INTO `item_order` VALUES (46, NULL, 9, '2021050908150001', '2021-05-09 08:15:00', '449.46', 0, 1);
INSERT INTO `item_order` VALUES (47, NULL, 9, '2021050911360001', '2021-05-09 11:36:36', '537.36', 0, 2);

-- ----------------------------
-- Table structure for manage
-- ----------------------------
DROP TABLE IF EXISTS `manage`;
CREATE TABLE `manage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passWord` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manage
-- ----------------------------
INSERT INTO `manage` VALUES (1, 'admin', '111111', '管理员');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (3, '2', '2', '                    \n             2       ');
INSERT INTO `message` VALUES (4, 'raxcl', '18709494100', '你的系统如此棒，在下佩服');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '公告内容',
  `addTime` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (7, '香蕉123', '<p>噶多尴尬</p>', '2021-01-26 10:37:15');
INSERT INTO `news` VALUES (8, '人事档案嘎嘎', '<p>gadget</p>', '2021-01-26 10:53:30');
INSERT INTO `news` VALUES (9, '休息', '<p>今天休息<img src=\"http://img.baidu.com/hi/jx2/j_0016.gif\"/></p>', '2021-04-23 10:03:42');
INSERT INTO `news` VALUES (10, 'aga', '<p><img src=\"/resource/ueditor/upload/1bc0d420a7ea11eb4ea7a3f85a01ee0d1591318517245.jpeg\" title=\"\" alt=\"1591318517245.jpeg\"/></p>', '2021-04-28 14:22:31');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(255) NULL DEFAULT NULL,
  `order_id` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL COMMENT '0.未退货 1已退货',
  `num` int(11) NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (54, 27, 27, 0, 1, '1');
INSERT INTO `order_detail` VALUES (55, 32, 28, 0, 5, '25');
INSERT INTO `order_detail` VALUES (56, 27, 28, 0, 3, '9');
INSERT INTO `order_detail` VALUES (57, 28, 28, 0, 1, '1');
INSERT INTO `order_detail` VALUES (58, 35, 29, 0, 2, '4');
INSERT INTO `order_detail` VALUES (59, 34, 29, 0, 4, '16');
INSERT INTO `order_detail` VALUES (60, 32, 29, 0, 3, '9');
INSERT INTO `order_detail` VALUES (61, 36, 29, 0, 3, '9');
INSERT INTO `order_detail` VALUES (62, 32, 29, 0, 2, '4');
INSERT INTO `order_detail` VALUES (63, 35, 30, 0, 6, '36');
INSERT INTO `order_detail` VALUES (64, 30, 30, 0, 3, '9');
INSERT INTO `order_detail` VALUES (65, 28, 31, 0, 4, '16');
INSERT INTO `order_detail` VALUES (66, 28, 31, 0, 2, '4');
INSERT INTO `order_detail` VALUES (67, 28, 32, 0, 1, '1');
INSERT INTO `order_detail` VALUES (68, 27, 33, 0, 3, '148.23');
INSERT INTO `order_detail` VALUES (69, 28, 33, 0, 2, '119.72');
INSERT INTO `order_detail` VALUES (70, 33, 34, 0, 3, '216.0');
INSERT INTO `order_detail` VALUES (71, 27, 34, 0, 2, '98.82');
INSERT INTO `order_detail` VALUES (72, 28, 35, 0, 1, '59.86');
INSERT INTO `order_detail` VALUES (73, 27, 36, 0, 4, '197.64');
INSERT INTO `order_detail` VALUES (74, 27, 37, 0, 3, '148.23');
INSERT INTO `order_detail` VALUES (75, 27, 38, 0, 5, '247.04999999999998');
INSERT INTO `order_detail` VALUES (76, 27, 39, 0, 8, '395.28');
INSERT INTO `order_detail` VALUES (77, 31, 40, 0, 4, '100.8');
INSERT INTO `order_detail` VALUES (78, 27, 41, 0, 1, '49.41');
INSERT INTO `order_detail` VALUES (79, 30, 42, 0, 5, '382.5');
INSERT INTO `order_detail` VALUES (80, 27, 43, 0, 6, '296.46');
INSERT INTO `order_detail` VALUES (81, 34, 44, 0, 1, '76.5');
INSERT INTO `order_detail` VALUES (82, 31, 45, 0, 1, '25.2');
INSERT INTO `order_detail` VALUES (83, 30, 46, 0, 2, '153.0');
INSERT INTO `order_detail` VALUES (84, 27, 46, 0, 6, '296.46');
INSERT INTO `order_detail` VALUES (85, 32, 47, 0, 2, '178.2');
INSERT INTO `order_detail` VALUES (86, 28, 47, 0, 6, '359.15999999999997');

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `item_id` int(11) NULL DEFAULT NULL COMMENT '商品id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '收藏者id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES (17, 27, 3);
INSERT INTO `sc` VALUES (18, 28, 3);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `passWord` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  `realName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '1', '2', '3', '4', '1', '3', '22');
INSERT INTO `user` VALUES (2, 'dd', 'dd', 'dd', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (3, 'zs', '111111', '12345678933', '测试33', '女', '这里是', '1133');
INSERT INTO `user` VALUES (6, 'huang1', '123456', '18888888', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (7, 'huang1', '123456', '18888888', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (8, '1111112', '11', '11', NULL, NULL, NULL, '111@qq.com');
INSERT INTO `user` VALUES (9, 'raxcl', '1', '18709494100', '陈龙', '男', '银河', 'raxcl@qq.com');
INSERT INTO `user` VALUES (10, 'raxcl', 'qwert12345', '18709494100', NULL, NULL, NULL, 'raxcl@qq.com');
INSERT INTO `user` VALUES (11, 'raxcl', 'qwert12345', '18709494100', NULL, NULL, NULL, 'raxcl@qq.com');
INSERT INTO `user` VALUES (12, '', '', '', NULL, NULL, NULL, '');
INSERT INTO `user` VALUES (13, 'raxcl', 'qwert12345', '18709494100', NULL, NULL, NULL, 'raxcl@qq.com');

SET FOREIGN_KEY_CHECKS = 1;
