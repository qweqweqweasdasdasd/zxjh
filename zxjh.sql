/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : zxjh

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-04 15:10:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ssc_jh
-- ----------------------------
DROP TABLE IF EXISTS `ssc_jh`;
CREATE TABLE `ssc_jh` (
  `jh_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bs` char(30) DEFAULT '1' COMMENT '倍投数 1,3,8.24,72',
  `hm` varchar(100) DEFAULT '' COMMENT '预测的号码',
  `is_show` tinyint(7) DEFAULT '1' COMMENT '1 显示 2 中奖 3不能翻倍',
  `type` char(20) DEFAULT '' COMMENT '彩种',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`jh_id`)
) ENGINE=MyISAM AUTO_INCREMENT=799 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssc_jh
-- ----------------------------
INSERT INTO `ssc_jh` VALUES ('752', '8', '单', '2', 'og1k3', '2019-04-01 11:40:04', '2019-04-01 11:43:04', null);
INSERT INTO `ssc_jh` VALUES ('753', '24', '双', '2', 'jlffc', '2019-04-01 11:40:04', '2019-04-01 11:44:05', null);
INSERT INTO `ssc_jh` VALUES ('754', '1', '单', '2', 'jlpk10', '2019-04-01 11:40:04', '2019-04-01 11:41:04', null);
INSERT INTO `ssc_jh` VALUES ('755', '3', '单', '2', 'tfffc', '2019-04-01 11:40:08', '2019-04-01 11:50:08', null);
INSERT INTO `ssc_jh` VALUES ('756', '1', '单', '2', 'tfpk10', '2019-04-01 11:40:08', '2019-04-01 11:45:11', null);
INSERT INTO `ssc_jh` VALUES ('757', '24', '单', '2', 'og5k3', '2019-04-01 11:40:08', '2019-04-01 12:00:12', null);
INSERT INTO `ssc_jh` VALUES ('758', '1', '单', '2', 'og10k3', '2019-04-01 11:40:11', '2019-04-01 11:50:11', null);
INSERT INTO `ssc_jh` VALUES ('759', '8', '双', '1', 'og10pk10', '2019-04-01 11:40:11', '2019-04-01 12:00:15', null);
INSERT INTO `ssc_jh` VALUES ('760', '1', '双', '2', 'og10ffc', '2019-04-01 11:40:11', '2019-04-01 11:50:11', null);
INSERT INTO `ssc_jh` VALUES ('761', '3', '双', '1', 'jsk3', '2019-04-01 11:40:14', '2019-04-01 12:00:18', null);
INSERT INTO `ssc_jh` VALUES ('762', '1', '双', '2', 'cqssc', '2019-04-01 11:40:14', '2019-04-01 12:00:18', null);
INSERT INTO `ssc_jh` VALUES ('763', '1', '单', '2', 'bjpk10', '2019-04-01 11:40:14', '2019-04-01 12:00:18', null);
INSERT INTO `ssc_jh` VALUES ('764', '3', '双', '1', 'gd11x5', '2019-04-01 11:40:14', '2019-04-01 12:00:18', null);
INSERT INTO `ssc_jh` VALUES ('765', '72', '双', '3', 'jlpk10', '2019-04-01 11:42:05', '2019-04-01 11:47:05', null);
INSERT INTO `ssc_jh` VALUES ('766', '1', '单', '2', 'tsffc', '2019-04-01 11:42:08', '2019-04-01 11:45:08', null);
INSERT INTO `ssc_jh` VALUES ('767', '72', '双', '3', 'tspk10', '2019-04-01 11:42:08', '2019-04-01 11:57:07', null);
INSERT INTO `ssc_jh` VALUES ('768', '3', '双', '2', 'og3k3', '2019-04-01 11:42:08', '2019-04-01 11:48:08', null);
INSERT INTO `ssc_jh` VALUES ('769', '1', '单', '2', 'og1k3', '2019-04-01 11:44:05', '2019-04-01 11:45:04', null);
INSERT INTO `ssc_jh` VALUES ('770', '3', '单', '2', 'jlffc', '2019-04-01 11:45:04', '2019-04-01 11:47:05', null);
INSERT INTO `ssc_jh` VALUES ('771', '1', '双', '2', 'og1k3', '2019-04-01 11:46:04', '2019-04-01 11:47:05', null);
INSERT INTO `ssc_jh` VALUES ('772', '24', '单', '2', 'og1k3', '2019-04-01 11:48:04', '2019-04-01 11:52:04', null);
INSERT INTO `ssc_jh` VALUES ('773', '1', '单', '2', 'jlffc', '2019-04-01 11:48:04', '2019-04-01 11:49:04', null);
INSERT INTO `ssc_jh` VALUES ('774', '72', '双', '3', 'jlpk10', '2019-04-01 11:48:04', '2019-04-01 11:53:04', null);
INSERT INTO `ssc_jh` VALUES ('775', '72', '双', '2', 'tsffc', '2019-04-01 11:48:07', '2019-04-01 12:03:08', null);
INSERT INTO `ssc_jh` VALUES ('776', '1', '双', '2', 'jlffc', '2019-04-01 11:50:05', '2019-04-01 11:51:05', null);
INSERT INTO `ssc_jh` VALUES ('777', '8', '双', '1', 'tfpk10', '2019-04-01 11:50:08', '2019-04-01 12:00:12', null);
INSERT INTO `ssc_jh` VALUES ('778', '1', '双', '2', 'og3k3', '2019-04-01 11:51:08', '2019-04-01 11:54:08', null);
INSERT INTO `ssc_jh` VALUES ('779', '1', '单', '2', 'jlffc', '2019-04-01 11:52:04', '2019-04-01 11:53:04', null);
INSERT INTO `ssc_jh` VALUES ('780', '24', '双', '2', 'og1k3', '2019-04-01 11:53:04', '2019-04-01 11:57:04', null);
INSERT INTO `ssc_jh` VALUES ('781', '1', '单', '2', 'jlffc', '2019-04-01 11:54:04', '2019-04-01 11:55:04', null);
INSERT INTO `ssc_jh` VALUES ('782', '72', '双', '3', 'jlpk10', '2019-04-01 11:54:04', '2019-04-01 11:59:04', null);
INSERT INTO `ssc_jh` VALUES ('783', '1', '双', '2', 'tfffc', '2019-04-01 11:55:07', '2019-04-01 12:00:12', null);
INSERT INTO `ssc_jh` VALUES ('784', '1', '双', '2', 'jlffc', '2019-04-01 11:56:05', '2019-04-01 11:57:04', null);
INSERT INTO `ssc_jh` VALUES ('785', '8', '双', '1', 'og3k3', '2019-04-01 11:57:07', '2019-04-01 12:03:08', null);
INSERT INTO `ssc_jh` VALUES ('786', '1', '单', '2', 'og1k3', '2019-04-01 11:58:05', '2019-04-01 11:59:04', null);
INSERT INTO `ssc_jh` VALUES ('787', '1', '双', '2', 'jlffc', '2019-04-01 11:58:05', '2019-04-01 11:59:04', null);
INSERT INTO `ssc_jh` VALUES ('788', '1', '单', '2', 'og1k3', '2019-04-01 12:00:05', '2019-04-01 12:01:05', null);
INSERT INTO `ssc_jh` VALUES ('789', '3', '单', '2', 'jlffc', '2019-04-01 12:00:05', '2019-04-01 12:02:04', null);
INSERT INTO `ssc_jh` VALUES ('790', '1', '单', '2', 'jlpk10', '2019-04-01 12:00:05', '2019-04-01 12:01:05', null);
INSERT INTO `ssc_jh` VALUES ('791', '1', '单', '2', 'tspk10', '2019-04-01 12:00:08', '2019-04-01 12:03:08', null);
INSERT INTO `ssc_jh` VALUES ('792', '1', '单', '1', 'og10k3', '2019-04-01 12:00:15', '2019-04-01 12:00:15', null);
INSERT INTO `ssc_jh` VALUES ('793', '1', '单', '1', 'og10ffc', '2019-04-01 12:00:15', '2019-04-01 12:00:15', null);
INSERT INTO `ssc_jh` VALUES ('794', '1', '单', '2', 'og1k3', '2019-04-01 12:02:04', '2019-04-01 12:03:04', null);
INSERT INTO `ssc_jh` VALUES ('795', '1', '单', '2', 'jlpk10', '2019-04-01 12:02:04', '2019-04-01 12:03:04', null);
INSERT INTO `ssc_jh` VALUES ('796', '3', '双', '1', 'jlffc', '2019-04-01 12:03:04', '2019-04-01 12:04:04', null);
INSERT INTO `ssc_jh` VALUES ('797', '1', '单', '1', 'og1k3', '2019-04-01 12:04:04', '2019-04-01 12:04:04', null);
INSERT INTO `ssc_jh` VALUES ('798', '1', '单', '1', 'jlpk10', '2019-04-01 12:04:04', '2019-04-01 12:04:04', null);

