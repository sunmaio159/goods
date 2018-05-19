/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : goods

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2017-12-13 17:11:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cutomer
-- ----------------------------
DROP TABLE IF EXISTS `cutomer`;
CREATE TABLE `cutomer` (
  `cutomerid` int(30) NOT NULL AUTO_INCREMENT,
  `cutomermc` varchar(50) DEFAULT NULL,
  `userid` int(30) DEFAULT NULL,
  `kehudanwei` varchar(100) DEFAULT NULL,
  `lxfs` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cutomerid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cutomer
-- ----------------------------
INSERT INTO `cutomer` VALUES ('1', '撒的撒的撒丁', '1', '到十点四十多', '3243242', 'ssss');
INSERT INTO `cutomer` VALUES ('2', '撒的撒的撒丁', '1', '到十点四十多', '3243242', 'dddd');
INSERT INTO `cutomer` VALUES ('6', '撒的撒打算', '1', 'adasdas', '213123123', 'asdasd');
INSERT INTO `cutomer` VALUES ('7', '撒的撒打算', '1', 'adasdas', '213123123', 'asdasd');
INSERT INTO `cutomer` VALUES ('8', '撒的撒打算', '1', 'adasdas', '213123123', 'asdasd');
INSERT INTO `cutomer` VALUES ('9', '撒的撒打算', '1', 'adasdas', '213123123', 'asdasd');
INSERT INTO `cutomer` VALUES ('10', '撒的撒打算', '1', 'adasdas', '213123123', 'asdasd');
INSERT INTO `cutomer` VALUES ('11', '撒的撒打算', '1', '萨德萨斯达', '213123123', 'asdasd');
INSERT INTO `cutomer` VALUES ('12', '撒的撒打算', '1', 'adasdas', '213123123', 'asdasd');
INSERT INTO `cutomer` VALUES ('13', '撒的撒打算', '1', 'adasdas', '213123123', 'asdasd');
INSERT INTO `cutomer` VALUES ('14', '撒的撒打算', '1', 'adasdas', '213123123', 'asdasd');
INSERT INTO `cutomer` VALUES ('15', '撒的撒打算', '1', 'adasdas', '213123123', 'asdasd');
INSERT INTO `cutomer` VALUES ('16', '撒的撒打算', '1', 'adasdas', '213123123', 'asdasd');
INSERT INTO `cutomer` VALUES ('17', '撒的撒打算', '1', 'adasdas', '213123123', 'asdasd');
INSERT INTO `cutomer` VALUES ('18', '撒的撒打算', '1', 'adasdas', '213123123', 'asdasd');
INSERT INTO `cutomer` VALUES ('23', 'test', '1', '联通', '10010', '天庭');
INSERT INTO `cutomer` VALUES ('24', 'ddddd', '2', 'sssss', '1231231', '啥啊啊啊啊啊啊啊啊');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goodsid` int(20) NOT NULL AUTO_INCREMENT,
  `userid` varchar(30) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `xinghao` varchar(30) DEFAULT NULL,
  `danjia` varchar(30) DEFAULT NULL,
  `goodsname` varchar(50) DEFAULT NULL,
  `danwei` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`goodsid`),
  KEY `id` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '1', '合金类', '222', '333', '111', '');
INSERT INTO `goods` VALUES ('2', '1', 'sssss', '3333', '4444', '2222', '');
INSERT INTO `goods` VALUES ('3', '1', '222', '222', '2222', '2222', '');
INSERT INTO `goods` VALUES ('4', '1', '222', '222', '222', '2222', '');
INSERT INTO `goods` VALUES ('6', '1', '2', '4', '3', '5', '');
INSERT INTO `goods` VALUES ('7', '1', '2', '4', '3', '5', '');
INSERT INTO `goods` VALUES ('8', '1', '2', '4', '3', '5', '');
INSERT INTO `goods` VALUES ('9', '1', '2', '4', '3', '5', '');
INSERT INTO `goods` VALUES ('10', '1', '2', '4', '3', '5', '');
INSERT INTO `goods` VALUES ('11', '1', '2', '4', '3', '5', '');
INSERT INTO `goods` VALUES ('12', '1', '2', '4', '3', '5', '');
INSERT INTO `goods` VALUES ('13', '1', '2', '4', '3', '5', '');
INSERT INTO `goods` VALUES ('14', '1', '2', '5555', '3', '5', '');
INSERT INTO `goods` VALUES ('15', '1', '2', '4', '3', '5', '');
INSERT INTO `goods` VALUES ('35', '2', '玻璃刀具类', 'wwwww', '11111', 'test', '');
INSERT INTO `goods` VALUES ('36', '1', '合金类', '20#', '1000', '阿斯大', '把');

-- ----------------------------
-- Table structure for orderetail
-- ----------------------------
DROP TABLE IF EXISTS `orderetail`;
CREATE TABLE `orderetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(30) NOT NULL,
  `goodsid` varchar(30) NOT NULL,
  `goodsname` varchar(40) DEFAULT NULL,
  `num` int(20) DEFAULT NULL,
  `price` float(30,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderetail
-- ----------------------------
INSERT INTO `orderetail` VALUES ('13', '20171213162526', '2', '2222', '1', '4444');
INSERT INTO `orderetail` VALUES ('14', '20171213162526', '6', '5', '300', '3');
INSERT INTO `orderetail` VALUES ('15', '20171213162526', '36', '阿斯大', '1', '1000');

-- ----------------------------
-- Table structure for order_table
-- ----------------------------
DROP TABLE IF EXISTS `order_table`;
CREATE TABLE `order_table` (
  `orderid` varchar(30) NOT NULL,
  `cutomerid` varchar(30) DEFAULT NULL,
  `userid` varchar(30) DEFAULT NULL,
  `zt` varchar(30) DEFAULT NULL,
  `jine` varchar(50) DEFAULT NULL,
  `fukuane` varchar(30) DEFAULT NULL,
  `timedate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of order_table
-- ----------------------------
INSERT INTO `order_table` VALUES ('20171213162526', '23', '1', null, null, null, '2017-12-13');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) NOT NULL,
  `userpass` varchar(50) DEFAULT NULL,
  `danwei` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '1111', '天庭');
INSERT INTO `user` VALUES ('2', 'test', '1111', '三十三天外');
