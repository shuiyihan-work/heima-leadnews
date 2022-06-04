CREATE DATABASE IF NOT EXISTS leadnews_behavior DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE leadnews_behavior;
SET NAMES utf8;


SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ap_behavior_entry
-- ----------------------------
DROP TABLE IF EXISTS `ap_behavior_entry`;
CREATE TABLE `ap_behavior_entry` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '实体类型\r\n            0终端设备\r\n            1用户',
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '实体ID',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP行为实体表,一个行为实体可能是用户或者设备，或者其它';

-- ----------------------------
-- Records of ap_behavior_entry
-- ----------------------------
INSERT INTO `ap_behavior_entry` VALUES ('1', '1', '4', '2020-04-07 22:17:22');

-- ----------------------------
-- Table structure for ap_follow_behavior
-- ----------------------------
DROP TABLE IF EXISTS `ap_follow_behavior`;
CREATE TABLE `ap_follow_behavior` (
  `id` bigint(20) unsigned NOT NULL,
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '实体ID',
  `article_id` bigint(20) unsigned DEFAULT NULL COMMENT '文章ID',
  `follow_id` int(11) unsigned DEFAULT NULL COMMENT '关注用户ID',
  `created_time` datetime DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP关注行为表';

-- ----------------------------
-- Records of ap_follow_behavior
-- ----------------------------
INSERT INTO `ap_follow_behavior` VALUES ('1248233125461381121', '1', '1246808139941122049', '4', '2020-04-09 20:55:43');
INSERT INTO `ap_follow_behavior` VALUES ('1248259649262604290', '1', '1246808139941122049', '4', '2020-04-09 22:41:07');
INSERT INTO `ap_follow_behavior` VALUES ('1248259742493593602', '1', '1246808139941122049', '4', '2020-04-09 22:41:29');
INSERT INTO `ap_follow_behavior` VALUES ('1248503387385778177', '1', '1246808139941122049', '4', '2020-04-10 14:49:38');

-- ----------------------------
-- Table structure for ap_forward_behavior
-- ----------------------------
DROP TABLE IF EXISTS `ap_forward_behavior`;
CREATE TABLE `ap_forward_behavior` (
  `id` bigint(20) unsigned NOT NULL,
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '实体ID',
  `article_id` bigint(20) unsigned DEFAULT NULL COMMENT '文章ID',
  `dynamic_id` int(11) unsigned DEFAULT NULL,
  `created_time` datetime DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP转发行为表';

-- ----------------------------
-- Records of ap_forward_behavior
-- ----------------------------

-- ----------------------------
-- Table structure for ap_likes_behavior
-- ----------------------------
DROP TABLE IF EXISTS `ap_likes_behavior`;
CREATE TABLE `ap_likes_behavior` (
  `id` bigint(20) unsigned NOT NULL,
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '实体ID',
  `article_id` bigint(20) unsigned DEFAULT NULL COMMENT '文章ID',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '点赞内容类型\r\n            0文章\r\n            1动态',
  `operation` tinyint(1) unsigned DEFAULT NULL COMMENT '0 点赞\r\n            1 取消点赞',
  `created_time` datetime DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP点赞行为表';

-- ----------------------------
-- Records of ap_likes_behavior
-- ----------------------------
INSERT INTO `ap_likes_behavior` VALUES ('1', '1', '1246808139941122049', '0', '0', '2020-04-07 23:20:31');
INSERT INTO `ap_likes_behavior` VALUES ('1248104583201398786', '1', '1246808139941122049', '0', '1', '2020-04-09 12:24:49');
INSERT INTO `ap_likes_behavior` VALUES ('1248104617884098561', '1', '1246808139941122049', '0', '0', '2020-04-09 12:25:04');
INSERT INTO `ap_likes_behavior` VALUES ('1248104638062895105', '1', '1246808139941122049', '0', '1', '2020-04-09 12:25:09');
INSERT INTO `ap_likes_behavior` VALUES ('1248106220552822785', '1', '1246472013669851138', '0', '0', '2020-04-09 12:31:26');
INSERT INTO `ap_likes_behavior` VALUES ('1248232593602662401', '1', '1246808139941122049', '0', '0', '2020-04-09 20:53:36');

-- ----------------------------
-- Table structure for ap_read_behavior
-- ----------------------------
DROP TABLE IF EXISTS `ap_read_behavior`;
CREATE TABLE `ap_read_behavior` (
  `id` bigint(20) unsigned NOT NULL,
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '用户ID',
  `article_id` bigint(20) unsigned DEFAULT NULL COMMENT '文章ID',
  `count` tinyint(3) unsigned DEFAULT NULL,
  `read_duration` int(11) unsigned DEFAULT NULL COMMENT '阅读时间单位秒',
  `percentage` tinyint(3) unsigned DEFAULT NULL COMMENT '阅读百分比',
  `load_duration` int(11) unsigned DEFAULT NULL COMMENT '文章加载时间',
  `created_time` datetime DEFAULT NULL COMMENT '登录时间',
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP阅读行为表';

-- ----------------------------
-- Records of ap_read_behavior
-- ----------------------------
INSERT INTO `ap_read_behavior` VALUES ('1248105196362506242', '1', '1246808139941122049', '1', '17400', '99', '300', '2020-04-19 19:58:11', '2020-04-19 19:58:11');
INSERT INTO `ap_read_behavior` VALUES ('1248106260990107650', '1', '1246472013669851138', '1', '15700', '96', '200', '2020-04-09 12:31:36', '2020-04-09 12:31:36');
INSERT INTO `ap_read_behavior` VALUES ('1248149323435319298', '1', '1', '1', '9800', '0', '9800', '2020-04-09 15:22:43', '2020-04-09 15:22:43');
INSERT INTO `ap_read_behavior` VALUES ('1251814142537469954', '1', '1246808139941122000', '1', '2400', '0', '2400', '2020-04-19 19:09:15', '2020-04-19 19:09:15');
INSERT INTO `ap_read_behavior` VALUES ('1251814223751778305', '1', '12345678900', '1', '1200', '0', '1200', '2020-04-19 18:05:43', '2020-04-19 18:05:43');

-- ----------------------------
-- Table structure for ap_share_behavior
-- ----------------------------
DROP TABLE IF EXISTS `ap_share_behavior`;
CREATE TABLE `ap_share_behavior` (
  `id` bigint(20) unsigned NOT NULL,
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '实体ID',
  `article_id` bigint(20) unsigned DEFAULT NULL COMMENT '文章ID',
  `type` tinyint(2) unsigned DEFAULT NULL COMMENT '0 微信\r\n            1 微信朋友圈\r\n            2 QQ\r\n            3 QQ 空间\r\n            4 微博\r\n            ',
  `created_time` datetime DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP分享行为表';

-- ----------------------------
-- Records of ap_share_behavior
-- ----------------------------

-- ----------------------------
-- Table structure for ap_show_behavior
-- ----------------------------
DROP TABLE IF EXISTS `ap_show_behavior`;
CREATE TABLE `ap_show_behavior` (
  `id` bigint(20) unsigned NOT NULL,
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '实体ID',
  `article_id` bigint(20) unsigned DEFAULT NULL COMMENT '文章ID',
  `is_click` tinyint(1) unsigned DEFAULT NULL COMMENT '是否点击',
  `show_time` datetime DEFAULT NULL COMMENT '文章加载时间',
  `created_time` datetime DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP文章展现行为表';

-- ----------------------------
-- Records of ap_show_behavior
-- ----------------------------

-- ----------------------------
-- Table structure for ap_unlikes_behavior
-- ----------------------------
DROP TABLE IF EXISTS `ap_unlikes_behavior`;
CREATE TABLE `ap_unlikes_behavior` (
  `id` bigint(11) unsigned NOT NULL,
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '实体ID',
  `article_id` bigint(11) unsigned DEFAULT NULL COMMENT '文章ID',
  `type` tinyint(2) unsigned DEFAULT NULL COMMENT '0 不喜欢\r\n            1 取消不喜欢',
  `created_time` datetime DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP不喜欢行为表';

-- ----------------------------
-- Records of ap_unlikes_behavior
-- ----------------------------
INSERT INTO `ap_unlikes_behavior` VALUES ('11222', '1', '1246808139941122049', '0', '2020-04-07 23:27:23');
