/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50510
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50510
File Encoding         : 65001

Date: 2018-01-06 23:31:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bji`
-- ----------------------------
DROP TABLE IF EXISTS `bji`;
CREATE TABLE `bji` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `major_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_4ltvwo40wd88fnhjs3yxyirap` (`category_id`),
  KEY `FK_hvirsxlla8tg7x0hc94ol2iqf` (`level_id`),
  KEY `FK_cbi9faefx668jmlqrtghpscqw` (`major_id`),
  CONSTRAINT `FK_cbi9faefx668jmlqrtghpscqw` FOREIGN KEY (`major_id`) REFERENCES `major` (`id`),
  CONSTRAINT `FK_4ltvwo40wd88fnhjs3yxyirap` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_hvirsxlla8tg7x0hc94ol2iqf` FOREIGN KEY (`level_id`) REFERENCES `level` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bji
-- ----------------------------
INSERT INTO `bji` VALUES ('1', '1', '1班', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `bookfee`
-- ----------------------------
DROP TABLE IF EXISTS `bookfee`;
CREATE TABLE `bookfee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `academicyear` varchar(255) DEFAULT NULL,
  `amount` float NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `operator_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `nPayFee` double NOT NULL,
  `payFee` double NOT NULL,
  `bJi_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tmatxkh60db206ymp8893ehp6` (`operator_id`),
  KEY `FK_xqqs2pb135804mbtn9fr5db9` (`student_id`),
  KEY `FK_2o7b3eiqcpgqiqh0jjhs395h3` (`bJi_id`),
  CONSTRAINT `FK_2o7b3eiqcpgqiqh0jjhs395h3` FOREIGN KEY (`bJi_id`) REFERENCES `bji` (`id`),
  CONSTRAINT `FK_tmatxkh60db206ymp8893ehp6` FOREIGN KEY (`operator_id`) REFERENCES `operator` (`id`),
  CONSTRAINT `FK_xqqs2pb135804mbtn9fr5db9` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookfee
-- ----------------------------
INSERT INTO `bookfee` VALUES ('1', '1', '1', '1', '1', '1', '0', '0', null);

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for `cell`
-- ----------------------------
DROP TABLE IF EXISTS `cell`;
CREATE TABLE `cell` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cell
-- ----------------------------
INSERT INTO `cell` VALUES ('1', '1', '3');
INSERT INTO `cell` VALUES ('2', '3', '2');
INSERT INTO `cell` VALUES ('3', '6', '66');
INSERT INTO `cell` VALUES ('5', '144', '144');

-- ----------------------------
-- Table structure for `deliver_to_other`
-- ----------------------------
DROP TABLE IF EXISTS `deliver_to_other`;
CREATE TABLE `deliver_to_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `deliver_date` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `operator_id` int(11) NOT NULL,
  `textbook_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_3kn90xfqv95lg24c9k5nhkyrl` (`operator_id`),
  KEY `FK_2mekyxaddfkh92ukc37b4wsch` (`textbook_id`),
  CONSTRAINT `FK_2mekyxaddfkh92ukc37b4wsch` FOREIGN KEY (`textbook_id`) REFERENCES `textbook` (`id`),
  CONSTRAINT `FK_3kn90xfqv95lg24c9k5nhkyrl` FOREIGN KEY (`operator_id`) REFERENCES `operator` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deliver_to_other
-- ----------------------------
INSERT INTO `deliver_to_other` VALUES ('11', '11', '2018-01-06 23:26:33', '11', '1', '1');

-- ----------------------------
-- Table structure for `deliver_to_station`
-- ----------------------------
DROP TABLE IF EXISTS `deliver_to_station`;
CREATE TABLE `deliver_to_station` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deliver_date` datetime DEFAULT NULL,
  `operator_id` int(11) NOT NULL,
  `station_id` int(11) DEFAULT NULL,
  `textbook_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_btmnyodchyem3de8imc6tmdlu` (`station_id`),
  KEY `FK_qrc624j8wlhcaeifss2lkm60e` (`operator_id`),
  KEY `FK_btmnyodchyem3de8imc6tmdlu` (`station_id`),
  KEY `FK_o6u41572iovyw4uocxhybb9qn` (`textbook_id`),
  CONSTRAINT `FK_o6u41572iovyw4uocxhybb9qn` FOREIGN KEY (`textbook_id`) REFERENCES `textbook` (`id`),
  CONSTRAINT `FK_btmnyodchyem3de8imc6tmdlu` FOREIGN KEY (`station_id`) REFERENCES `station` (`id`),
  CONSTRAINT `FK_qrc624j8wlhcaeifss2lkm60e` FOREIGN KEY (`operator_id`) REFERENCES `operator` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deliver_to_station
-- ----------------------------
INSERT INTO `deliver_to_station` VALUES ('11', '2018-01-06 23:26:52', '1', '1', '1');

-- ----------------------------
-- Table structure for `deliver_to_student`
-- ----------------------------
DROP TABLE IF EXISTS `deliver_to_student`;
CREATE TABLE `deliver_to_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deliver_time` datetime DEFAULT NULL,
  `operator_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_n5dpypo53f42920siy06qi8gv` (`student_id`),
  KEY `FK_qn63hwwulsnmrsx340myg3kom` (`operator_id`),
  KEY `FK_g79muw1et3fh47q6f5assws20` (`package_id`),
  KEY `FK_n5dpypo53f42920siy06qi8gv` (`student_id`),
  CONSTRAINT `FK_n5dpypo53f42920siy06qi8gv` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  CONSTRAINT `FK_g79muw1et3fh47q6f5assws20` FOREIGN KEY (`package_id`) REFERENCES `package_book` (`id`),
  CONSTRAINT `FK_qn63hwwulsnmrsx340myg3kom` FOREIGN KEY (`operator_id`) REFERENCES `operator` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deliver_to_student
-- ----------------------------
INSERT INTO `deliver_to_student` VALUES ('11', '2018-01-06 23:27:07', '1', '1', '2');

-- ----------------------------
-- Table structure for `deliver_to_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `deliver_to_teacher`;
CREATE TABLE `deliver_to_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `deliver_date` datetime NOT NULL,
  `tname` varchar(255) NOT NULL,
  `operator_id` int(11) NOT NULL,
  `textbook_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2h34qjqcrfoh4xck4t1174qxd` (`operator_id`),
  KEY `FK_ikyln379pb0kjai68b5jn5at8` (`textbook_id`),
  CONSTRAINT `FK_ikyln379pb0kjai68b5jn5at8` FOREIGN KEY (`textbook_id`) REFERENCES `textbook` (`id`),
  CONSTRAINT `FK_2h34qjqcrfoh4xck4t1174qxd` FOREIGN KEY (`operator_id`) REFERENCES `operator` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deliver_to_teacher
-- ----------------------------
INSERT INTO `deliver_to_teacher` VALUES ('11', '11', '2018-01-06 23:27:17', '11', '1', '1');

-- ----------------------------
-- Table structure for `level`
-- ----------------------------
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of level
-- ----------------------------
INSERT INTO `level` VALUES ('1', '本科', '1');

-- ----------------------------
-- Table structure for `major`
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES ('1', '计算机', '1');

-- ----------------------------
-- Table structure for `operator`
-- ----------------------------
DROP TABLE IF EXISTS `operator`;
CREATE TABLE `operator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operator
-- ----------------------------
INSERT INTO `operator` VALUES ('1', '1', '1', '2', '2', '发', '1', '5');

-- ----------------------------
-- Table structure for `package_book`
-- ----------------------------
DROP TABLE IF EXISTS `package_book`;
CREATE TABLE `package_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `academy_year` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `pdescription` varchar(255) DEFAULT NULL,
  `semester` varchar(255) NOT NULL,
  `bji_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `major_id` int(11) NOT NULL,
  `operator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1jn9rk1opvmau38r27oj8acwk` (`bji_id`),
  KEY `FK_jtwy9vbuvowwh6gw3ywrtpn6j` (`category_id`),
  KEY `FK_jw5q15nafaxiplq6duq99jexj` (`level_id`),
  KEY `FK_1xkwrix5ewai4lqfcrc77v0cm` (`major_id`),
  KEY `FK_94u75il5rs8wl5qw5f5ifvxnd` (`operator_id`),
  CONSTRAINT `FK_94u75il5rs8wl5qw5f5ifvxnd` FOREIGN KEY (`operator_id`) REFERENCES `operator` (`id`),
  CONSTRAINT `FK_1jn9rk1opvmau38r27oj8acwk` FOREIGN KEY (`bji_id`) REFERENCES `bji` (`id`),
  CONSTRAINT `FK_1xkwrix5ewai4lqfcrc77v0cm` FOREIGN KEY (`major_id`) REFERENCES `major` (`id`),
  CONSTRAINT `FK_jtwy9vbuvowwh6gw3ywrtpn6j` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_jw5q15nafaxiplq6duq99jexj` FOREIGN KEY (`level_id`) REFERENCES `level` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of package_book
-- ----------------------------
INSERT INTO `package_book` VALUES ('1', '2001-2002', '2015级', '必修', '第一学期', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `package_bookinf`
-- ----------------------------
DROP TABLE IF EXISTS `package_bookinf`;
CREATE TABLE `package_bookinf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_book_id` int(11) NOT NULL,
  `textbook_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_jof80nmy0quw3twpd01h5m8xq` (`package_book_id`),
  KEY `FK_nrpu2d52ag0l2ii89r9efte6u` (`textbook_id`),
  CONSTRAINT `FK_nrpu2d52ag0l2ii89r9efte6u` FOREIGN KEY (`textbook_id`) REFERENCES `textbook` (`id`),
  CONSTRAINT `FK_jof80nmy0quw3twpd01h5m8xq` FOREIGN KEY (`package_book_id`) REFERENCES `package_book` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of package_bookinf
-- ----------------------------
INSERT INTO `package_bookinf` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for `payment`
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_date` datetime NOT NULL,
  `station` varchar(255) NOT NULL,
  `aId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ocl7me9mutw5n77hiv2wm8jm3` (`aId`),
  CONSTRAINT `FK_ocl7me9mutw5n77hiv2wm8jm3` FOREIGN KEY (`aId`) REFERENCES `operator` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO `payment` VALUES ('1', '2017-12-14 16:33:14', '1', '1');

-- ----------------------------
-- Table structure for `station`
-- ----------------------------
DROP TABLE IF EXISTS `station`;
CREATE TABLE `station` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `contactMan` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `tel` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of station
-- ----------------------------
INSERT INTO `station` VALUES ('1', '1', '1', '11', '1', '1');
INSERT INTO `station` VALUES ('2', '2', '2', '泰安函授站', '2', '2');

-- ----------------------------
-- Table structure for `stock`
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `cell_id` int(11) NOT NULL,
  `textbook_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fax1tlh00vom5mvsj36ekkyvj` (`cell_id`),
  KEY `FK_2g2un6rl1buah0jdgc2paupp` (`textbook_id`),
  CONSTRAINT `FK_2g2un6rl1buah0jdgc2paupp` FOREIGN KEY (`textbook_id`) REFERENCES `textbook` (`id`),
  CONSTRAINT `FK_fax1tlh00vom5mvsj36ekkyvj` FOREIGN KEY (`cell_id`) REFERENCES `cell` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stock
-- ----------------------------
INSERT INTO `stock` VALUES ('1', '1', '1', '1');

-- ----------------------------
-- Table structure for `stockcheck`
-- ----------------------------
DROP TABLE IF EXISTS `stockcheck`;
CREATE TABLE `stockcheck` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` int(11) NOT NULL,
  `check_date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `cell_id` int(11) NOT NULL,
  `operator_id` int(11) NOT NULL,
  `textbook_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ewys95mialh32bx6kds7ov2gy` (`cell_id`),
  KEY `FK_elv950s7qdw3rmia37y92saa4` (`operator_id`),
  KEY `FK_dm8rssxrwbdpvht1nktkivy7q` (`textbook_id`),
  CONSTRAINT `FK_dm8rssxrwbdpvht1nktkivy7q` FOREIGN KEY (`textbook_id`) REFERENCES `textbook` (`id`),
  CONSTRAINT `FK_elv950s7qdw3rmia37y92saa4` FOREIGN KEY (`operator_id`) REFERENCES `operator` (`id`),
  CONSTRAINT `FK_ewys95mialh32bx6kds7ov2gy` FOREIGN KEY (`cell_id`) REFERENCES `cell` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stockcheck
-- ----------------------------
INSERT INTO `stockcheck` VALUES ('1', '1', '2017-12-30', '1', '1', '1', '1', '1');
INSERT INTO `stockcheck` VALUES ('2', '22', '2017-12-30', '1', '方法', '1', '1', '1');
INSERT INTO `stockcheck` VALUES ('3', '66', '2017-12-30', '1', '', '1', '1', '1');
INSERT INTO `stockcheck` VALUES ('4', '22', '2018-01-06', '1', '44', '1', '1', '1');

-- ----------------------------
-- Table structure for `stockmove`
-- ----------------------------
DROP TABLE IF EXISTS `stockmove`;
CREATE TABLE `stockmove` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `move_date` datetime NOT NULL,
  `remark` varchar(255) NOT NULL,
  `from_cell_id` int(11) NOT NULL,
  `operator_id` int(11) NOT NULL,
  `textbook_id` int(11) NOT NULL,
  `to_cell_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ar7gdalqfprw37uaqywirxqli` (`from_cell_id`),
  KEY `FK_cw4upw6c8wmeilvy090x1bnfm` (`operator_id`),
  KEY `FK_nx0l882i066vldgfj5930ew7k` (`textbook_id`),
  KEY `FK_ppwti17whykix68xd4jw71ksm` (`to_cell_id`),
  CONSTRAINT `FK_ppwti17whykix68xd4jw71ksm` FOREIGN KEY (`to_cell_id`) REFERENCES `cell` (`id`),
  CONSTRAINT `FK_ar7gdalqfprw37uaqywirxqli` FOREIGN KEY (`from_cell_id`) REFERENCES `cell` (`id`),
  CONSTRAINT `FK_cw4upw6c8wmeilvy090x1bnfm` FOREIGN KEY (`operator_id`) REFERENCES `operator` (`id`),
  CONSTRAINT `FK_nx0l882i066vldgfj5930ew7k` FOREIGN KEY (`textbook_id`) REFERENCES `textbook` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stockmove
-- ----------------------------
INSERT INTO `stockmove` VALUES ('1', '1', '2017-12-13 16:36:48', '1', '1', '1', '1', '2');
INSERT INTO `stockmove` VALUES ('2', '1', '2018-01-01 15:14:29', '1', '1', '1', '1', '2');

-- ----------------------------
-- Table structure for `stockreceive`
-- ----------------------------
DROP TABLE IF EXISTS `stockreceive`;
CREATE TABLE `stockreceive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `receive_date` datetime NOT NULL,
  `remark` varchar(255) NOT NULL,
  `operator_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `textbook_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9o9boxhcqt7ay2ik5nhcdkkuq` (`operator_id`),
  KEY `FK_8d5gar5enww2jo8t9efanrkk5` (`supplier_id`),
  KEY `FK_fh7y11kgai2im12ca2529sde7` (`textbook_id`),
  CONSTRAINT `FK_fh7y11kgai2im12ca2529sde7` FOREIGN KEY (`textbook_id`) REFERENCES `textbook` (`id`),
  CONSTRAINT `FK_8d5gar5enww2jo8t9efanrkk5` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`),
  CONSTRAINT `FK_9o9boxhcqt7ay2ik5nhcdkkuq` FOREIGN KEY (`operator_id`) REFERENCES `operator` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stockreceive
-- ----------------------------
INSERT INTO `stockreceive` VALUES ('1', '1', '2017-12-15 17:26:18', '1', '1', '1', '1');
INSERT INTO `stockreceive` VALUES ('5', '1', '2018-01-06 21:16:58', '了', '1', '1', '1');

-- ----------------------------
-- Table structure for `stock_payment`
-- ----------------------------
DROP TABLE IF EXISTS `stock_payment`;
CREATE TABLE `stock_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `payment` int(11) NOT NULL,
  `receive_date` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `textBook_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hnow4dyp5xuqc6oupu9hwwmi` (`supplier_id`),
  KEY `FK_p70ebgx6blq90bx43of7iysc1` (`textBook_id`),
  CONSTRAINT `FK_p70ebgx6blq90bx43of7iysc1` FOREIGN KEY (`textBook_id`) REFERENCES `textbook` (`id`),
  CONSTRAINT `FK_hnow4dyp5xuqc6oupu9hwwmi` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stock_payment
-- ----------------------------
INSERT INTO `stock_payment` VALUES ('1', '1', '1', '2017-12-30 16:33:41', '1', '1', '1');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `birthdate` varchar(255) NOT NULL,
  `nativeplace` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `bji_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_euufugm6yaqukja12l0lbd0l7` (`bji_id`),
  CONSTRAINT `FK_euufugm6yaqukja12l0lbd0l7` FOREIGN KEY (`bji_id`) REFERENCES `bji` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `student` VALUES ('2', '2', '2', '2', '2', '2', '2', '2', '1');

-- ----------------------------
-- Table structure for `supplier`
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `contactMan` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `tel` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('1', '1', '1', '1', '图书馆', '1', '1');
INSERT INTO `supplier` VALUES ('3', '1', '1', '1', '1', '', '1');

-- ----------------------------
-- Table structure for `textbook`
-- ----------------------------
DROP TABLE IF EXISTS `textbook`;
CREATE TABLE `textbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `publish` varchar(255) DEFAULT NULL,
  `publishdate` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `cell_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9dre0w7fm5ukqyut0n80coxv3` (`cell_id`),
  KEY `FK_mduo21y6fielddwo6om0be99o` (`supplier_id`),
  CONSTRAINT `FK_mduo21y6fielddwo6om0be99o` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`),
  CONSTRAINT `FK_9dre0w7fm5ukqyut0n80coxv3` FOREIGN KEY (`cell_id`) REFERENCES `cell` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of textbook
-- ----------------------------
INSERT INTO `textbook` VALUES ('1', '1', '1', '1', '1', '1', '1', '2017-12-30 16:25:20', '1', '1', '1', '1');
