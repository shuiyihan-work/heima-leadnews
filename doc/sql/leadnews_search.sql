CREATE DATABASE IF NOT EXISTS leadnews_search DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE leadnews_search;
SET NAMES utf8;


SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ap_associate_words
-- ----------------------------
DROP TABLE IF EXISTS `ap_associate_words`;
CREATE TABLE `ap_associate_words` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `associate_words` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联想词',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_associate_words` (`associate_words`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='联想词表';

-- ----------------------------
-- Records of ap_associate_words
-- ----------------------------
INSERT INTO `ap_associate_words` VALUES ('1', '黑马程序员', '2020-04-20 14:07:29');
INSERT INTO `ap_associate_words` VALUES ('2', '黑马头条', '2020-04-20 14:15:58');
INSERT INTO `ap_associate_words` VALUES ('3', '黑马旅游', '2020-04-20 14:16:06');

-- ----------------------------
-- Table structure for ap_hot_words
-- ----------------------------
DROP TABLE IF EXISTS `ap_hot_words`;
CREATE TABLE `ap_hot_words` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hot_words` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '热词',
  `type` tinyint(2) DEFAULT NULL COMMENT '0:热,1:荐,2:新,3:火,4:精,5:亮',
  `hot_date` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '热词日期',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_hot_date` (`hot_date`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='搜索热词表';

-- ----------------------------
-- Records of ap_hot_words
-- ----------------------------
INSERT INTO `ap_hot_words` VALUES ('1', '黑马程序员', '0', '2020-04-20', '2020-04-20 14:08:06');
INSERT INTO `ap_hot_words` VALUES ('2', '黑马', '0', '2020-04-20', '2020-04-20 14:34:27');

-- ----------------------------
-- Table structure for ap_user_search
-- ----------------------------
DROP TABLE IF EXISTS `ap_user_search`;
CREATE TABLE `ap_user_search` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '用户ID',
  `keyword` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '搜索词',
  `status` tinyint(2) unsigned DEFAULT NULL COMMENT '当前状态0 无效 1有效',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP用户搜索信息表';

-- ----------------------------
-- Records of ap_user_search
-- ----------------------------
INSERT INTO `ap_user_search` VALUES ('1', '1', '黑马', '0', '2020-04-20 14:00:22');
INSERT INTO `ap_user_search` VALUES ('2', '1', '黑马程序员', '1', '2020-04-20 14:22:43');
INSERT INTO `ap_user_search` VALUES ('3', '1', '显示字', '0', '2020-04-20 14:39:22');
INSERT INTO `ap_user_search` VALUES ('4', '1', '传智播客', '1', '2020-04-20 15:04:32');
INSERT INTO `ap_user_search` VALUES ('5', '1', '博学谷', '1', '2020-04-20 15:04:53');
INSERT INTO `ap_user_search` VALUES ('6', '1', '酷丁鱼', '1', '2020-04-20 15:05:06');
INSERT INTO `ap_user_search` VALUES ('7', '1', '黑马头条', '1', '2020-04-20 15:05:19');
INSERT INTO `ap_user_search` VALUES ('8', '1', 'java', '1', '2020-04-20 15:05:40');
INSERT INTO `ap_user_search` VALUES ('9', '1', null, '0', '2020-04-20 15:06:01');
