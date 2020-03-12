/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : bookstore0612

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-03-12 11:15:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `sales` int(10) DEFAULT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  `stock` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('1', '解忧杂货店', '东野圭吾', '27.20', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('2', '边城', '沈从文', '23.00', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('3', '中国哲学史', '冯友兰', '44.50', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('4', '忽然七日', ' 劳伦', '19.33', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('5', '苏东坡传', '林语堂', '19.30', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('6', '百年孤独', '马尔克斯', '29.50', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('7', '扶桑', '严歌苓', '19.80', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('8', '给孩子的诗', '北岛', '22.20', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('9', '为奴十二年', '所罗门', '16.50', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('10', '平凡的世界', '路遥', '55.00', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('11', '悟空传', '今何在', '14.00', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('12', '硬派健身', '斌卡', '31.20', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('13', '从晚清到民国', '唐德刚', '39.90', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('14', '三体', '刘慈欣', '56.50', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('15', '看见', '柴静', '19.50', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('16', '活着', '余华', '11.00', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('17', '小王子', '安托万', '19.20', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('18', '我们仨', '杨绛', '11.30', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('19', '生命不息,折腾不止', '罗永浩', '25.20', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('20', '皮囊', '蔡崇达', '23.90', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('21', '恰到好处的幸福', '毕淑敏', '16.40', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('22', '大数据预测', '埃里克', '37.20', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('23', '人月神话', '布鲁克斯', '55.90', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('24', 'C语言入门经典', '霍尔顿', '45.00', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('25', '数学之美', '吴军', '29.90', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('26', 'Java编程思想', '埃史尔', '70.50', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('27', '设计模式之禅', '秦小波', '20.20', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('28', '图解机器学习', '杉山将', '33.80', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('29', '艾伦图灵传', '安德鲁', '47.20', '100', 'static/img/default.jpg', '100');
INSERT INTO `books` VALUES ('30', '教父', '马里奥普佐', '29.00', '100', 'static/img/default.jpg', '100');

-- ----------------------------
-- Table structure for carts
-- ----------------------------
DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts` (
  `id` varchar(100) NOT NULL,
  `total_count` int(11) NOT NULL,
  `total_amount` double(11,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carts
-- ----------------------------
INSERT INTO `carts` VALUES ('7053a7f5-b060-4d48-6e9c-99016b9c7636', '1', '23.00', '1');

-- ----------------------------
-- Table structure for cart_itmes
-- ----------------------------
DROP TABLE IF EXISTS `cart_itmes`;
CREATE TABLE `cart_itmes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `COUNT` int(11) NOT NULL,
  `amount` double(11,2) NOT NULL,
  `book_id` int(11) NOT NULL,
  `cart_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `cart_id` (`cart_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart_itmes
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(100) NOT NULL,
  `create_time` datetime NOT NULL,
  `total_count` int(11) NOT NULL,
  `total_amount` double(11,2) NOT NULL,
  `state` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('9b898db7-3b57-47aa-60fa-1b57d1e2e855', '2020-03-12 11:09:13', '1', '44.50', '0', '1');
INSERT INTO `orders` VALUES ('db1f489e-dc36-441c-4afd-ea3b903f8c7e', '2020-03-12 11:09:17', '1', '44.50', '0', '1');

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `COUNT` int(11) NOT NULL,
  `amount` double(11,2) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `price` double(11,2) NOT NULL,
  `img_path` varchar(100) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_items
-- ----------------------------

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `session_id` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('3c9a07ea-bf72-4c90-5b40-cfdddc908531', 'admin', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '123abc', '123456@qq.com');
