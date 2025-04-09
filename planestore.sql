/*
Navicat MySQL Data Transfer

Source Server         : Distance
Source Server Version : 50718
Source Host           : 140.143.181.108:10028
Source Database       : planestore

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2022-08-26 21:31:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1660478157398 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='地址';

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '2021-03-13 12:50:22', '1', '宇宙银河系金星1号', '金某', '13823888881', '是');
INSERT INTO `address` VALUES ('2', '2021-03-13 12:50:22', '2', '宇宙银河系木星1号', '木某', '13823888882', '是');
INSERT INTO `address` VALUES ('3', '2021-03-13 12:50:22', '3', '宇宙银河系水星1号', '水某', '13823888883', '是');
INSERT INTO `address` VALUES ('4', '2021-03-13 12:50:22', '4', '宇宙银河系火星1号', '火某', '13823888884', '是');
INSERT INTO `address` VALUES ('5', '2021-03-13 12:50:22', '5', '宇宙银河系土星1号', '土某', '13823888885', '是');
INSERT INTO `address` VALUES ('6', '2021-03-13 12:50:22', '6', '宇宙银河系月球1号', '月某', '13823888886', '是');
INSERT INTO `address` VALUES ('1615613063515', '2021-03-13 13:24:22', '1615613021987', '广东省梅州市梅江区江南街道白马三巷作新小学', '陈一', '12312312345', '是');
INSERT INTO `address` VALUES ('1660355560102', '2022-08-13 09:52:03', '1660355432432', '马家庄', '黄飞鸿', '18112341234', '是');
INSERT INTO `address` VALUES ('1660368431629', '2022-08-13 13:26:35', '1660368366242', '家源花都', '刘先生', '15171234123', '是');
INSERT INTO `address` VALUES ('1660478157397', '2022-08-14 19:55:22', '1660478058321', '马集镇', '叶子', '15512341234', '是');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '乐器表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '乐器id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '乐器名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1661520455970 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='购物车表';

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1635866049734', '2021-11-02 23:14:09', 'shangpinxinxi', '11', '32', '乐器名称2', 'http://localhost:8080/shoestore/upload/1615612601804.jpg', '1', '99.9', '0');
INSERT INTO `cart` VALUES ('1636120995852', '2021-11-05 22:03:15', 'shangpinxinxi', '1615613021987', '32', '乐器名称2', 'http://localhost:8080/shoestore/upload/1615612601804.jpg', '1', '99.9', '0');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1660639847644 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='在线客服';

-- ----------------------------
-- Records of chat
-- ----------------------------

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'http://localhost:8080/planestore/upload/1661508793672.jpg');
INSERT INTO `config` VALUES ('2', 'picture2', 'http://localhost:8080/planestore/upload/1661508806398.jpg');
INSERT INTO `config` VALUES ('3', 'picture3', 'http://localhost:8080/planestore/upload/1661508819550.jpg');
INSERT INTO `config` VALUES ('6', 'homepage', null);
INSERT INTO `config` VALUES ('8', 'picture4', 'http://localhost:8080/planestore/upload/1661508833375.jpg');

-- ----------------------------
-- Table structure for dingdanpingjia
-- ----------------------------
DROP TABLE IF EXISTS `dingdanpingjia`;
CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '乐器名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '乐器分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1615613251030 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单评价';

-- ----------------------------
-- Records of dingdanpingjia
-- ----------------------------

-- ----------------------------
-- Table structure for discussshangpinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussshangpinxinxi`;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1660382706496 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='乐器信息评论表';

-- ----------------------------
-- Records of discussshangpinxinxi
-- ----------------------------

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1615612973190 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='乐器资讯';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('101', '2021-03-13 12:50:22', '优惠大放送', '简介1', 'http://localhost:8080/planestore/upload/1660364072404.png', '<p>内容1</p>');
INSERT INTO `news` VALUES ('102', '2021-03-13 12:50:22', '最省优惠券来袭', '简介2', 'http://localhost:8080/planestore/upload/1660364153619.png', '<p>内容2</p>');
INSERT INTO `news` VALUES ('103', '2021-03-13 12:50:22', '优惠享不停', '简介3', 'http://localhost:8080/planestore/upload/1660364167718.png', '<p>内容3</p>');
INSERT INTO `news` VALUES ('104', '2021-03-13 12:50:22', '充100减50', '简介4', 'http://localhost:8080/planestore/upload/1660364182559.png', '<p>内容4</p>');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '乐器表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '乐器id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '乐器名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '乐器图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `orderid` (`orderid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1661520468678 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单';

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1661520468677', '2022-08-26 21:27:14', '202282621274783729347', 'shangpinxinxi', '1660355432432', '32', '波音799', 'http://localhost:8080/planestore/upload/1661513953771.png', '1', '199', '199', '199', '199', '1', '已发货', '马家庄');

-- ----------------------------
-- Table structure for shangpinfenlei
-- ----------------------------
DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '乐器分类',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1661508924422 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='乐器分类';

-- ----------------------------
-- Records of shangpinfenlei
-- ----------------------------
INSERT INTO `shangpinfenlei` VALUES ('21', '2021-03-13 12:50:22', '头等舱');
INSERT INTO `shangpinfenlei` VALUES ('22', '2021-03-13 12:50:22', '商务舱');
INSERT INTO `shangpinfenlei` VALUES ('1661508924421', '2022-08-26 18:14:49', '经济舱');

-- ----------------------------
-- Table structure for shangpinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '乐器名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '乐器分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shangpinxiangqing` longtext COMMENT '乐器详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `startdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1615612927495 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='乐器信息';

-- ----------------------------
-- Records of shangpinxinxi
-- ----------------------------
INSERT INTO `shangpinxinxi` VALUES ('31', '2021-03-13 12:50:22', '波音765', '商务舱', 'http://localhost:8080/planestore/upload/1661513617717.png', '北京', '上海', '<p>波音，即<em>波音</em>公司，<em>世界上最大的民用和军用飞机制造商之一</em>。波音公司设计并制造旋翼飞机、电子和防御系统、导弹、卫星、发射装置、以及先进的信息和通讯系统。</p>', '2022-08-26 21:29:29', '79', '254', '2022-08-26 08:10');
INSERT INTO `shangpinxinxi` VALUES ('32', '2021-03-13 12:50:22', '波音799', '商务舱', 'http://localhost:8080/planestore/upload/1661513953771.png', '广州', '深圳', '<p>波音，即<em>波音</em>公司，<em>世界上最大的民用和军用飞机制造商之一</em>。波音公司设计并制造旋翼飞机、电子和防御系统、导弹、卫星、发射装置、以及先进的信息和通讯系统。</p>', '2022-08-26 21:31:36', '94', '199', '2022-08-27 08:10');
INSERT INTO `shangpinxinxi` VALUES ('33', '2021-03-13 12:50:22', '波音393', '头等舱', 'http://localhost:8080/planestore/upload/1661514051219.png', '武汉', '杭州', '<p>波音，即<em>波音</em>公司，<em>世界上最大的民用和军用飞机制造商之一</em>。波音公司设计并制造旋翼飞机、电子和防御系统、导弹、卫星、发射装置、以及先进的信息和通讯系统。</p>', '2022-08-26 20:11:40', '71', '199', '2022-08-28 08:10');
INSERT INTO `shangpinxinxi` VALUES ('34', '2021-03-13 12:50:22', '波音356', '头等舱', 'http://localhost:8080/planestore/upload/1661514170490.png', '上海', '武汉', '<p>波音，即<em>波音</em>公司，<em>世界上最大的民用和军用飞机制造商之一</em>。波音公司设计并制造旋翼飞机、电子和防御系统、导弹、卫星、发射装置、以及先进的信息和通讯系统。</p>', '2022-08-26 20:03:36', '48', '199', '2022-08-29 08:10');
INSERT INTO `shangpinxinxi` VALUES ('35', '2021-03-13 12:50:22', '波音111', '经济舱', 'http://localhost:8080/planestore/upload/1661514224920.png', '广州', '北京', '<p>波音，即<em>波音</em>公司，<em>世界上最大的民用和军用飞机制造商之一</em>。波音公司设计并制造旋翼飞机、电子和防御系统、导弹、卫星、发射装置、以及先进的信息和通讯系统。</p>', '2022-08-26 21:25:00', '116', '299', '2022-09-01 08:10');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1661520452022 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('4', '1', 'admin', 'users', '管理员', '40natesbg3lp8zo0yf848650o8igui4q', '2022-08-12 17:43:24', '2022-08-26 22:28:30');
INSERT INTO `token` VALUES ('5', '11', '用户1', 'yonghu', '用户', 'q1oo0mktdi802ncxrl1pq9ws3261djno', '2022-08-12 21:03:48', '2022-08-13 10:48:08');
INSERT INTO `token` VALUES ('6', '1660355432432', 'cxx', 'yonghu', '用户', 'ezj987latkz2mtu2l8n85vyo8csldujq', '2022-08-13 09:50:02', '2022-08-26 22:31:35');
INSERT INTO `token` VALUES ('7', '1660368366242', 'liufei', 'yonghu', '用户', 'sf4vfd6qq3plegwyd97t1pgrxzle0om2', '2022-08-13 13:25:36', '2022-08-13 14:26:12');
INSERT INTO `token` VALUES ('8', '1660478058321', 'xiaoye', 'yonghu', '用户', '03odqivyupu6i30e6qefjv4so04cu7yb', '2022-08-14 19:53:48', '2022-08-14 20:54:23');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '123456', '管理员', '2021-03-13 12:50:22');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `yonghuming` (`yonghuming`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1660478058322 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1660355432432', '2022-08-13 09:49:57', 'cxx', '123456', '陈晓晓', '女', 'http://localhost:8080/planestore/upload/1661048416361.jpg', '15512341234', '10968');
INSERT INTO `yonghu` VALUES ('1660368366242', '2022-08-13 13:25:31', 'liufei', '123456', '刘飞', null, 'http://localhost:8080/planestore/upload/1661048431254.jpg', '15588887777', '9996');
INSERT INTO `yonghu` VALUES ('1660478058321', '2022-08-14 19:53:43', 'xiaoye', '123456', '叶子', null, 'http://localhost:8080/planestore/upload/1661048442007.png', '15512341324', '9701');