-- ----------------------------
-- Table structure for ssc_kj
-- ----------------------------
DROP TABLE IF EXISTS `ssc_kj`;
CREATE TABLE `ssc_kj` (
  `kj_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kjhm` varchar(100) DEFAULT '' COMMENT '每期开奖的结果json数据',
  `qs` char(50) DEFAULT '' COMMENT '上期数',
  `type` char(20) DEFAULT '' COMMENT '彩种',
  `xqs` char(20) DEFAULT '' COMMENT '当前期数',
  `opentime` datetime DEFAULT NULL COMMENT '开奖的时间',
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`kj_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2740 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssc_kj
-- ----------------------------
INSERT INTO `ssc_kj` VALUES ('2609', '3,3,4', '1178', 'og1k3', '1179', '2019-04-01 19:39:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2610', '7,3,7,9,9', '1178', 'jlffc', '1179', '2019-04-01 19:39:09', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2611', '1,10,4,7,5,2,9,3,8,6', '1178', 'jlpk10', '1179', '2019-04-01 19:39:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2612', '1,4,3,5,6', '1235', 'tfffc', '1236', '2019-04-01 19:40:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2613', '6,2,3,9,5,1,7,4,10,8', '1234', 'tfpk10', '1235', '2019-04-01 19:35:06', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2614', '1,2,4', '1234', 'og5k3', '1235', '2019-04-01 19:35:07', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2615', '2,3,6', '1117', 'og10k3', '1118', '2019-04-01 19:40:06', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2616', '7,5,4,6,1,2,3,9,8,10', '1117', 'og10pk10', '1118', '2019-04-01 19:40:07', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2617', '4,3,1,5,9', '1117', 'og10ffc', '1118', '2019-04-01 19:40:06', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2618', '1,2,5', '1032', 'jsk3', '1033', '2019-04-01 19:31:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2619', '5,7,7,7,2', '1045', 'cqssc', '1046', '2019-04-01 19:31:49', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2620', '6,3,8,5,4,10,7,1,2,9', '1577', 'bjpk10', '1578', '2019-04-01 19:32:20', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2621', '11,06,08,07,04', '1030', 'gd11x5', '1031', '2019-04-01 19:31:26', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2622', '1,1,4', '1179', 'og1k3', '1180', '2019-04-01 19:40:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2623', '9,0,4,5,5', '1179', 'jlffc', '1180', '2019-04-01 19:40:10', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2624', '8,3,5,9,10,6,2,4,1,7', '1179', 'jlpk10', '1180', '2019-04-01 19:40:06', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2625', '3,5,6', '1180', 'og1k3', '1181', '2019-04-01 19:41:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2626', '2,3,7,5,4', '1180', 'jlffc', '1181', '2019-04-01 19:41:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2627', '3,5,10,9,7,6,4,8,1,2', '1180', 'jlpk10', '1181', '2019-04-01 19:41:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2628', '1,0,9,2,7', '1393', 'tsffc', '1394', '2019-04-01 19:42:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2629', '6,1,8,7,4,3,5,2,9,10', '1393', 'tspk10', '1394', '2019-04-01 19:42:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2630', '1,2,6', '1393', 'og3k3', '1394', '2019-04-01 19:42:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2631', '2,3,6', '1181', 'og1k3', '1182', '2019-04-01 19:42:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2632', '9,6,7,4,5', '1181', 'jlffc', '1182', '2019-04-01 19:42:07', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2633', '8,2,1,7,3,4,9,5,6,10', '1181', 'jlpk10', '1182', '2019-04-01 19:42:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2634', '3,4,6', '1182', 'og1k3', '1183', '2019-04-01 19:43:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2635', '5,9,7,0,5', '1182', 'jlffc', '1183', '2019-04-01 19:43:08', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2636', '9,4,10,8,1,7,3,2,6,5', '1182', 'jlpk10', '1183', '2019-04-01 19:43:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2637', '5,6,6', '1183', 'og1k3', '1184', '2019-04-01 19:44:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2638', '5,9,4,4,4', '1183', 'jlffc', '1184', '2019-04-01 19:44:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2639', '9,1,4,10,7,6,3,5,2,8', '1183', 'jlpk10', '1184', '2019-04-01 19:44:06', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2640', '1,0,9,2,7', '1393', 'tsffc', '1394', '2019-04-01 19:42:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2641', '6,1,8,7,4,3,5,2,9,10', '1393', 'tspk10', '1394', '2019-04-01 19:42:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2642', '1,2,6', '1393', 'og3k3', '1394', '2019-04-01 19:42:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2643', '7,3,2,0,2', '1236', 'tfffc', '1237', '2019-04-01 19:45:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2644', '1,8,5,4,10,3,2,9,7,6', '1236', 'tfpk10', '1237', '2019-04-01 19:45:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2645', '1,2,5', '1236', 'og5k3', '1237', '2019-04-01 19:45:06', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2646', '1,3,6', '1184', 'og1k3', '1185', '2019-04-01 19:45:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2647', '1,0,3,9,1', '1184', 'jlffc', '1185', '2019-04-01 19:45:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2648', '9,5,8,3,1,6,4,7,10,2', '1184', 'jlpk10', '1185', '2019-04-01 19:45:07', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2649', '1,1,2', '1185', 'og1k3', '1186', '2019-04-01 19:46:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2650', '3,9,8,0,9', '1185', 'jlffc', '1186', '2019-04-01 19:46:08', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2651', '4,2,8,1,7,6,3,5,9,10', '1185', 'jlpk10', '1186', '2019-04-01 19:46:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2652', '2,4,6', '1186', 'og1k3', '1187', '2019-04-01 19:47:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2653', '4,3,6,8,2', '1186', 'jlffc', '1187', '2019-04-01 19:47:08', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2654', '6,7,10,8,5,4,2,3,9,1', '1186', 'jlpk10', '1187', '2019-04-01 19:47:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2655', '6,8,9,4,0', '1395', 'tsffc', '1396', '2019-04-01 19:48:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2656', '3,8,10,2,6,7,5,1,9,4', '1395', 'tspk10', '1396', '2019-04-01 19:48:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2657', '1,1,6', '1394', 'og3k3', '1395', '2019-04-01 19:45:07', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2658', '2,3,5', '1187', 'og1k3', '1188', '2019-04-01 19:48:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2659', '2,2,4,9,6', '1187', 'jlffc', '1188', '2019-04-01 19:48:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2660', '9,3,2,10,6,1,4,5,7,8', '1187', 'jlpk10', '1188', '2019-04-01 19:48:06', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2661', '2,3,5', '1188', 'og1k3', '1189', '2019-04-01 19:49:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2662', '1,2,9,4,3', '1188', 'jlffc', '1189', '2019-04-01 19:49:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2663', '8,2,4,5,9,1,3,10,6,7', '1188', 'jlpk10', '1189', '2019-04-01 19:49:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2664', '0,6,0,6,7', '1237', 'tfffc', '1238', '2019-04-01 19:50:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2665', '1,8,5,4,10,3,2,9,7,6', '1236', 'tfpk10', '1237', '2019-04-01 19:45:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2666', '1,2,5', '1236', 'og5k3', '1237', '2019-04-01 19:45:06', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2667', '2,2,3', '1118', 'og10k3', '1119', '2019-04-01 19:50:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2668', '6,4,5,7,3,1,2,10,8,9', '1118', 'og10pk10', '1119', '2019-04-01 19:50:07', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2669', '8,1,0,6,9', '1118', 'og10ffc', '1119', '2019-04-01 19:50:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2670', '1,1,4', '1189', 'og1k3', '1190', '2019-04-01 19:50:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2671', '9,7,5,6,3', '1189', 'jlffc', '1190', '2019-04-01 19:50:09', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2672', '5,1,8,10,7,9,2,4,6,3', '1189', 'jlpk10', '1190', '2019-04-01 19:50:06', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2673', '9,9,7,4,0', '1396', 'tsffc', '1397', '2019-04-01 19:51:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2674', '6,2,8,10,4,7,9,5,1,3', '1396', 'tspk10', '1397', '2019-04-01 19:51:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2675', '2,3,6', '1395', 'og3k3', '1396', '2019-04-01 19:48:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2676', '1,3,3', '1190', 'og1k3', '1191', '2019-04-01 19:51:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2677', '9,3,9,5,3', '1190', 'jlffc', '1191', '2019-04-01 19:51:08', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2678', '10,1,7,3,4,2,5,6,9,8', '1190', 'jlpk10', '1191', '2019-04-01 19:51:06', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2679', '3,6,6', '1191', 'og1k3', '1192', '2019-04-01 19:52:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2680', '2,9,3,7,6', '1191', 'jlffc', '1192', '2019-04-01 19:52:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2681', '6,8,7,4,1,10,2,9,3,5', '1191', 'jlpk10', '1192', '2019-04-01 19:52:06', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2682', '1,5,5', '1192', 'og1k3', '1193', '2019-04-01 19:53:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2683', '6,3,6,4,3', '1192', 'jlffc', '1193', '2019-04-01 19:53:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2684', '2,6,8,3,4,9,10,1,7,5', '1192', 'jlpk10', '1193', '2019-04-01 19:53:07', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2685', '7,0,3,3,2', '1397', 'tsffc', '1398', '2019-04-01 19:54:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2686', '3,6,7,2,9,8,10,4,1,5', '1397', 'tspk10', '1398', '2019-04-01 19:54:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2687', '3,4,5', '1396', 'og3k3', '1397', '2019-04-01 19:51:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2688', '1,2,6', '1193', 'og1k3', '1194', '2019-04-01 19:54:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2689', '1,1,5,5,3', '1193', 'jlffc', '1194', '2019-04-01 19:54:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2690', '4,9,5,8,7,10,3,6,1,2', '1193', 'jlpk10', '1194', '2019-04-01 19:54:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2691', '0,6,0,6,7', '1237', 'tfffc', '1238', '2019-04-01 19:50:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2692', '7,10,1,3,2,6,5,4,8,9', '1237', 'tfpk10', '1238', '2019-04-01 19:50:06', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2693', '2,3,5', '1237', 'og5k3', '1238', '2019-04-01 19:50:06', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2694', '2,3,6', '1194', 'og1k3', '1195', '2019-04-01 19:55:07', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2695', '6,7,5,9,7', '1194', 'jlffc', '1195', '2019-04-01 19:55:07', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2696', '1,4,8,3,5,7,6,2,9,10', '1194', 'jlpk10', '1195', '2019-04-01 19:55:09', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2697', '5,5,6', '1195', 'og1k3', '1196', '2019-04-01 19:56:07', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2698', '8,7,1,9,3', '1195', 'jlffc', '1196', '2019-04-01 19:56:07', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2699', '10,9,1,6,3,4,7,5,2,8', '1195', 'jlpk10', '1196', '2019-04-01 19:56:08', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2700', '7,0,3,3,2', '1397', 'tsffc', '1398', '2019-04-01 19:54:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2701', '3,6,7,2,9,8,10,4,1,5', '1397', 'tspk10', '1398', '2019-04-01 19:54:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2702', '2,5,6', '1397', 'og3k3', '1398', '2019-04-01 19:54:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2703', '1,2,6', '1196', 'og1k3', '1197', '2019-04-01 19:57:07', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2704', '4,8,0,9,2', '1196', 'jlffc', '1197', '2019-04-01 19:57:11', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2705', '10,1,2,7,9,8,3,6,4,5', '1196', 'jlpk10', '1197', '2019-04-01 19:57:07', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2706', '1,3,5', '1197', 'og1k3', '1198', '2019-04-01 19:58:06', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2707', '7,7,9,9,6', '1197', 'jlffc', '1198', '2019-04-01 19:58:10', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2708', '4,1,7,10,5,8,2,6,3,9', '1197', 'jlpk10', '1198', '2019-04-01 19:58:06', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2709', '1,1,4', '1198', 'og1k3', '1199', '2019-04-01 19:59:06', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2710', '3,5,1,8,9', '1198', 'jlffc', '1199', '2019-04-01 19:59:06', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2711', '5,6,1,10,4,7,2,8,9,3', '1198', 'jlpk10', '1199', '2019-04-01 19:59:07', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2712', '6,8,4,8,9', '1398', 'tsffc', '1399', '2019-04-01 19:57:08', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2713', '10,5,4,1,8,9,3,6,7,2', '1398', 'tspk10', '1399', '2019-04-01 19:57:08', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2714', '1,3,5', '1398', 'og3k3', '1399', '2019-04-01 19:57:09', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2715', '3,4,3,8,6', '1239', 'tfffc', '1240', '2019-04-01 20:00:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2716', '2,10,4,7,6,8,9,3,1,5', '1239', 'tfpk10', '1240', '2019-04-01 20:00:08', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2717', '4,5,6', '1239', 'og5k3', '1240', '2019-04-01 20:00:09', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2718', '1,5,6', '1119', 'og10k3', '1120', '2019-04-01 20:00:12', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2719', '5,9,4,1,2,7,6,10,3,8', '1119', 'og10pk10', '1120', '2019-04-01 20:00:09', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2720', '0,9,4,2,1', '1119', 'og10ffc', '1120', '2019-04-01 20:00:06', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2721', '1,4,6', '1033', 'jsk3', '1034', '2019-04-01 19:51:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2722', '9,6,7,2,6', '1046', 'cqssc', '1047', '2019-04-01 19:51:46', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2723', '1,4,10,3,9,7,5,6,8,2', '1578', 'bjpk10', '1579', '2019-04-01 19:52:15', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2724', '03,11,10,08,05', '1031', 'gd11x5', '1032', '2019-04-01 19:51:41', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2725', '2,4,5', '1199', 'og1k3', '1200', '2019-04-01 20:00:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2726', '5,9,5,2,9', '1199', 'jlffc', '1200', '2019-04-01 20:00:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2727', '6,8,3,10,9,7,5,1,4,2', '1199', 'jlpk10', '1200', '2019-04-01 20:00:06', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2728', '2,2,5', '1200', 'og1k3', '1201', '2019-04-01 20:01:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2729', '3,1,1,7,9', '1200', 'jlffc', '1201', '2019-04-01 20:01:08', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2730', '6,4,8,7,2,1,3,5,9,10', '1200', 'jlpk10', '1201', '2019-04-01 20:01:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2731', '1,4,6', '1201', 'og1k3', '1202', '2019-04-01 20:02:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2732', '0,2,7,9,2', '1201', 'jlffc', '1202', '2019-04-01 20:02:08', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2733', '5,7,10,2,3,1,8,9,6,4', '1201', 'jlpk10', '1202', '2019-04-01 20:02:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2734', '0,6,4,5,5', '1400', 'tsffc', '1401', '2019-04-01 20:03:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2735', '1,4,3,5,10,8,7,9,2,6', '1400', 'tspk10', '1401', '2019-04-01 20:03:05', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2736', '1,3,5', '1400', 'og3k3', '1401', '2019-04-01 20:03:06', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2737', '1,4,5', '1202', 'og1k3', '1203', '2019-04-01 20:03:04', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2738', '8,6,2,0,3', '1202', 'jlffc', '1203', '2019-04-01 20:03:09', null, null, null);
INSERT INTO `ssc_kj` VALUES ('2739', '3,9,7,8,2,6,10,5,1,4', '1202', 'jlpk10', '1203', '2019-04-01 20:03:04', null, null, null);
