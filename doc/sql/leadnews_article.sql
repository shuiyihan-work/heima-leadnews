CREATE DATABASE IF NOT EXISTS leadnews_article DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE leadnews_article;
SET NAMES utf8;


SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ap_article
-- ----------------------------
DROP TABLE IF EXISTS `ap_article`;
CREATE TABLE `ap_article` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `author_id` int(11) unsigned DEFAULT NULL COMMENT '文章作者的ID',
  `author_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '作者昵称',
  `channel_id` int(10) unsigned DEFAULT NULL COMMENT '文章所属频道ID',
  `channel_name` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '频道名称',
  `layout` tinyint(1) unsigned DEFAULT NULL COMMENT '文章布局\r\n            0 无图文章\r\n            1 单图文章\r\n            2 多图文章',
  `flag` tinyint(3) unsigned DEFAULT NULL COMMENT '文章标记\r\n            0 普通文章\r\n            1 热点文章\r\n            2 置顶文章\r\n            3 精品文章\r\n            4 大V 文章',
  `images` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文章图片\r\n            多张逗号分隔',
  `labels` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文章标签最多3个 逗号分隔',
  `likes` int(5) unsigned DEFAULT NULL COMMENT '点赞数量',
  `collection` int(5) unsigned DEFAULT NULL COMMENT '收藏数量',
  `comment` int(5) unsigned DEFAULT NULL COMMENT '评论数量',
  `views` int(5) unsigned DEFAULT NULL COMMENT '阅读数量',
  `province_id` int(11) unsigned DEFAULT NULL COMMENT '省市',
  `city_id` int(11) unsigned DEFAULT NULL COMMENT '市区',
  `county_id` int(11) unsigned DEFAULT NULL COMMENT '区县',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `publish_time` datetime DEFAULT NULL COMMENT '发布时间',
  `sync_status` tinyint(1) DEFAULT '0' COMMENT '同步状态',
  `origin` tinyint(1) unsigned DEFAULT '0' COMMENT '来源',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1246808139941122050 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='文章信息表，存储已发布的文章';

-- ----------------------------
-- Records of ap_article
-- ----------------------------
INSERT INTO `ap_article` VALUES ('1', '30岁终于遇到爱情，却错过了“最佳食用日期”', '1', '三联生活周刊', '1', '', '1', '0', 'https://p3.pstatp.com/list/pgc-image/RUJq7LcIdut4Gh', '爱情', '0', '0', '181', '0', '1', '1', '1', '2019-06-27 15:18:10', '2020-05-04 15:18:13', '0', '0');
INSERT INTO `ap_article` VALUES ('1246472013669851138', '测试自动审核', '4', 'admin', '1', 'java', '1', null, 'http://192.168.200.130/group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png', null, null, null, null, null, null, null, null, '2020-04-05 00:17:41', '2020-05-04 00:02:47', '0', '0');
INSERT INTO `ap_article` VALUES ('1246807049476608001', '传智播客', '4', 'admin', '1', 'java', '1', null, 'http://192.168.200.130/group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png', null, null, null, null, null, null, null, null, '2020-04-05 22:28:59', '2020-04-01 00:02:47', '0', '0');
INSERT INTO `ap_article` VALUES ('1246808139941122049', '黑马程序员', '4', 'admin', '1', 'java', '3', null, 'http://192.168.200.130/group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png,http://192.168.200.130/group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png,http://192.168.200.130/group1/M00/00/00/wKjIgl5sm0SAeTNuAACZDHhWRnc981.png', null, null, null, null, null, null, null, null, '2020-04-05 22:33:20', '2020-03-14 20:08:30', '0', '0');

-- ----------------------------
-- Table structure for ap_article_config
-- ----------------------------
DROP TABLE IF EXISTS `ap_article_config`;
CREATE TABLE `ap_article_config` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `article_id` bigint(20) unsigned DEFAULT NULL COMMENT '文章ID',
  `is_comment` tinyint(1) unsigned DEFAULT NULL COMMENT '是否可评论',
  `is_forward` tinyint(1) unsigned DEFAULT NULL COMMENT '是否转发',
  `is_down` tinyint(1) unsigned DEFAULT NULL COMMENT '是否下架',
  `is_delete` tinyint(1) unsigned DEFAULT NULL COMMENT '是否已删除',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_article_id` (`article_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1246808140683513858 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP已发布文章配置表';

-- ----------------------------
-- Records of ap_article_config
-- ----------------------------
INSERT INTO `ap_article_config` VALUES ('1', null, '1', '1', '0', '0');
INSERT INTO `ap_article_config` VALUES ('1244563109323063298', '1244563054818082817', '1', '1', '0', '0');
INSERT INTO `ap_article_config` VALUES ('1244586268424257538', '1244586268222930945', '1', '1', '0', '0');
INSERT INTO `ap_article_config` VALUES ('1244640635193917442', '1244640634690600961', '1', '1', '0', '0');
INSERT INTO `ap_article_config` VALUES ('1245021612718198785', '1245021612030332930', '1', '1', '0', '0');
INSERT INTO `ap_article_config` VALUES ('1246470940439732225', '1246470939110137857', '1', '1', '0', '0');
INSERT INTO `ap_article_config` VALUES ('1246470942402666498', '1246470942075510785', '1', '1', '0', '0');
INSERT INTO `ap_article_config` VALUES ('1246471784358862849', '1246471783863934978', '1', '1', '0', '0');
INSERT INTO `ap_article_config` VALUES ('1246472014504517633', '1246472013669851138', '1', '1', '0', '0');
INSERT INTO `ap_article_config` VALUES ('1246808140683513857', '1246808139941122049', '1', '1', '0', '0');

-- ----------------------------
-- Table structure for ap_article_content
-- ----------------------------
DROP TABLE IF EXISTS `ap_article_content`;
CREATE TABLE `ap_article_content` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `article_id` bigint(20) unsigned DEFAULT NULL COMMENT '文章ID',
  `content` longtext COLLATE utf8mb4_unicode_ci COMMENT '文章内容',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_article_id` (`article_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1246808141253939202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP已发布文章内容表';

-- ----------------------------
-- Records of ap_article_content
-- ----------------------------
INSERT INTO `ap_article_content` VALUES ('1', null, '[{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sm0SAeTNuAACZDHhWRnc981.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5smzOABUgcAADtgkclyT8222.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]');
INSERT INTO `ap_article_content` VALUES ('1244563109817991170', '1244563054818082817', '[{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sm0SAeTNuAACZDHhWRnc981.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5smzOABUgcAADtgkclyT8222.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]');
INSERT INTO `ap_article_content` VALUES ('1244586268701081601', '1244586268222930945', '[{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sm0SAeTNuAACZDHhWRnc981.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5smzOABUgcAADtgkclyT8222.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]');
INSERT INTO `ap_article_content` VALUES ('1244640635445575682', '1244640634690600961', '[{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sm0SAeTNuAACZDHhWRnc981.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5smzOABUgcAADtgkclyT8222.png\"},{\"type\":\"text\",\"value\":\"请输入文章法论冰毒...\"}]');
INSERT INTO `ap_article_content` VALUES ('1245021613078908929', '1245021612030332930', '[{\"type\":\"text\",\"value\":\"测试自动审核功能\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]');
INSERT INTO `ap_article_content` VALUES ('1246470941337313281', '1246470939110137857', '[{\"type\":\"text\",\"value\":\"测试自动审核\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]');
INSERT INTO `ap_article_content` VALUES ('1246470942721433602', '1246470942075510785', '[{\"type\":\"text\",\"value\":\"测试自动审核\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]');
INSERT INTO `ap_article_content` VALUES ('1246471784853790721', '1246471783863934978', '[{\"type\":\"text\",\"value\":\"测试自动审核\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]');
INSERT INTO `ap_article_content` VALUES ('1246472014890393601', '1246472013669851138', '[{\"type\":\"text\",\"value\":\"测试自动审核\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]');
INSERT INTO `ap_article_content` VALUES ('1246808141253939201', '1246808139941122049', '[{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sm0SAeTNuAACZDHhWRnc981.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5smzOABUgcAADtgkclyT8222.png\"},{\"type\":\"text\",\"value\":\"请输入文...\"}]');

-- ----------------------------
-- Table structure for ap_article_label
-- ----------------------------
DROP TABLE IF EXISTS `ap_article_label`;
CREATE TABLE `ap_article_label` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `article_id` bigint(20) unsigned DEFAULT NULL,
  `label_id` int(11) unsigned DEFAULT NULL COMMENT '标签ID',
  `count` int(5) unsigned DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章标签信息表';

-- ----------------------------
-- Records of ap_article_label
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='联想词表';

-- ----------------------------
-- Records of ap_associate_words
-- ----------------------------

-- ----------------------------
-- Table structure for ap_author
-- ----------------------------
DROP TABLE IF EXISTS `ap_author`;
CREATE TABLE `ap_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) DEFAULT NULL COMMENT '作者名称',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '0 爬取数据\r\n            1 签约合作商\r\n            2 平台自媒体人\r\n            ',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '社交账号ID',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `wm_user_id` int(11) unsigned DEFAULT NULL COMMENT '自媒体账号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_type_name` (`type`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='APP文章作者信息表';

-- ----------------------------
-- Records of ap_author
-- ----------------------------
INSERT INTO `ap_author` VALUES ('1', 'zhangsan', '2', '1', '2020-03-19 23:43:54', null);
INSERT INTO `ap_author` VALUES ('2', 'lisi', '2', '2', '2020-03-19 23:47:44', null);
INSERT INTO `ap_author` VALUES ('3', 'wangwu', '2', '3', '2020-03-19 23:50:09', null);
INSERT INTO `ap_author` VALUES ('4', 'admin', '2', '4', '2020-03-30 16:36:41', null);

-- ----------------------------
-- Table structure for ap_collection
-- ----------------------------
DROP TABLE IF EXISTS `ap_collection`;
CREATE TABLE `ap_collection` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned DEFAULT NULL COMMENT '实体ID',
  `article_id` bigint(20) unsigned DEFAULT NULL COMMENT '文章ID',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '点赞内容类型\r\n            0文章\r\n            1动态',
  `collection_time` datetime DEFAULT NULL COMMENT '创建时间',
  `published_time` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_user_type` (`entry_id`,`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP收藏信息表';

-- ----------------------------
-- Records of ap_collection
-- ----------------------------
INSERT INTO `ap_collection` VALUES ('1', '1', '1246808139941122049', '0', '2020-04-07 23:46:47', '2020-04-07 23:46:50');

-- ----------------------------
-- Table structure for ap_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `ap_dynamic`;
CREATE TABLE `ap_dynamic` (
  `id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '文章作者的ID',
  `user_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '作者昵称',
  `content` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '频道名称',
  `is_forward` tinyint(1) unsigned DEFAULT NULL COMMENT '是否转发',
  `article_id` bigint(11) unsigned DEFAULT NULL COMMENT '转发文章ID',
  `articel_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '转发文章标题',
  `article_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '转发文章图片',
  `layout` tinyint(1) unsigned DEFAULT NULL COMMENT '布局标识\r\n            0 无图动态\r\n            1 单图动态\r\n            2 多图动态\r\n            3 转发动态',
  `images` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文章图片\r\n            多张逗号分隔',
  `likes` int(5) unsigned DEFAULT NULL COMMENT '点赞数量',
  `collection` int(5) unsigned DEFAULT NULL COMMENT '收藏数量',
  `comment` int(5) unsigned DEFAULT NULL COMMENT '评论数量',
  `views` int(5) unsigned DEFAULT NULL COMMENT '阅读数量',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP用户动态信息表';

-- ----------------------------
-- Records of ap_dynamic
-- ----------------------------

-- ----------------------------
-- Table structure for ap_equipment
-- ----------------------------
DROP TABLE IF EXISTS `ap_equipment`;
CREATE TABLE `ap_equipment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '0PC\r\n            1ANDROID\r\n            2IOS\r\n            3PAD\r\n            9 其他',
  `version` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设备版本',
  `sys` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设备系统',
  `no` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设备唯一号，MD5加密',
  `created_time` datetime DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP设备信息表';

-- ----------------------------
-- Records of ap_equipment
-- ----------------------------

-- ----------------------------
-- Table structure for ap_equipment_code
-- ----------------------------
DROP TABLE IF EXISTS `ap_equipment_code`;
CREATE TABLE `ap_equipment_code` (
  `id` int(11) unsigned NOT NULL,
  `equipment_id` int(11) unsigned DEFAULT NULL COMMENT '用户ID',
  `code` longtext COLLATE utf8mb4_unicode_ci COMMENT '设备码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP设备码信息表';

-- ----------------------------
-- Records of ap_equipment_code
-- ----------------------------

-- ----------------------------
-- Table structure for ap_hot_articles
-- ----------------------------
DROP TABLE IF EXISTS `ap_hot_articles`;
CREATE TABLE `ap_hot_articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  `tag_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '频道ID',
  `tag_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '频道名称',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '热度评分',
  `article_id` bigint(20) unsigned DEFAULT NULL COMMENT '文章ID',
  `province_id` int(11) unsigned DEFAULT NULL COMMENT '省市',
  `city_id` int(11) unsigned DEFAULT NULL COMMENT '市区',
  `county_id` int(11) unsigned DEFAULT NULL COMMENT '区县',
  `is_read` tinyint(2) unsigned DEFAULT NULL COMMENT '是否阅读',
  `release_date` datetime DEFAULT NULL,
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_entry_id` (`entry_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='热文章表';

-- ----------------------------
-- Records of ap_hot_articles
-- ----------------------------
INSERT INTO `ap_hot_articles` VALUES ('1', '0', '1', '', '181', '1', '1', '1', '1', '0', '2020-05-04 15:18:13', '2020-05-05 14:24:35');
INSERT INTO `ap_hot_articles` VALUES ('2', '1', '1', '', '181', '1', '1', '1', '1', '0', '2020-05-04 15:18:13', '2020-05-05 14:24:35');
INSERT INTO `ap_hot_articles` VALUES ('3', '0', '1', 'java', '0', '1246472013669851138', null, null, null, '0', '2020-05-04 00:02:47', '2020-05-05 14:24:35');
INSERT INTO `ap_hot_articles` VALUES ('4', '1', '1', 'java', '0', '1246472013669851138', null, null, null, '0', '2020-05-04 00:02:47', '2020-05-05 14:24:35');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='搜索热词表';

-- ----------------------------
-- Records of ap_hot_words
-- ----------------------------

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `branch_id` BIGINT(20) NOT NULL,
  `xid` VARCHAR(100) NOT NULL,
  `context` VARCHAR(128) NOT NULL,
  `rollback_info` LONGBLOB NOT NULL,
  `log_status` INT(11) NOT NULL,
  `log_created` DATETIME NOT NULL,
  `log_modified` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`)
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Records of undo_log
-- ----------------------------
