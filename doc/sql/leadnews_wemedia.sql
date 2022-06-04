CREATE DATABASE IF NOT EXISTS leadnews_wemedia DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE leadnews_wemedia;
SET NAMES utf8;


SET FOREIGN_KEY_CHECKS=0;

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

-- ----------------------------
-- Table structure for wm_fans_portrait
-- ----------------------------
DROP TABLE IF EXISTS `wm_fans_portrait`;
CREATE TABLE `wm_fans_portrait` (
  `id` int(11) unsigned NOT NULL COMMENT '主键',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '账号ID',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '画像项目',
  `value` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资源名称',
  `burst` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='自媒体粉丝画像信息表';

-- ----------------------------
-- Records of wm_fans_portrait
-- ----------------------------

-- ----------------------------
-- Table structure for wm_fans_statistics
-- ----------------------------
DROP TABLE IF EXISTS `wm_fans_statistics`;
CREATE TABLE `wm_fans_statistics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '主账号ID',
  `article` int(11) unsigned DEFAULT NULL COMMENT '子账号ID',
  `read_count` int(11) unsigned DEFAULT NULL,
  `comment` int(11) unsigned DEFAULT NULL,
  `follow` int(11) unsigned DEFAULT NULL,
  `collection` int(11) unsigned DEFAULT NULL,
  `forward` int(11) unsigned DEFAULT NULL,
  `likes` int(11) unsigned DEFAULT NULL,
  `unlikes` int(11) unsigned DEFAULT NULL,
  `unfollow` int(11) unsigned DEFAULT NULL,
  `burst` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_user_id_time` (`user_id`,`created_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='自媒体粉丝数据统计表';

-- ----------------------------
-- Records of wm_fans_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for wm_material
-- ----------------------------
DROP TABLE IF EXISTS `wm_material`;
CREATE TABLE `wm_material` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '自媒体用户ID',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片地址',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '素材类型\r\n            0 图片\r\n            1 视频',
  `is_collection` tinyint(1) DEFAULT NULL COMMENT '是否收藏',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='自媒体图文素材信息表';

-- ----------------------------
-- Records of wm_material
-- ----------------------------
INSERT INTO `wm_material` VALUES ('1', '1100', 'group1/M00/00/00/wKjIgl5rYzyAb55kAAANyzMmUz0834.png', '0', '0', '2020-03-13 18:41:01');
INSERT INTO `wm_material` VALUES ('4', '1100', 'group1/M00/00/00/wKjIgl5rch-AGvnFAABMQ0w4IOg747.png', '0', '0', '2020-03-13 19:44:29');
INSERT INTO `wm_material` VALUES ('6', '1100', 'group1/M00/00/00/wKjIgl5rdBmAPhC5AADUBrLwzxI583.jpg', '0', '0', '2020-03-13 19:52:55');
INSERT INTO `wm_material` VALUES ('7', '1100', 'group1/M00/00/00/wKjIgl5rdCGAXS4VAAGu97qOKoc477.jpg', '0', '0', '2020-03-13 19:53:03');
INSERT INTO `wm_material` VALUES ('8', '1100', 'group1/M00/00/00/wKjIgl5rdCiAFGwpAAEykt06z_c811.jpg', '0', '0', '2020-03-13 19:53:10');
INSERT INTO `wm_material` VALUES ('9', '1100', 'group1/M00/00/00/wKjIgl5rdC-AYN8tAADvMBF3rYA807.jpg', '0', '0', '2020-03-13 19:53:17');
INSERT INTO `wm_material` VALUES ('10', '1100', 'group1/M00/00/00/wKjIgl5rdDuARnu8AAFKt2mGHdY169.jpg', '0', '0', '2020-03-13 19:53:30');
INSERT INTO `wm_material` VALUES ('11', '1100', 'group1/M00/00/00/wKjIgl5rdGiAIL3NAAEPfZfx6Iw638.png', '0', '0', '2020-03-13 19:54:14');
INSERT INTO `wm_material` VALUES ('12', '1100', 'group1/M00/00/00/wKjIgl5rdG6ACPgkAAB8wpHZPkE880.png', '0', '0', '2020-03-13 19:54:21');
INSERT INTO `wm_material` VALUES ('13', '1100', 'group1/M00/00/00/wKjIgl5rdHyAOYC4AACgYxIi_v0227.png', '0', '0', '2020-03-13 19:54:35');
INSERT INTO `wm_material` VALUES ('14', '1100', 'group1/M00/00/00/wKjIgl5rdHyAX702AACgYxIi_v0892.png', '0', '0', '2020-03-13 19:54:35');
INSERT INTO `wm_material` VALUES ('15', '1100', 'group1/M00/00/00/wKjIgl5rdI6AII2BAAENauaC55A361.png', '0', '0', '2020-03-13 19:54:52');
INSERT INTO `wm_material` VALUES ('16', '1100', 'group1/M00/00/00/wKjIgl5rdJuAdYA7AACJdb2LgJo394.png', '0', '0', '2020-03-13 19:55:05');
INSERT INTO `wm_material` VALUES ('17', '1100', 'group1/M00/00/00/wKjIgl5rdKWAX324AAF_Q1OmKSU466.png', '0', '0', '2020-03-13 19:55:15');
INSERT INTO `wm_material` VALUES ('20', '1102', 'group1/M00/00/00/wKjIgl5sNYOAA2vyAACEiYuUHUc785.png', '0', '0', '2020-03-14 09:38:12');
INSERT INTO `wm_material` VALUES ('21', '1102', 'group1/M00/00/00/wKjIgl5sNZqAISVbAAENauaC55A067.png', '0', '0', '2020-03-14 09:38:34');
INSERT INTO `wm_material` VALUES ('22', '1102', 'group1/M00/00/00/wKjIgl5smzOABUgcAADtgkclyT8222.png', '0', '0', '2020-03-14 16:52:03');
INSERT INTO `wm_material` VALUES ('23', '1102', 'group1/M00/00/00/wKjIgl5sm0SAeTNuAACZDHhWRnc981.png', '0', '0', '2020-03-14 16:52:21');
INSERT INTO `wm_material` VALUES ('24', '1102', 'group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png', '0', '0', '2020-03-14 19:36:18');
INSERT INTO `wm_material` VALUES ('25', '1102', 'group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png', '0', '0', '2020-03-14 19:43:11');

-- ----------------------------
-- Table structure for wm_news
-- ----------------------------
DROP TABLE IF EXISTS `wm_news`;
CREATE TABLE `wm_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '自媒体用户ID',
  `title` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` longtext COLLATE utf8mb4_unicode_ci COMMENT '图文内容',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '文章布局\r\n            0 无图文章\r\n            1 单图文章\r\n            3 多图文章',
  `channel_id` int(11) unsigned DEFAULT NULL COMMENT '图文频道ID',
  `labels` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `submited_time` datetime DEFAULT NULL COMMENT '提交时间',
  `status` tinyint(2) unsigned DEFAULT NULL COMMENT '当前状态\r\n            0 草稿\r\n            1 提交（待审核）\r\n            2 审核失败\r\n            3 人工审核\r\n            4 人工审核通过\r\n            8 审核通过（待发布）\r\n            9 已发布',
  `publish_time` datetime DEFAULT NULL COMMENT '定时发布时间，不定时则为空',
  `reason` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '拒绝理由',
  `article_id` bigint(20) unsigned DEFAULT NULL COMMENT '发布库文章ID',
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '//图片用逗号分隔',
  `enable` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='自媒体图文内容信息表';

-- ----------------------------
-- Records of wm_news
-- ----------------------------
INSERT INTO `wm_news` VALUES ('3100', '1100', '搜房网认识到出三分1', '[{\"type\":\"text\",\"value\":\"这个暑期档被灭霸打了响指之后就显得非常暗淡。易烊千玺的首部大荧幕男主角作品《少年的你》撤档，管虎的战争片《八佰》也因“技术问题”没法如期上映，《伟大的梦想》萎缩成《小小的愿望》，《悲伤逆流成河》不得不强颜欢笑，化作《流淌的美好时光》。\"},{\"type\":\"text\",\"value\":\"唯一振奋人心的大概就是“复活”的这部《长安十二时辰》，它突然上线给人带来的惊讶不小于前阵子突然消失的《九州缥缈录》。\"},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRw8xCiUeTbd\",\"style\":{\"width\":\"100%\",\"maxWidth\":\"290px\"}},{\"type\":\"text\",\"value\":\"6月27日，雷佳音和易烊千玺主演的《长安十二时辰》上线，播出一周，讨论声众多，连身边不少把国产剧放在鄙视链最底端的朋友都追起剧来。\"},{\"type\":\"text\",\"value\":\"但我怎么也没想到，和同事关于这部剧的讨论是从吃开始的。罪魁祸首是可以吸的火晶柿子。糙汉张小敬吃柿子的套路太骚气，又红又圆的小柿子，把精致吸管往里一插，手指肚捧着柿子，就这么喝起来了。大家忍不住就柿子品种来了一轮南北方大讨论，琢磨着去哪能骚气地喝一回小柿子。\"},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRw9gDn1CAGc\",\"style\":{\"height\":\"176PX\"}},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRwBeGmhQHL8\",\"style\":{\"height\":\"211PX\"}},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRwEM7cyRgyz\",\"style\":{\"height\":\"211PX\"}},{\"type\":\"text\",\"value\":\"《长安十二时辰》的开场简直就是雷佳音的大型吃喝直播，我至今在帮他数着，在顺手忙活解救长安城的前提下，就这十二时辰里，雷佳音到底能吃多少东西。\",\"style\":{}},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRwHoGEipU4R\",\"style\":{\"height\":\"211px\"}}]', '0', '3', '鼎折覆餗', '2019-09-02 14:56:48', '2019-09-02 14:56:48', '9', '2019-09-02 14:56:48', '审核成功', '19976', '', '1');
INSERT INTO `wm_news` VALUES ('3101', '1100', '数据结构与算法', '[{\"type\":\"text\",\"value\":\"这个暑期档被灭霸打了响指之后就显得非常暗淡。易烊千玺的首部大荧幕男主角作品《少年的你》撤档，管虎的战争片《八佰》也因“技术问题”没法如期上映，《伟大的梦想》萎缩成《小小的愿望》，《悲伤逆流成河》不得不强颜欢笑，化作《流淌的美好时光》。\"},{\"type\":\"text\",\"value\":\"唯一振奋人心的大概就是“复活”的这部《长安十二时辰》，它突然上线给人带来的惊讶不小于前阵子突然消失的《九州缥缈录》。\"},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRw8xCiUeTbd\",\"style\":{\"width\":\"100%\",\"maxWidth\":\"290px\"}},{\"type\":\"text\",\"value\":\"6月27日，雷佳音和易烊千玺主演的《长安十二时辰》上线，播出一周，讨论声众多，连身边不少把国产剧放在鄙视链最底端的朋友都追起剧来。\"},{\"type\":\"text\",\"value\":\"但我怎么也没想到，和同事关于这部剧的讨论是从吃开始的。罪魁祸首是可以吸的火晶柿子。糙汉张小敬吃柿子的套路太骚气，又红又圆的小柿子，把精致吸管往里一插，手指肚捧着柿子，就这么喝起来了。大家忍不住就柿子品种来了一轮南北方大讨论，琢磨着去哪能骚气地喝一回小柿子。\",\"style\":{\"fontSize\":\"11px\"}},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRw9gDn1CAGc\",\"style\":{\"height\":\"176PX\"}},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRwBeGmhQHL8\",\"style\":{\"height\":\"211PX\"}},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRwEM7cyRgyz\",\"style\":{\"height\":\"211PX\"}},{\"type\":\"text\",\"value\":\"《长安十二时辰》的开场简直就是雷佳音的大型吃喝直播，我至今在帮他数着，在顺手忙活解救长安城的前提下，就这十二时辰里，雷佳音到底能吃多少东西。\",\"style\":{\"fontWeight\":\"bold\",\"fontSize\":\"36px\"}},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRwHoGEipU4R\",\"style\":{\"height\":\"211px\"}}]', '1', '3', '算法', '2019-10-30 21:06:02', '2019-10-30 21:06:02', '2', '2019-10-30 00:00:00', null, null, 'group1/M00/00/00/rBENvl1RF0GAIKuTAAE4r64gbnE179.jpg', '1');
INSERT INTO `wm_news` VALUES ('4101', '1100', '我是中国人1', '[{\"type\":\"text\",\"value\":\"这个暑期档被灭霸打了响指之后就显得非常暗淡。易烊千玺的首部大荧幕男主角作品《少年的你》撤档，管虎的战争片《八佰》也因“技术问题”没法如期上映，《伟大的梦想》萎缩成《小小的愿望》，《悲伤逆流成河》不得不强颜欢笑，化作《流淌的美好时光》。\"},{\"type\":\"text\",\"value\":\"唯一振奋人心的大概就是“复活”的这部《长安十二时辰》，它突然上线给人带来的惊讶不小于前阵子突然消失的《九州缥缈录》。\"},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRw8xCiUeTbd\",\"style\":{\"width\":\"100%\",\"maxWidth\":\"290px\"}},{\"type\":\"text\",\"value\":\"6月27日，雷佳音和易烊千玺主演的《长安十二时辰》上线，播出一周，讨论声众多，连身边不少把国产剧放在鄙视链最底端的朋友都追起剧来。\"},{\"type\":\"text\",\"value\":\"但我怎么也没想到，和同事关于这部剧的讨论是从吃开始的。罪魁祸首是可以吸的火晶柿子。糙汉张小敬吃柿子的套路太骚气，又红又圆的小柿子，把精致吸管往里一插，手指肚捧着柿子，就这么喝起来了。大家忍不住就柿子品种来了一轮南北方大讨论，琢磨着去哪能骚气地喝一回小柿子。\"},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRw9gDn1CAGc\",\"style\":{\"height\":\"176PX\"}},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRwBeGmhQHL8\",\"style\":{\"height\":\"211PX\"}},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRwEM7cyRgyz\",\"style\":{\"height\":\"211PX\"}},{\"type\":\"text\",\"value\":\"《长安十二时辰》的开场简直就是雷佳音的大型吃喝直播，我至今在帮他数着，在顺手忙活解救长安城的前提下，就这十二时辰里，雷佳音到底能吃多少东西。\",\"style\":{\"fontWeight\":\"bold\",\"fontSize\":\"36px\"}},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRwHoGEipU4R\",\"style\":{\"height\":\"211px\"}}]', '1', '2', '我是中国人1', '2019-08-22 10:04:45', '2019-08-22 10:04:45', '9', null, '审核成功', '11218', 'group1/M00/00/00/rBENvl04UoSAQBnVAAB43XPvV6s47.jpeg', '0');
INSERT INTO `wm_news` VALUES ('4102', '1100', '我是中国人2', '[{\"type\":\"text\",\"value\":\"这个暑期档被灭霸打了响指之后就显得非常暗淡。易烊千玺的首部大荧幕男主角作品《少年的你》撤档，管虎的战争片《八佰》也因“技术问题”没法如期上映，《伟大的梦想》萎缩成《小小的愿望》，《悲伤逆流成河》不得不强颜欢笑，化作《流淌的美好时光》。\"},{\"type\":\"text\",\"value\":\"唯一振奋人心的大概就是“复活”的这部《长安十二时辰》，它突然上线给人带来的惊讶不小于前阵子突然消失的《九州缥缈录》。\"},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRw8xCiUeTbd\",\"style\":{\"width\":\"100%\",\"maxWidth\":\"290px\"}},{\"type\":\"text\",\"value\":\"6月27日，雷佳音和易烊千玺主演的《长安十二时辰》上线，播出一周，讨论声众多，连身边不少把国产剧放在鄙视链最底端的朋友都追起剧来。\"},{\"type\":\"text\",\"value\":\"但我怎么也没想到，和同事关于这部剧的讨论是从吃开始的。罪魁祸首是可以吸的火晶柿子。糙汉张小敬吃柿子的套路太骚气，又红又圆的小柿子，把精致吸管往里一插，手指肚捧着柿子，就这么喝起来了。大家忍不住就柿子品种来了一轮南北方大讨论，琢磨着去哪能骚气地喝一回小柿子。\"},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRw9gDn1CAGc\",\"style\":{\"height\":\"176PX\"}},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRwBeGmhQHL8\",\"style\":{\"height\":\"211PX\"}},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRwEM7cyRgyz\",\"style\":{\"height\":\"211PX\"}},{\"type\":\"text\",\"value\":\"《长安十二时辰》的开场简直就是雷佳音的大型吃喝直播，我至今在帮他数着，在顺手忙活解救长安城的前提下，就这十二时辰里，雷佳音到底能吃多少东西。\",\"style\":{\"fontWeight\":\"bold\",\"fontSize\":\"36px\"}},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRwHoGEipU4R\",\"style\":{\"height\":\"211px\"}}]', '1', '1', '我是中国人2', '2019-08-22 11:28:53', '2019-08-22 11:28:53', '9', null, '审核成功', '11442', 'group1/M00/00/00/rBENvl05FnaAM6J1AAaGax3lKLo443.jpg', '1');
INSERT INTO `wm_news` VALUES ('4103', '1100', '我是中国人5', '[{\"type\":\"text\",\"value\":\"这个暑期档被灭霸打了响指之后就显得非常暗淡。易烊千玺的首部大荧幕男主角作品《少年的你》撤档，管虎的战争片《八佰》也因“技术问题”没法如期上映，《伟大的梦想》萎缩成《小小的愿望》，《悲伤逆流成河》不得不强颜欢笑，化作《流淌的美好时光》。\"},{\"type\":\"text\",\"value\":\"唯一振奋人心的大概就是“复活”的这部《长安十二时辰》，它突然上线给人带来的惊讶不小于前阵子突然消失的《九州缥缈录》。\"},{\"type\":\"image\",\"value\":\"http://47.94.7.85:80/group1/M00/00/00/rBENvl05FnaAM6J1AAaGax3lKLo443.jpg\",\"style\":{\"width\":\"100%\",\"maxWidth\":\"290px\"}},{\"type\":\"text\",\"value\":\"6月27日，雷佳音和易烊千玺主演的《长安十二时辰》上线，播出一周，讨论声众多，连身边不少把国产剧放在鄙视链最底端的朋友都追起剧来。\"},{\"type\":\"text\",\"value\":\"但我怎么也没想到，和同事关于这部剧的讨论是从吃开始的。罪魁祸首是可以吸的火晶柿子。糙汉张小敬吃柿子的套路太骚气，又红又圆的小柿子，把精致吸管往里一插，手指肚捧着柿子，就这么喝起来了。大家忍不住就柿子品种来了一轮南北方大讨论，琢磨着去哪能骚气地喝一回小柿子。\"},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRw9gDn1CAGc\",\"style\":{\"height\":\"176PX\"}},{\"type\":\"image\",\"value\":\"http://47.94.7.85:80/group1/M00/00/00/rBENvl04UoSAQBnVAAB43XPvV6s47.jpeg\",\"style\":{\"height\":\"211PX\"}},{\"type\":\"image\",\"value\":\"http://47.94.7.85:80/group1/M00/00/00/rBENvl05Bb-ASsfdAAMSUGkiBP4475.png\",\"style\":{\"height\":\"211PX\"}},{\"type\":\"text\",\"value\":\"《长安十二时辰》的开场简直就是雷佳音的大型吃喝直播，我至今在帮他数着，在顺手忙活解救长安城的前提下，就这十二时辰里，雷佳音到底能吃多少东西。\",\"style\":{\"fontWeight\":\"bold\",\"fontSize\":\"24px\"}},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRwHoGEipU4R\",\"style\":{\"height\":\"211px\"}}]', '1', '1', '我是中国人5', '2019-08-22 15:34:43', '2019-08-22 15:34:43', '9', null, '审核成功', '13160', 'group1/M00/00/00/rBENvl1RF0GAIKuTAAE4r64gbnE179.jpg', '0');
INSERT INTO `wm_news` VALUES ('5112', '1100', '测试123455666', '[{\"type\":\"text\",\"value\":\"这个暑期档被灭霸打了响指之后就显得非常暗淡。易烊千玺的首部大荧幕男主角作品《少年的你》撤档，管虎的战争片《八佰》也因“技术问题”没法如期上映，《伟大的梦想》萎缩成《小小的愿望》，《悲伤逆流成河》不得不强颜欢笑，化作《流淌的美好时光》。\"},{\"type\":\"text\",\"value\":\"唯一振奋人心的大概就是“复活”的这部《长安十二时辰》，它突然上线给人带来的惊讶不小于前阵子突然消失的《九州缥缈录》。\"},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRw8xCiUeTbd\",\"style\":{\"width\":\"100%\",\"maxWidth\":\"290px\"}},{\"type\":\"text\",\"value\":\"6月27日，雷佳音和易烊千玺主演的《长安十二时辰》上线，播出一周，讨论声众多，连身边不少把国产剧放在鄙视链最底端的朋友都追起剧来。\"},{\"type\":\"text\",\"value\":\"但我怎么也没想到，和同事关于这部剧的讨论是从吃开始的。罪魁祸首是可以吸的火晶柿子。糙汉张小敬吃柿子的套路太骚气，又红又圆的小柿子，把精致吸管往里一插，手指肚捧着柿子，就这么喝起来了。大家忍不住就柿子品种来了一轮南北方大讨论，琢磨着去哪能骚气地喝一回小柿子。\"},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRw9gDn1CAGc\",\"style\":{\"height\":\"176PX\"}},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRwBeGmhQHL8\",\"style\":{\"height\":\"211PX\"}},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRwEM7cyRgyz\",\"style\":{\"height\":\"211PX\"}},{\"type\":\"text\",\"value\":\"《长安十二时辰》的开场简直就是雷佳音的大型吃喝直播，我至今在帮他数着，在顺手忙活解救长安城的前提下，就这十二时辰里，雷佳音到底能吃多少东西。\",\"style\":{\"fontWeight\":\"bold\",\"fontSize\":\"36px\"}},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRwHoGEipU4R\",\"style\":{\"height\":\"211px\"}}]', '1', '1', '测试', '2019-09-02 02:11:57', '2019-09-02 02:11:57', '1', null, null, null, 'group1/M00/00/00/rBENvl1RF0GAIKuTAAE4r64gbnE179.jpg', '1');
INSERT INTO `wm_news` VALUES ('5113', '1100', 'sdfljljflsdfjlksfd', '[{\"type\":\"text\",\"value\":\"这个暑期档被灭霸打了响指之后就显得非常暗淡。易烊千玺的首部大荧幕男主角作品《少年的你》撤档，管虎的战争片《八佰》也因“技术问题”没法如期上映，《伟大的梦想》萎缩成《小小的愿望》，《悲伤逆流成河》不得不强颜欢笑，化作《流淌的美好时光》。\"},{\"type\":\"text\",\"value\":\"唯一振奋人心的大概就是“复活”的这部《长安十二时辰》，它突然上线给人带来的惊讶不小于前阵子突然消失的《九州缥缈录》。\"},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRw8xCiUeTbd\",\"style\":{\"width\":\"100%\",\"maxWidth\":\"290px\"}},{\"type\":\"text\",\"value\":\"6月27日，雷佳音和易烊千玺主演的《长安十二时辰》上线，播出一周，讨论声众多，连身边不少把国产剧放在鄙视链最底端的朋友都追起剧来。\"},{\"type\":\"text\",\"value\":\"但我怎么也没想到，和同事关于这部剧的讨论是从吃开始的。罪魁祸首是可以吸的火晶柿子。糙汉张小敬吃柿子的套路太骚气，又红又圆的小柿子，把精致吸管往里一插，手指肚捧着柿子，就这么喝起来了。大家忍不住就柿子品种来了一轮南北方大讨论，琢磨着去哪能骚气地喝一回小柿子。\"},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRw9gDn1CAGc\",\"style\":{\"height\":\"176PX\"}},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRwBeGmhQHL8\",\"style\":{\"height\":\"211PX\"}},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRwEM7cyRgyz\",\"style\":{\"height\":\"211PX\"}},{\"type\":\"text\",\"value\":\"《长安十二时辰》的开场简直就是雷佳音的大型吃喝直播，我至今在帮他数着，在顺手忙活解救长安城的前提下，就这十二时辰里，雷佳音到底能吃多少东西。\",\"style\":{\"fontWeight\":\"bold\",\"fontSize\":\"36px\"}},{\"type\":\"image\",\"value\":\"https://p3.pstatp.com/large/pgc-image/RVFRwHoGEipU4R\",\"style\":{\"height\":\"211px\"}}]', '0', '1', 'sdfdsf', '2019-09-02 02:21:02', '2019-09-02 02:21:02', '1', null, null, null, '', '1');
INSERT INTO `wm_news` VALUES ('5114', '1100', '特太突然111222', '[{\"type\":\"text\",\"value\":\"投入的工地上123456\"}]', '3', '1', '11', '2019-09-02 12:46:11', '2019-09-02 12:46:11', '0', null, null, null, 'group1/M00/00/00/rBENvl04UoSAQBnVAAB43XPvV6s47.jpeg,group1/M00/00/00/rBENvl05FnaAM6J1AAaGax3lKLo443.jpg,group1/M00/00/00/rBENvl05BUeAP6ZVAAGGIvabWno197.jpg', '1');
INSERT INTO `wm_news` VALUES ('5115', '1100', '特太突然-提交测试数据', '[{\"type\":\"text\",\"value\":\"21313213123导服费被低估dgdgeerfwfdrt6uw3whae\"}]', '3', '1', '11', '2019-09-02 08:03:02', '2019-09-02 08:03:02', '9', null, '审核成功', '19977', 'group1/M00/00/00/rBENvl04UoSAQBnVAAB43XPvV6s47.jpeg,group1/M00/00/00/rBENvl05FnaAM6J1AAaGax3lKLo443.jpg,group1/M00/00/00/rBENvl05BUeAP6ZVAAGGIvabWno197.jpg', '0');
INSERT INTO `wm_news` VALUES ('5116', '1100', '166666', '[{\"type\":\"text\",\"value\":\"66\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '0', '1', '2019-09-17 03:01:04', '2019-09-17 03:01:04', '9', null, '审核成功', '19978', 'group1/M00/00/00/rBENvl04UoSAQBnVAAB43XPvV6s47.jpeg', '1');
INSERT INTO `wm_news` VALUES ('5117', '1100', '测试文章1', '[{\"type\":\"text\",\"value\":\"javajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavvajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavvajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajavajav\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', '1', '2019-09-25 11:09:31', '2019-09-25 11:09:31', '9', null, '审核成功', '20467', 'group1/M00/00/00/rBENvl04UoSAQBnVAAB43XPvV6s47.jpeg', '1');
INSERT INTO `wm_news` VALUES ('6100', '1100', '测试1测试', '[{\"type\":\"text\",\"value\":\"测测测测测\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', '22', '2019-09-28 15:53:09', '2019-09-28 15:53:09', '9', null, '审核成功', '21100', 'group1/M00/00/00/rBENvl04UoSAQBnVAAB43XPvV6s47.jpeg', '1');
INSERT INTO `wm_news` VALUES ('6101', '1100', '测试谭谭谭', '[{\"type\":\"text\",\"value\":\"测试谭谭谭测试谭谭谭测试谭谭谭测试谭谭谭\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', '测试谭谭谭', '2019-09-28 15:59:59', '2019-09-28 15:59:59', '9', null, '审核成功', '21101', 'group1/M00/00/00/rBENvl05FnaAM6J1AAaGax3lKLo443.jpg', '1');
INSERT INTO `wm_news` VALUES ('6102', '1100', '测试谭python', '[{\"type\":\"text\",\"value\":\"测试谭python测试谭python测试谭python测试谭python测试谭python测试谭python\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '3', '4', 'pyhon', '2019-09-29 16:28:13', '2019-09-29 16:28:13', '9', null, '审核成功', '21102', 'group1/M00/00/00/rBENvl05FnaAM6J1AAaGax3lKLo443.jpg,group1/M00/00/00/rBENvl05BUeAP6ZVAAGGIvabWno197.jpg,group1/M00/00/00/rBENvl04UoSAQBnVAAB43XPvV6s47.jpeg', '1');
INSERT INTO `wm_news` VALUES ('6103', '1100', '测试谭10号', '[{\"type\":\"text\",\"value\":\"突突突突突突拖拖拖\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', '测试', '2019-10-10 16:14:22', '2019-10-10 16:14:22', '9', null, '审核成功', '21104', 'group1/M00/00/00/rBENvl05FnaAM6J1AAaGax3lKLo443.jpg', '1');
INSERT INTO `wm_news` VALUES ('6104', '1100', '测试谭10号', '[{\"type\":\"text\",\"value\":\"突突突突突突拖拖拖\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', '测试', '2019-10-10 16:14:22', '2019-10-10 16:14:22', '9', null, '审核成功', '21108', 'group1/M00/00/00/rBENvl05FnaAM6J1AAaGax3lKLo443.jpg', '1');
INSERT INTO `wm_news` VALUES ('6105', '1100', '测试谭10号', '[{\"type\":\"text\",\"value\":\"突突突突突突拖拖拖\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', '测试', '2019-10-10 16:14:22', '2019-10-10 16:14:22', '9', null, '审核成功', '21110', 'group1/M00/00/00/rBENvl05FnaAM6J1AAaGax3lKLo443.jpg', '1');
INSERT INTO `wm_news` VALUES ('6106', '1100', '测试谭10号', '[{\"type\":\"text\",\"value\":\"突突突突突突拖拖拖\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', '测试', '2019-10-10 16:14:22', '2019-10-10 16:14:22', '9', null, '审核成功', '21107', 'group1/M00/00/00/rBENvl05FnaAM6J1AAaGax3lKLo443.jpg', '1');
INSERT INTO `wm_news` VALUES ('6107', '1100', '测试谭10号', '[{\"type\":\"text\",\"value\":\"突突突突突突拖拖拖\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', '测试', '2019-10-10 16:14:22', '2019-10-10 16:14:22', '9', null, '审核成功', '21105', 'group1/M00/00/00/rBENvl05FnaAM6J1AAaGax3lKLo443.jpg', '1');
INSERT INTO `wm_news` VALUES ('6108', '1100', '测试谭10号', '[{\"type\":\"text\",\"value\":\"突突突突突突拖拖拖\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', '测试', '2019-10-10 16:14:22', '2019-10-10 16:14:22', '9', null, '审核成功', '21106', 'group1/M00/00/00/rBENvl05FnaAM6J1AAaGax3lKLo443.jpg', '1');
INSERT INTO `wm_news` VALUES ('6109', '1100', '测试谭10号', '[{\"type\":\"text\",\"value\":\"突突突突突突拖拖拖\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', '测试', '2019-10-10 16:14:24', '2019-10-10 16:14:24', '9', null, '审核成功', '21103', 'group1/M00/00/00/rBENvl05FnaAM6J1AAaGax3lKLo443.jpg', '1');
INSERT INTO `wm_news` VALUES ('6110', '1100', '测试谭10号', '[{\"type\":\"text\",\"value\":\"突突突突突突拖拖拖\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', '测试', '2019-10-10 16:14:29', '2019-10-10 16:14:29', '9', null, '审核成功', '21109', 'group1/M00/00/00/rBENvl05FnaAM6J1AAaGax3lKLo443.jpg', '1');
INSERT INTO `wm_news` VALUES ('6111', '1100', '测试谭10号', '[{\"type\":\"text\",\"value\":\"突突突突突突拖拖拖\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', '测试', '2019-10-10 16:14:31', '2019-10-10 16:14:31', '9', null, '审核成功', '21111', 'group1/M00/00/00/rBENvl05FnaAM6J1AAaGax3lKLo443.jpg', '1');
INSERT INTO `wm_news` VALUES ('6112', '1100', '测试谭10号', '[{\"type\":\"text\",\"value\":\"突突突突突突拖拖拖\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', '测试', '2019-10-10 16:46:08', '2019-10-10 16:46:08', '9', null, '审核成功', '21112', 'group1/M00/00/00/rBENvl05FnaAM6J1AAaGax3lKLo443.jpg', '1');
INSERT INTO `wm_news` VALUES ('6113', '1100', '坏坏坏222', '[{\"type\":\"image\",\"value\":\"http://47.94.7.85:80/group1/M00/00/00/rBENvl04UoSAQBnVAAB43XPvV6s47.jpeg\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', 'java', '2019-10-10 18:38:52', '2019-10-10 18:38:52', '9', null, '审核成功', '21113', 'group1/M00/00/00/rBENvl05FnaAM6J1AAaGax3lKLo443.jpg', '1');
INSERT INTO `wm_news` VALUES ('6114', '1100', '测试谈谈谈', '[{\"type\":\"image\",\"value\":\"http://47.94.7.85:80/group1/M00/00/00/rBENvl04UoSAQBnVAAB43XPvV6s47.jpeg\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', ' 测', '2019-10-17 11:03:18', '2019-10-17 11:03:18', '9', null, '审核成功', '21114', 'group1/M00/00/00/rBENvl05FnaAM6J1AAaGax3lKLo443.jpg', '1');
INSERT INTO `wm_news` VALUES ('6115', '1100', '测试谭22', '[{\"type\":\"text\",\"value\":\"测测测测测错\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', '发', '2019-10-17 11:08:13', '2019-10-17 11:08:13', '2', null, null, null, 'group1/M00/00/00/rBENvl05FnaAM6J1AAaGax3lKLo443.jpg', '1');
INSERT INTO `wm_news` VALUES ('6117', '1101', '测试文章标题', '[{\"type\":\"text\",\"value\":\"测试内容\"},{\"type\":\"image\",\"value\":\"http://47.94.7.85:80/group1/M00/00/00/rBENvl22x22AO-F-AACNdiGk7IM570.jpg\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', '测试', '2019-10-28 19:43:40', '2019-10-28 19:43:40', '9', null, '审核成功', '21115', 'group1/M00/00/00/rBENvl22x22AO-F-AACNdiGk7IM570.jpg', '0');
INSERT INTO `wm_news` VALUES ('6130', '1101', '黑马头条是什么', '[{\"type\":\"text\",\"value\":\"黑马头条是传智播客\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '3', '1', '黑马头条', '2019-12-13 18:08:14', '2019-12-13 18:08:14', '9', null, '审核成功', '22100', 'group1/M00/00/00/rBENvl05BUeAP6ZVAAGGIvabWno197.jpg,group1/M00/00/00/rBENvl05Bb-ASsfdAAMSUGkiBP4475.png,group1/M00/00/00/rBENvl1P6zuAN2skAAMSUGkiBP4317.png', '1');
INSERT INTO `wm_news` VALUES ('6131', '1102', '测试文章标题', '[{\"type\":\"text\",\"value\":\"东方闪电说得对发生的水电费水电费是的发送到规范多福多防守打法\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sNYOAA2vyAACEiYuUHUc785.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', '测试', '2020-03-14 11:45:06', '2020-03-14 11:45:06', '3', null, null, null, '', '1');
INSERT INTO `wm_news` VALUES ('6134', '1102', '第5次测试', '[{\"type\":\"text\",\"value\":\"sdfdsfsdsfsdfsdfsdfsdf\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', null, '测试', '2020-03-14 14:36:56', '2020-03-14 14:36:56', '3', null, null, null, 'group1/M00/00/00/wKjIgl5sNZqAISVbAAENauaC55A067.png', '1');
INSERT INTO `wm_news` VALUES ('6135', '1102', 'sdfsdfsdfsdf', '[{\"type\":\"text\",\"value\":\"sdfsdf\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', null, 'fsdfdsf', '2020-03-14 14:41:14', '2020-03-14 14:41:14', '3', null, null, null, 'group1/M00/00/00/wKjIgl5sNZqAISVbAAENauaC55A067.png', '1');
INSERT INTO `wm_news` VALUES ('6136', '1102', 'dfsdfsdf', '[{\"type\":\"text\",\"value\":\"sdffffffffffffff\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', 'sdfsd', '2020-03-14 14:42:22', '2020-03-14 14:42:22', '3', '2020-03-14 14:42:08', null, null, 'group1/M00/00/00/wKjIgl5sNZqAISVbAAENauaC55A067.png', '1');
INSERT INTO `wm_news` VALUES ('6137', '1102', 'dsfdsfdsf', '[{\"type\":\"text\",\"value\":\"sdfdfsdfsdfsd\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', 'sdf', '2020-03-14 14:43:37', '2020-03-14 14:43:37', '3', '2020-03-14 14:43:18', null, null, 'group1/M00/00/00/wKjIgl5sNZqAISVbAAENauaC55A067.png', '1');
INSERT INTO `wm_news` VALUES ('6138', '1102', 'sdfsdfsd', '[{\"type\":\"text\",\"value\":\"sdffffffffffff\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '0', '4', 'sdfsd', '2020-03-14 14:45:50', '2020-03-14 14:45:50', '3', '2020-03-14 14:45:37', null, null, '', '1');
INSERT INTO `wm_news` VALUES ('6139', '1102', 'fggfddfdf', '[{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sNZqAISVbAAENauaC55A067.png\"},{\"type\":\"text\",\"value\":\"sdfsdf\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sNYOAA2vyAACEiYuUHUc785.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '0', '1', 'dsfsd', '2020-03-14 15:48:15', '2020-03-14 15:48:15', '3', '2020-03-14 15:47:58', null, null, '', '1');
INSERT INTO `wm_news` VALUES ('6140', '1102', 'gdgfdgf', '[{\"type\":\"text\",\"value\":\"dfgfdg\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sNZqAISVbAAENauaC55A067.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sNYOAA2vyAACEiYuUHUc785.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '0', '1', 'fgf', '2020-03-14 16:02:56', '2020-03-14 16:02:56', '3', '2020-03-14 16:02:43', null, null, '', '1');
INSERT INTO `wm_news` VALUES ('6141', '1102', 'gdgfdgf', '[{\"type\":\"text\",\"value\":\"dfgfdg\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sNZqAISVbAAENauaC55A067.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sNYOAA2vyAACEiYuUHUc785.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '0', '1', 'fgf', '2020-03-14 16:07:48', '2020-03-14 16:07:48', '3', '2020-03-14 16:02:43', null, null, '', '1');
INSERT INTO `wm_news` VALUES ('6142', '1102', 'gdgfdgf', '[{\"type\":\"text\",\"value\":\"dfgfdg\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sNZqAISVbAAENauaC55A067.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sNYOAA2vyAACEiYuUHUc785.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '0', '1', 'fgf', '2020-03-14 16:11:45', '2020-03-14 16:11:45', '3', '2020-03-14 16:02:43', null, null, '', '1');
INSERT INTO `wm_news` VALUES ('6143', '1102', 'gdgfdgf', '[{\"type\":\"text\",\"value\":\"dfgfdg\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sNZqAISVbAAENauaC55A067.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sNYOAA2vyAACEiYuUHUc785.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '0', '1', 'fgf', '2020-03-14 16:13:38', '2020-03-14 16:13:38', '3', '2020-03-14 16:02:43', null, null, '', '1');
INSERT INTO `wm_news` VALUES ('6144', '1102', 'gdgfdgf', '[{\"type\":\"text\",\"value\":\"dfgfdg\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sNZqAISVbAAENauaC55A067.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sNYOAA2vyAACEiYuUHUc785.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '0', '1', 'fgf', '2020-03-14 16:17:12', '2020-03-14 16:17:12', '3', '2020-03-14 16:02:43', null, null, '', '1');
INSERT INTO `wm_news` VALUES ('6145', '1102', '测试标题555', '[{\"type\":\"text\",\"value\":\"dfgfdg\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sNZqAISVbAAENauaC55A067.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sNYOAA2vyAACEiYuUHUc785.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '0', '1', '测试', '2020-03-14 17:07:45', '2020-03-14 17:07:45', '0', '2020-03-14 16:02:43', null, null, '', '1');
INSERT INTO `wm_news` VALUES ('6149', '1102', 'dsfsdfsdf', '[{\"type\":\"text\",\"value\":\"sdfsdfsdfsd\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sNZqAISVbAAENauaC55A067.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sNYOAA2vyAACEiYuUHUc785.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '0', '7', 'dsf', '2020-03-14 16:51:38', '2020-03-14 16:51:38', '3', '2020-03-14 16:51:25', null, null, 'group1/M00/00/00/wKjIgl5sNZqAISVbAAENauaC55A067.png', '1');
INSERT INTO `wm_news` VALUES ('6150', '1102', 'dsfdsf', '[{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sm0SAeTNuAACZDHhWRnc981.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5smzOABUgcAADtgkclyT8222.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sNZqAISVbAAENauaC55A067.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '3', '4', 'fdsf', '2020-03-14 16:52:47', '2020-03-14 16:52:47', '9', '2020-03-14 16:52:34', null, null, 'group1/M00/00/00/wKjIgl5sm0SAeTNuAACZDHhWRnc981.png, group1/M00/00/00/wKjIgl5smzOABUgcAADtgkclyT8222.png, group1/M00/00/00/wKjIgl5sNZqAISVbAAENauaC55A067.png', '1');
INSERT INTO `wm_news` VALUES ('6154', '1102', '黑马头条项目背景', '[{\"type\":\"text\",\"value\":\"随着智能手机的普及，人们更加习惯于通过手机来看新闻。由于生活节奏的加快，很多人只能利用碎片时间来获取信息，因此，对于移动资讯客户端的需求也越来越高。黑马头条项目正是在这样背景下开发出来。黑马头条项目采用当下火热的微服务+大数据技术架构实现。本项目主要着手于获取最新最热新闻资讯，通过大数据分析用户喜好精确推送咨询新闻\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', '黑马头条', '2020-03-14 19:41:32', '2020-03-14 19:41:32', '9', '2020-03-14 19:40:53', null, null, 'group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png', '1');
INSERT INTO `wm_news` VALUES ('6155', '1102', 'dfsdfsdf', '[{\"type\":\"text\",\"value\":\"sdfsdf\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '0', '6', 'dsf', '2020-03-14 19:49:20', '2020-03-14 19:49:20', '3', '2020-03-14 19:49:07', null, null, '', '1');
INSERT INTO `wm_news` VALUES ('6156', '1102', 'dfsdfds', '[{\"type\":\"text\",\"value\":\"sfsdf\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '7', 'dsfsd', '2020-03-14 20:00:31', '2020-03-14 20:00:31', '3', '2020-03-14 20:00:17', null, null, 'group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png', '1');
INSERT INTO `wm_news` VALUES ('6157', '1102', 'sdfsdfsd', '[{\"type\":\"text\",\"value\":\"sdfsdf\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sm0SAeTNuAACZDHhWRnc981.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '3', '4', 'sfdf', '2020-03-14 20:01:30', '2020-03-14 20:01:30', '3', '2020-03-14 20:01:08', null, null, 'group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png, group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png, group1/M00/00/00/wKjIgl5sm0SAeTNuAACZDHhWRnc981.png', '1');
INSERT INTO `wm_news` VALUES ('6158', '1102', 'dfsdfsd', '[{\"type\":\"text\",\"value\":\"sdfsdf\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sm0SAeTNuAACZDHhWRnc981.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5smzOABUgcAADtgkclyT8222.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '3', '1', 'dsfsdf', '2020-03-14 20:06:14', '2020-03-14 20:06:14', '3', '2020-03-14 20:05:49', null, null, 'group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png,group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png', '1');
INSERT INTO `wm_news` VALUES ('6159', '1102', 'dsfsdf', '[{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sm0SAeTNuAACZDHhWRnc981.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5smzOABUgcAADtgkclyT8222.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '3', '1', 'dsfds', '2020-03-14 20:08:52', '2020-03-14 20:08:52', '3', '2020-03-14 20:08:30', null, null, 'group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png,group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png', '1');
INSERT INTO `wm_news` VALUES ('6160', '1102', '5555555', '[{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sm0SAeTNuAACZDHhWRnc981.png\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5smzOABUgcAADtgkclyT8222.png\"},{\"type\":\"text\",\"value\":\"请输入文...\"}]', '3', '1', 'dsfds', '2020-03-14 20:10:31', '2020-03-14 20:10:31', '9', '2020-03-14 20:08:30', '审核通过', null, 'group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png,group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png,group1/M00/00/00/wKjIgl5sm0SAeTNuAACZDHhWRnc981.png', '1');
INSERT INTO `wm_news` VALUES ('6161', '1102', '测试标题2', '[{\"type\":\"text\",\"value\":\"哈哈哈，测试自动审核\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', '测试', '2020-03-31 23:55:00', '2020-03-31 23:55:00', '3', '2020-03-31 23:54:33', null, null, 'group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png', '1');
INSERT INTO `wm_news` VALUES ('6162', '1102', '测试审核功能', '[{\"type\":\"text\",\"value\":\"测试自动审核功能\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', '测试', '2020-04-01 00:11:43', '2020-04-01 00:11:43', '9', '2020-03-31 23:57:42', '审核通过', null, 'group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png', '1');
INSERT INTO `wm_news` VALUES ('6163', '1102', '传智播客', '[{\"type\":\"text\",\"value\":\"测试自动审核\"},{\"type\":\"image\",\"value\":\"http://192.168.200.130/group1/M00/00/00/wKjIgl5sw0-AYZ1KAAMOBhRxa98094.png\"},{\"type\":\"text\",\"value\":\"请输入文章内容...\"}]', '1', '1', '测试', '2020-04-01 00:06:04', '2020-04-01 00:06:04', '1', '2020-04-01 00:02:47', null, null, 'group1/M00/00/00/wKjIgl5swbGATaSAAAEPfZfx6Iw790.png', '1');

-- ----------------------------
-- Table structure for wm_news_material
-- ----------------------------
DROP TABLE IF EXISTS `wm_news_material`;
CREATE TABLE `wm_news_material` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `material_id` int(11) unsigned DEFAULT NULL COMMENT '素材ID',
  `news_id` int(11) unsigned DEFAULT NULL COMMENT '图文ID',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '引用类型\r\n            0 内容引用\r\n            1 主图引用',
  `ord` tinyint(1) unsigned DEFAULT NULL COMMENT '引用排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='自媒体图文引用素材信息表';

-- ----------------------------
-- Records of wm_news_material
-- ----------------------------
INSERT INTO `wm_news_material` VALUES ('1', '4', '1', '1', '1');
INSERT INTO `wm_news_material` VALUES ('6', '21', '6134', '1', '0');
INSERT INTO `wm_news_material` VALUES ('7', '21', '6135', '1', '0');
INSERT INTO `wm_news_material` VALUES ('8', '21', '6136', '1', '0');
INSERT INTO `wm_news_material` VALUES ('9', '21', '6137', '1', '0');
INSERT INTO `wm_news_material` VALUES ('10', '21', '6139', '0', '1');
INSERT INTO `wm_news_material` VALUES ('11', '20', '6139', '0', '3');
INSERT INTO `wm_news_material` VALUES ('12', '21', '6140', '0', '2');
INSERT INTO `wm_news_material` VALUES ('13', '20', '6140', '0', '3');
INSERT INTO `wm_news_material` VALUES ('14', '21', '6141', '0', '2');
INSERT INTO `wm_news_material` VALUES ('15', '20', '6141', '0', '3');
INSERT INTO `wm_news_material` VALUES ('16', '21', '6142', '0', '2');
INSERT INTO `wm_news_material` VALUES ('17', '20', '6142', '0', '3');
INSERT INTO `wm_news_material` VALUES ('18', '21', '6143', '0', '2');
INSERT INTO `wm_news_material` VALUES ('19', '20', '6143', '0', '3');
INSERT INTO `wm_news_material` VALUES ('20', '21', '6144', '0', '2');
INSERT INTO `wm_news_material` VALUES ('21', '20', '6144', '0', '3');
INSERT INTO `wm_news_material` VALUES ('34', '21', '6149', '0', '2');
INSERT INTO `wm_news_material` VALUES ('35', '20', '6149', '0', '3');
INSERT INTO `wm_news_material` VALUES ('36', '21', '6149', '1', '0');
INSERT INTO `wm_news_material` VALUES ('37', '23', '6150', '0', '1');
INSERT INTO `wm_news_material` VALUES ('38', '22', '6150', '0', '2');
INSERT INTO `wm_news_material` VALUES ('39', '21', '6150', '0', '3');
INSERT INTO `wm_news_material` VALUES ('40', '23', '6150', '1', '0');
INSERT INTO `wm_news_material` VALUES ('41', '22', '6150', '1', '1');
INSERT INTO `wm_news_material` VALUES ('42', '21', '6150', '1', '2');
INSERT INTO `wm_news_material` VALUES ('52', '24', '6154', '0', '2');
INSERT INTO `wm_news_material` VALUES ('53', '24', '6154', '1', '0');
INSERT INTO `wm_news_material` VALUES ('55', '25', '6156', '0', '2');
INSERT INTO `wm_news_material` VALUES ('56', '25', '6156', '1', '0');
INSERT INTO `wm_news_material` VALUES ('57', '25', '6157', '0', '2');
INSERT INTO `wm_news_material` VALUES ('58', '24', '6157', '0', '3');
INSERT INTO `wm_news_material` VALUES ('59', '23', '6157', '0', '4');
INSERT INTO `wm_news_material` VALUES ('60', '25', '6157', '1', '0');
INSERT INTO `wm_news_material` VALUES ('61', '24', '6157', '1', '1');
INSERT INTO `wm_news_material` VALUES ('62', '23', '6157', '1', '2');
INSERT INTO `wm_news_material` VALUES ('63', '25', '6158', '0', '2');
INSERT INTO `wm_news_material` VALUES ('64', '24', '6158', '0', '3');
INSERT INTO `wm_news_material` VALUES ('65', '23', '6158', '0', '4');
INSERT INTO `wm_news_material` VALUES ('66', '22', '6158', '0', '5');
INSERT INTO `wm_news_material` VALUES ('67', '25', '6158', '1', '0');
INSERT INTO `wm_news_material` VALUES ('68', '24', '6158', '1', '1');
INSERT INTO `wm_news_material` VALUES ('69', '25', '6159', '0', '1');
INSERT INTO `wm_news_material` VALUES ('70', '24', '6159', '0', '2');
INSERT INTO `wm_news_material` VALUES ('71', '23', '6159', '0', '3');
INSERT INTO `wm_news_material` VALUES ('72', '22', '6159', '0', '4');
INSERT INTO `wm_news_material` VALUES ('73', '25', '6159', '1', '0');
INSERT INTO `wm_news_material` VALUES ('74', '24', '6159', '1', '1');
INSERT INTO `wm_news_material` VALUES ('75', '25', '6160', '0', '1');
INSERT INTO `wm_news_material` VALUES ('76', '24', '6160', '0', '2');
INSERT INTO `wm_news_material` VALUES ('77', '23', '6160', '0', '3');
INSERT INTO `wm_news_material` VALUES ('78', '22', '6160', '0', '4');
INSERT INTO `wm_news_material` VALUES ('79', '25', '6160', '1', '0');
INSERT INTO `wm_news_material` VALUES ('80', '24', '6160', '1', '1');
INSERT INTO `wm_news_material` VALUES ('81', '23', '6160', '1', '2');
INSERT INTO `wm_news_material` VALUES ('82', '25', '6161', '0', '2');
INSERT INTO `wm_news_material` VALUES ('83', '24', '6161', '1', '0');
INSERT INTO `wm_news_material` VALUES ('88', '25', '6163', '0', '2');
INSERT INTO `wm_news_material` VALUES ('89', '24', '6163', '1', '0');
INSERT INTO `wm_news_material` VALUES ('90', '25', '6162', '0', '2');
INSERT INTO `wm_news_material` VALUES ('91', '24', '6162', '1', '0');

-- ----------------------------
-- Table structure for wm_news_statistics
-- ----------------------------
DROP TABLE IF EXISTS `wm_news_statistics`;
CREATE TABLE `wm_news_statistics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '主账号ID',
  `article` int(11) unsigned DEFAULT NULL COMMENT '子账号ID',
  `read_count` int(11) unsigned DEFAULT NULL COMMENT '阅读量',
  `comment` int(11) unsigned DEFAULT NULL COMMENT '评论量',
  `follow` int(11) unsigned DEFAULT NULL COMMENT '关注量',
  `collection` int(11) unsigned DEFAULT NULL COMMENT '收藏量',
  `forward` int(11) unsigned DEFAULT NULL COMMENT '转发量',
  `likes` int(11) unsigned DEFAULT NULL COMMENT '点赞量',
  `unlikes` int(11) unsigned DEFAULT NULL COMMENT '不喜欢',
  `unfollow` int(11) unsigned DEFAULT NULL COMMENT '取消关注量',
  `burst` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_user_id_time` (`user_id`,`created_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='自媒体图文数据统计表';

-- ----------------------------
-- Records of wm_news_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for wm_sub_user
-- ----------------------------
DROP TABLE IF EXISTS `wm_sub_user`;
CREATE TABLE `wm_sub_user` (
  `id` int(11) unsigned NOT NULL COMMENT '主键',
  `parent_id` int(11) unsigned DEFAULT NULL COMMENT '主账号ID',
  `children_id` int(11) unsigned DEFAULT NULL COMMENT '子账号ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='自媒体子账号信息表';

-- ----------------------------
-- Records of wm_sub_user
-- ----------------------------

-- ----------------------------
-- Table structure for wm_user
-- ----------------------------
DROP TABLE IF EXISTS `wm_user`;
CREATE TABLE `wm_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ap_user_id` int(11) DEFAULT NULL,
  `ap_author_id` int(11) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登录用户名',
  `password` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登录密码',
  `salt` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '盐',
  `nickname` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `location` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '归属地',
  `phone` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `status` tinyint(11) unsigned DEFAULT NULL COMMENT '状态\r\n            0 暂时不可用\r\n            1 永久不可用\r\n            9 正常可用',
  `email` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '账号类型\r\n            0 个人 \r\n            1 企业\r\n            2 子账号',
  `score` tinyint(3) unsigned DEFAULT NULL COMMENT '运营评分',
  `login_time` datetime DEFAULT NULL COMMENT '最后一次登录时间',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='自媒体用户信息表';

-- ----------------------------
-- Records of wm_user
-- ----------------------------
INSERT INTO `wm_user` VALUES ('1100', null, null, 'zhangsan', 'ab8c7c1e66a164ab6891b927550ea39a', 'abc', '小张', null, null, '13588996789', '1', null, null, null, '2020-02-17 23:51:15', '2020-02-17 23:51:18');
INSERT INTO `wm_user` VALUES ('1101', null, null, 'lisi', 'a6ecab0c246bbc87926e0fba442cc014', 'def', '小李', null, null, '13234567656', '1', null, null, null, null, null);
INSERT INTO `wm_user` VALUES ('1102', null, null, 'admin', '5d4e1a406d4a9edbf7b4f10c2a390405', '123abc', '管理', null, null, '13234567657', '1', null, null, null, null, '2020-03-14 09:35:13');
INSERT INTO `wm_user` VALUES ('1117', '5', null, 'sunwukong', '34e20b52f5bd120db806e57e27f47ed0', '123456', null, null, null, '13511223456', '9', null, null, null, null, '2020-03-20 21:59:17');

-- ----------------------------
-- Table structure for wm_user_auth
-- ----------------------------
DROP TABLE IF EXISTS `wm_user_auth`;
CREATE TABLE `wm_user_auth` (
  `id` int(11) unsigned NOT NULL COMMENT '主键',
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '账号ID',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '资源类型\r\n            0 菜单\r\n            1 频道\r\n            2 按钮',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资源名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='自媒体子账号权限信息表';

-- ----------------------------
-- Records of wm_user_auth
-- ----------------------------

-- ----------------------------
-- Table structure for wm_user_equipment
-- ----------------------------
DROP TABLE IF EXISTS `wm_user_equipment`;
CREATE TABLE `wm_user_equipment` (
  `id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '用户ID',
  `type` tinyint(1) unsigned DEFAULT NULL COMMENT '0PC\r\n            1ANDROID\r\n            2IOS\r\n            3PAD\r\n            9 其他',
  `version` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设备版本',
  `sys` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设备系统',
  `no` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设备唯一号，MD5加密',
  `created_time` datetime DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='自媒体用户设备信息表';

-- ----------------------------
-- Records of wm_user_equipment
-- ----------------------------

-- ----------------------------
-- Table structure for wm_user_login
-- ----------------------------
DROP TABLE IF EXISTS `wm_user_login`;
CREATE TABLE `wm_user_login` (
  `id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned DEFAULT NULL COMMENT '用户ID',
  `equipment_id` int(11) unsigned DEFAULT NULL COMMENT '登录设备ID',
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登录IP',
  `address` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登录地址',
  `longitude` decimal(5,5) DEFAULT NULL COMMENT '经度',
  `latitude` decimal(5,5) DEFAULT NULL COMMENT '纬度',
  `created_time` datetime DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='自媒体用户登录行为信息表';

-- ----------------------------
-- Records of wm_user_login
-- ----------------------------
