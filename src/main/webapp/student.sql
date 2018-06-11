/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50543
Source Host           : localhost:3306
Source Database       : student

Target Server Type    : MYSQL
Target Server Version : 50543
File Encoding         : 65001

Date: 2017-06-24 15:13:41
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `studentinfo`
-- ----------------------------
DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE `studentinfo` (
  `id` char(20) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `name` char(20) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `age` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of studentinfo
-- ----------------------------
INSERT INTO `studentinfo` VALUES ('1548020001', 'lishengde', '19');
INSERT INTO `studentinfo` VALUES ('154802025', 'zhangkunlun', '19');
