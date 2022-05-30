/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : doraemon_vis

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2022-05-31 00:55:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ssd
-- ----------------------------
DROP TABLE IF EXISTS `ssd`;
CREATE TABLE `ssd` (
  `vname` varchar(255) NOT NULL,
  `epoch` int(11) NOT NULL DEFAULT '60',
  `ssdversion` varchar(255) DEFAULT NULL,
  `ssdP` float DEFAULT NULL,
  `ssdR` float DEFAULT NULL,
  `ssdF1` float DEFAULT NULL,
  `ssdmAP` float DEFAULT NULL,
  `ssdFPS` float DEFAULT NULL,
  PRIMARY KEY (`vname`,`epoch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ssd
-- ----------------------------
INSERT INTO `ssd` VALUES ('SVID_1', '60', 'tf2', '0.9576', '0.8794', '0.9', '0.7808', '2.98');
INSERT INTO `ssd` VALUES ('SVID_10', '60', 'tf2', '0.8723', '0.957', '0.82', '0.9113', '2.49');
INSERT INTO `ssd` VALUES ('SVID_13', '60', 'tf2', '0.9641', '0.9631', '0.9', '0.9167', '2.89');
INSERT INTO `ssd` VALUES ('SVID_14', '60', 'tf2', '0.9576', '0.8794', '0.92', '0.7808', '1.98');
INSERT INTO `ssd` VALUES ('SVID_6', '60', 'tf2', '0.9429', '0.8968', '0.86', '0.9231', '2.78');
INSERT INTO `ssd` VALUES ('SVID_7', '60', 'tf2', '0.9211', '0.8049', '0.93', '0.9112', '3.19');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `vname` varchar(255) NOT NULL,
  `vout` varchar(255) DEFAULT NULL,
  `vp1` varchar(255) DEFAULT NULL,
  `vp2` varchar(255) DEFAULT NULL,
  `vp3` varchar(255) DEFAULT NULL,
  `vtext` varchar(255) DEFAULT NULL,
  `vtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('SVID_1', null, 's1', 's5', 's2', '小夫向大雄炫耀刚买的钢达姆机器人', '00:30');
INSERT INTO `video` VALUES ('SVID_10', null, 's3', 's7', 's4', '大雄知道了无上王座的功能后指使大家游街', '01:00');
INSERT INTO `video` VALUES ('SVID_13', null, 's5', 's1', 's7', '大雄和哆啦A梦介绍哆啦美送来的徽章道具', '01:00');
INSERT INTO `video` VALUES ('SVID_14', null, 'sn2', 'sn4', 'sn5', '哆啦A梦帮助胖虎实现在电视台唱歌梦想', '01:00');
INSERT INTO `video` VALUES ('SVID_6', null, 's6', 's2', 's8', '大雄、小夫和其他小伙伴在空地上玩耍', '01:00');
INSERT INTO `video` VALUES ('SVID_7', null, 's2', 's6', 's3', '众人在教室里面讨论星座知识，大雄闹笑话', '00:30');

-- ----------------------------
-- Table structure for vscore
-- ----------------------------
DROP TABLE IF EXISTS `vscore`;
CREATE TABLE `vscore` (
  `vname` varchar(255) DEFAULT NULL,
  `dorscore` int(11) DEFAULT NULL,
  `daxscore` int(11) DEFAULT NULL,
  `phuscore` int(11) DEFAULT NULL,
  `xfuscore` int(11) DEFAULT NULL,
  `jxscore` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vscore
-- ----------------------------
INSERT INTO `vscore` VALUES ('SVID_1', '204', '312', '140', '96', '112');
INSERT INTO `vscore` VALUES ('SVID_7', '214', '262', '146', '140', '98');
INSERT INTO `vscore` VALUES ('SVID_10', '198', '330', '112', '96', '0');
INSERT INTO `vscore` VALUES ('SVID_14', '86', '337', '181', '90', '32');
INSERT INTO `vscore` VALUES ('SVID_13', '278', '312', '128', '96', '0');
INSERT INTO `vscore` VALUES ('SVID_6', '260', '312', '132', '76', '108');

-- ----------------------------
-- Table structure for vtime
-- ----------------------------
DROP TABLE IF EXISTS `vtime`;
CREATE TABLE `vtime` (
  `vname` varchar(255) NOT NULL,
  `dortime` varchar(255) DEFAULT NULL,
  `daxtime` varchar(255) DEFAULT NULL,
  `phutime` varchar(255) DEFAULT NULL,
  `xfutime` varchar(255) DEFAULT NULL,
  `jxtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vtime
-- ----------------------------
INSERT INTO `vtime` VALUES ('SVID_1', '16', '22', '20', '14', '12');
INSERT INTO `vtime` VALUES ('SVID_10', '28', '36', '16', '18', '0');
INSERT INTO `vtime` VALUES ('SVID_13', '22', '26', '20', '8', '16');
INSERT INTO `vtime` VALUES ('SVID_14', '8', '40', '32', '18', '5');
INSERT INTO `vtime` VALUES ('SVID_6', '18', '24', '22', '16', '18');
INSERT INTO `vtime` VALUES ('SVID_7', '18', '24', '18', '22', '0');
