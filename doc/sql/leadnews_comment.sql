CREATE DATABASE IF NOT EXISTS leadnews_comment DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE leadnews_comment;
SET NAMES utf8;


SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ap_comment
-- ----------------------------
DROP TABLE IF EXISTS `ap_comment`;
CREATE TABLE `ap_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `author_id` int(11) unsigned DEFAULT NULL COMMENT '用户ID',
  `author_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户昵称',
  `entry_id` bigint(20) unsigned DEFAULT NULL,
  `channel_id` int(11) unsigned DEFAULT NULL COMMENT '频道ID',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '评论内容类型\r\n            0 文章\r\n            1 动态',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论内容',
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likes` int(5) unsigned DEFAULT NULL COMMENT '点赞数',
  `reply` int(5) unsigned DEFAULT NULL COMMENT '回复数',
  `flag` tinyint(2) unsigned DEFAULT NULL COMMENT '文章标记\r\n            0 普通评论\r\n            1 热点评论\r\n            2 推荐评论\r\n            3 置顶评论\r\n            4 精品评论\r\n            5 大V 评论',
  `longitude` decimal(5,5) DEFAULT NULL COMMENT '经度',
  `latitude` decimal(5,5) DEFAULT NULL COMMENT '维度',
  `address` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地理位置',
  `ord` int(11) unsigned DEFAULT NULL COMMENT '评论排列序号',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP评论信息表';

-- ----------------------------
-- Records of ap_comment
-- ----------------------------

-- ----------------------------
-- Table structure for ap_comment_repay
-- ----------------------------
DROP TABLE IF EXISTS `ap_comment_repay`;
CREATE TABLE `ap_comment_repay` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `author_id` int(11) unsigned DEFAULT NULL COMMENT '用户ID',
  `author_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户昵称',
  `comment_id` int(11) unsigned DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论内容',
  `likes` int(5) unsigned DEFAULT NULL,
  `longitude` decimal(5,5) unsigned DEFAULT NULL,
  `latitude` decimal(5,5) unsigned DEFAULT NULL COMMENT '维度',
  `address` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地理位置',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='APP评论回复信息表';

-- ----------------------------
-- Records of ap_comment_repay
-- ----------------------------
