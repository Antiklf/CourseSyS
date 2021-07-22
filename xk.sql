/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : xk

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2021-06-19 10:58:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminNo` char(8) NOT NULL,
  `adminName` char(8) NOT NULL,
  `Pwd` char(170) NOT NULL,
  `que` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `answer` char(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`adminNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('00000000', 'admin', 'a642a77abd7d4f51bf9226ceaf891fcbb5b299b8', '你家小狗的名字', '二狗子');
INSERT INTO `admin` VALUES ('00000001', 'hey', '7c222fb2927d828af22f592134e8932480637c0d', null, null);

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `ClassNo` char(8) NOT NULL,
  `DepartNo` char(2) NOT NULL,
  `ClassName` char(20) NOT NULL,
  PRIMARY KEY (`ClassNo`),
  KEY `DepartNo` (`DepartNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('181', '01', '信计1班');
INSERT INTO `class` VALUES ('182', '01', '精算2班');
INSERT INTO `class` VALUES ('183', '01', '数学3班');
INSERT INTO `class` VALUES ('184', '02', '英语1班');
INSERT INTO `class` VALUES ('185', '02', '口译2班');
INSERT INTO `class` VALUES ('186', '02', '商英3班');
INSERT INTO `class` VALUES ('187', '03', '土木1班');
INSERT INTO `class` VALUES ('188', '03', '土木2班');
INSERT INTO `class` VALUES ('189', '04', '软工1班');
INSERT INTO `class` VALUES ('190', '04', '网安2班');
INSERT INTO `class` VALUES ('191', '05', '机械1班');
INSERT INTO `class` VALUES ('192', '05', '自动化2班');
INSERT INTO `class` VALUES ('193', '06', '化学1班');
INSERT INTO `class` VALUES ('194', '07', '统计1班');
INSERT INTO `class` VALUES ('195', '08', '汉语1班');
INSERT INTO `class` VALUES ('196', '08', '文学2班');
INSERT INTO `class` VALUES ('197', '09', '体育1班');
INSERT INTO `class` VALUES ('198', '09', '体育2班');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `CouNo` char(3) NOT NULL,
  `CouName` char(30) NOT NULL,
  `Kind` char(10) NOT NULL,
  `Credit` decimal(5,0) NOT NULL,
  `Teacher` char(20) NOT NULL,
  `DepartNo` char(2) NOT NULL,
  `time1` tinyint(2) NOT NULL DEFAULT '0',
  `time2` tinyint(2) DEFAULT '0',
  `time3` tinyint(2) DEFAULT '0',
  `LimitNum` decimal(5,0) NOT NULL,
  `WillNum` decimal(5,0) NOT NULL,
  `ChooseNum` decimal(5,0) NOT NULL,
  `Classroom` varchar(20) NOT NULL,
  PRIMARY KEY (`CouNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('001', '数据库技术与应用', '工程技术', '3', '陈书华', '01', '1', '0', '0', '100', '0', '0', '理南105');
INSERT INTO `course` VALUES ('002', 'JAVA技术与应用', '工程技术', '3', '许贵宜', '01', '5', '7', '0', '50', '0', '0', '理南403');
INSERT INTO `course` VALUES ('003', '网络信息检索原理与技术', '信息技术', '2', '蔡慧娟', '01', '7', '4', '23', '50', '0', '0', '理北111');
INSERT INTO `course` VALUES ('004', 'Linux操作系统', '信息技术', '2', '陈书华', '01', '17', '9', '11', '30', '0', '0', '理北306');
INSERT INTO `course` VALUES ('005', 'Premiere6.0影视制作', '信息技术', '2', '刘育冰', '01', '7', '5', '2', '40', '0', '0', '理北403');
INSERT INTO `course` VALUES ('007', 'Delphi初级程序员', '信息技术', '2', '陈书华', '01', '3', '6', '24', '60', '1', '0', '理南525');
INSERT INTO `course` VALUES ('008', 'ASP.NET应用', '信息技术', '3', '黄慧玲', '01', '15', '0', '0', '110', '0', '0', '理学314');
INSERT INTO `course` VALUES ('009', '水资源利用管理与保护', '工程技术', '2', '王淑勇', '01', '2', '0', '0', '90', '1', '0', '工程南527');
INSERT INTO `course` VALUES ('010', '中级电工理论2', '工程技术', '3', '吴亦扬', '01', '23', '0', '0', '70', '0', '0', '工程南316');
INSERT INTO `course` VALUES ('012', '智能建筑', '工程技术', '2', '吴佳书', '01', '7', '0', '0', '80', '0', '0', '工程北123');
INSERT INTO `course` VALUES ('013', '房地产漫谈', '人文', '2', '赖韵英', '03', '9', '0', '0', '130', '0', '0', '工程北442');
INSERT INTO `course` VALUES ('014', '科技与探索', '人文', '2', '杜定鸿', '03', '22', '0', '0', '120', '0', '0', '文新213');
INSERT INTO `course` VALUES ('015', '民俗风情旅游', '管理', '2', '王淑梦', '03', '2', '0', '0', '20', '0', '0', '文新316');
INSERT INTO `course` VALUES ('016', '旅行社经营管理', '管理', '2', '吴伟侑', '03', '22', '0', '0', '20', '0', '0', '文新512');
INSERT INTO `course` VALUES ('017', '世界旅游', '人文', '2', '萧芳仪', '03', '9', '0', '0', '100', '0', '0', '文清230');
INSERT INTO `course` VALUES ('018', '中餐菜肴制作', '人文', '2', '黄宜君', '04', '20', '0', '0', '10', '0', '0', '文逸227');
INSERT INTO `course` VALUES ('019', '电子出版概论', '工程技术', '2', '罗智钧', '04', '18', '0', '0', '40', '0', '0', '理南615');
INSERT INTO `course` VALUES ('020', 'java', '信息技术', '1', '刘淑娟', '04', '1', '2', '3', '30', '0', '0', '理北111');
INSERT INTO `course` VALUES ('021', '网络安全', '信息技术', '3', '李慈泉', '04', '7', '19', '0', '50', '1', '0', '文新216');
INSERT INTO `course` VALUES ('022', 'Web安全', '信息技术', '2', '丁容定', '04', '12', '16', '0', '50', '1', '0', '文新217');
INSERT INTO `course` VALUES ('023', '通信工程', '信息技术', '2', '吴建豪', '04', '12', '19', '0', '55', '0', '0', '文新404');
INSERT INTO `course` VALUES ('024', '计算机网络', '信息技术', '5', '潘于恭', '04', '7', '17', '0', '51', '0', '0', '理科南303');
INSERT INTO `course` VALUES ('025', '数学分析', '信息技术', '2', '赖怡伶', '04', '2', '0', '0', '15', '1', '0', '理科南302');
INSERT INTO `course` VALUES ('026', '高等数学', '信息技术', '3', '詹佳颖', '04', '7', '0', '13', '15', '0', '0', '理科南202');
INSERT INTO `course` VALUES ('027', 'web安全', '信息技术', '5', '傅姿蓉', '04', '22', '11', '0', '25', '0', '0', '文俊东210');
INSERT INTO `course` VALUES ('028', '数据结构', '信息技术', '2', '沈洁铭', '04', '11', '24', '0', '24', '0', '0', '文新210');
INSERT INTO `course` VALUES ('030', '工程材料', '机械制造技术', '2', '蔡文雯', '05', '19', '0', '0', '55', '0', '0', '文新222');
INSERT INTO `course` VALUES ('031', '机械制图', '机械制造技术', '2', '王凯婷', '05', '13', '25', '0', '22', '0', '0', '文清302');
INSERT INTO `course` VALUES ('032', '化学与生活', '化工技术', '2', '吴佩琪', '06', '12', '16', '0', '33', '0', '0', '文新304');
INSERT INTO `course` VALUES ('033', '概率论', '经济统计', '2', '张昆元', '07', '15', '0', '0', '22', '0', '0', '文新101');
INSERT INTO `course` VALUES ('034', '人类进化史', '人文', '2', '王彦儒', '08', '8', '4', '0', '66', '0', '0', '文新601');
INSERT INTO `course` VALUES ('035', '数据结构', '信息技术', '3', '黄慧玲', '01', '13', '20', '0', '50', '0', '0', '理南111');
INSERT INTO `course` VALUES ('036', '离散数学', '信息技术', '2', '陈淑华', '01', '1', '0', '0', '40', '0', '0', '理南111');

-- ----------------------------
-- Table structure for coursetime
-- ----------------------------
DROP TABLE IF EXISTS `coursetime`;
CREATE TABLE `coursetime` (
  `StuNo` varchar(20) NOT NULL,
  `1` char(3) DEFAULT '' COMMENT '周一第一节,0表示没有课',
  `2` char(3) DEFAULT '',
  `3` char(3) DEFAULT '',
  `4` char(3) DEFAULT '',
  `5` char(3) DEFAULT '',
  `6` char(3) DEFAULT '',
  `7` char(3) DEFAULT '',
  `8` char(3) DEFAULT '',
  `9` char(3) DEFAULT '',
  `10` char(3) DEFAULT '',
  `11` char(3) DEFAULT '',
  `12` char(3) DEFAULT '',
  `13` char(3) DEFAULT '',
  `14` char(3) DEFAULT '',
  `15` char(3) DEFAULT '',
  `16` char(3) DEFAULT '',
  `17` char(3) DEFAULT '',
  `18` char(3) DEFAULT '',
  `19` char(3) DEFAULT '',
  `20` char(3) DEFAULT '',
  `21` char(3) DEFAULT '',
  `22` char(3) DEFAULT '',
  `23` char(3) DEFAULT '',
  `24` char(3) DEFAULT '',
  `25` char(3) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of coursetime
-- ----------------------------
INSERT INTO `coursetime` VALUES ('20180001', '001', '009', '007', '', '002', '007', '021', '', '017', '', '', '022', '', '', '', '022', '001', '', '021', '', '', '014', '', '007', '');
INSERT INTO `coursetime` VALUES ('20180002', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180003', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180004', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180005', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180006', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180007', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180008', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180009', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180010', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180011', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180012', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180013', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180014', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180015', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180016', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180017', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180018', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180019', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180020', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180021', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180022', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180023', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180024', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180025', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180026', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180027', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180028', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180029', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180030', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180031', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180032', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180033', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180034', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180035', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180036', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180037', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180038', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180039', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180040', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180041', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180042', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180043', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180044', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180045', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180046', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180047', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180048', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180049', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180050', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180051', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180052', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180053', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180054', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');
INSERT INTO `coursetime` VALUES ('20180055', '001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '001', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `DepartNo` char(2) NOT NULL,
  `DepartName` char(20) NOT NULL,
  PRIMARY KEY (`DepartNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('01', '数学与信息科学学院');
INSERT INTO `department` VALUES ('02', '外国语学院');
INSERT INTO `department` VALUES ('03', '土木建筑学院');
INSERT INTO `department` VALUES ('04', '计算机学院');
INSERT INTO `department` VALUES ('05', '电气与工程学院');
INSERT INTO `department` VALUES ('06', '化学与材料学院');
INSERT INTO `department` VALUES ('07', '经济与统计学院');
INSERT INTO `department` VALUES ('08', '汉语文学学院');
INSERT INTO `department` VALUES ('09', '体育学院');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `StuNo` char(8) CHARACTER SET utf8 NOT NULL,
  `CouNo` char(3) CHARACTER SET utf8mb4 NOT NULL,
  `score` char(5) CHARACTER SET utf8mb4 NOT NULL,
  `flag` int(3) DEFAULT NULL,
  PRIMARY KEY (`StuNo`,`CouNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('20180001', '001', '94', '0');
INSERT INTO `score` VALUES ('20180001', '007', '', '0');
INSERT INTO `score` VALUES ('20180001', '009', '', '0');
INSERT INTO `score` VALUES ('20180001', '017', '', '0');
INSERT INTO `score` VALUES ('20180001', '021', '', '0');
INSERT INTO `score` VALUES ('20180001', '022', '', '0');
INSERT INTO `score` VALUES ('20180001', '025', '', '0');
INSERT INTO `score` VALUES ('20180002', '001', '83', '1');
INSERT INTO `score` VALUES ('20180003', '001', '56', '1');
INSERT INTO `score` VALUES ('20180004', '001', '42', '1');
INSERT INTO `score` VALUES ('20180005', '001', '77', '1');
INSERT INTO `score` VALUES ('20180006', '001', '79', '1');
INSERT INTO `score` VALUES ('20180007', '001', '85', '1');
INSERT INTO `score` VALUES ('20180008', '001', '88', '1');
INSERT INTO `score` VALUES ('20180009', '001', '51', '1');
INSERT INTO `score` VALUES ('20180010', '001', '82', '1');
INSERT INTO `score` VALUES ('20180011', '001', '29', '1');
INSERT INTO `score` VALUES ('20180012', '001', '66', '1');
INSERT INTO `score` VALUES ('20180013', '001', '62', '1');
INSERT INTO `score` VALUES ('20180014', '001', '79', '1');
INSERT INTO `score` VALUES ('20180015', '001', '63', '1');
INSERT INTO `score` VALUES ('20180016', '001', '39', '1');
INSERT INTO `score` VALUES ('20180017', '001', '90', '1');
INSERT INTO `score` VALUES ('20180018', '001', '82', '1');
INSERT INTO `score` VALUES ('20180019', '001', '75', '1');
INSERT INTO `score` VALUES ('20180020', '001', '74', '1');
INSERT INTO `score` VALUES ('20180021', '001', '57', '1');
INSERT INTO `score` VALUES ('20180022', '001', '48', '1');
INSERT INTO `score` VALUES ('20180023', '001', '84', '1');
INSERT INTO `score` VALUES ('20180024', '001', '91', '1');
INSERT INTO `score` VALUES ('20180025', '001', '76', '1');
INSERT INTO `score` VALUES ('20180026', '001', '79', '1');
INSERT INTO `score` VALUES ('20180027', '001', '68', '1');
INSERT INTO `score` VALUES ('20180028', '001', '76', '1');
INSERT INTO `score` VALUES ('20180029', '001', '73', '1');
INSERT INTO `score` VALUES ('20180030', '001', '84', '1');
INSERT INTO `score` VALUES ('20180031', '001', '45', '1');
INSERT INTO `score` VALUES ('20180032', '001', '92', '1');
INSERT INTO `score` VALUES ('20180033', '001', '36', '1');
INSERT INTO `score` VALUES ('20180034', '001', '75', '1');
INSERT INTO `score` VALUES ('20180035', '001', '88', '1');
INSERT INTO `score` VALUES ('20180036', '001', '67', '1');
INSERT INTO `score` VALUES ('20180037', '001', '78', '1');
INSERT INTO `score` VALUES ('20180038', '001', '65', '1');
INSERT INTO `score` VALUES ('20180039', '001', '69', '1');
INSERT INTO `score` VALUES ('20180040', '001', '54', '1');
INSERT INTO `score` VALUES ('20180041', '001', '59', '1');
INSERT INTO `score` VALUES ('20180042', '001', '60', '1');
INSERT INTO `score` VALUES ('20180043', '001', '71', '1');
INSERT INTO `score` VALUES ('20180044', '001', '52', '1');
INSERT INTO `score` VALUES ('20180045', '001', '68', '1');
INSERT INTO `score` VALUES ('20180046', '001', '78', '1');
INSERT INTO `score` VALUES ('20180047', '001', '73', '1');
INSERT INTO `score` VALUES ('20180048', '001', '74', '1');
INSERT INTO `score` VALUES ('20180049', '001', '83', '1');
INSERT INTO `score` VALUES ('20180050', '001', '88', '1');
INSERT INTO `score` VALUES ('20180051', '001', '85', '1');
INSERT INTO `score` VALUES ('20180052', '001', '71', '1');
INSERT INTO `score` VALUES ('20180053', '001', '73', '1');
INSERT INTO `score` VALUES ('20180054', '001', '67', '1');
INSERT INTO `score` VALUES ('20180055', '001', '79', '1');
INSERT INTO `score` VALUES ('20180056', '004', '76', '1');
INSERT INTO `score` VALUES ('20180057', '004', '54', '1');
INSERT INTO `score` VALUES ('20180058', '004', '77', '1');
INSERT INTO `score` VALUES ('20180059', '004', '92', '1');
INSERT INTO `score` VALUES ('20180060', '004', '75', '1');
INSERT INTO `score` VALUES ('20180061', '004', '89', '1');
INSERT INTO `score` VALUES ('20180062', '004', '84', '1');
INSERT INTO `score` VALUES ('20180063', '004', '79', '1');
INSERT INTO `score` VALUES ('20180064', '004', '91', '1');
INSERT INTO `score` VALUES ('20180065', '004', '80', '1');
INSERT INTO `score` VALUES ('20180066', '004', '92', '1');
INSERT INTO `score` VALUES ('20180067', '004', '85', '1');
INSERT INTO `score` VALUES ('20180068', '004', '82', '1');
INSERT INTO `score` VALUES ('20180069', '004', '45', '1');
INSERT INTO `score` VALUES ('20180070', '004', '67', '1');
INSERT INTO `score` VALUES ('20180071', '004', '63', '1');
INSERT INTO `score` VALUES ('20180072', '004', '39', '1');
INSERT INTO `score` VALUES ('20180073', '004', '26', '1');
INSERT INTO `score` VALUES ('20180074', '004', '37', '1');
INSERT INTO `score` VALUES ('20180075', '004', '44', '1');
INSERT INTO `score` VALUES ('20180076', '004', '56', '1');
INSERT INTO `score` VALUES ('20180077', '004', '59', '1');
INSERT INTO `score` VALUES ('20180078', '004', '52', '1');
INSERT INTO `score` VALUES ('20180079', '004', '64', '1');
INSERT INTO `score` VALUES ('20180080', '004', '60', '1');
INSERT INTO `score` VALUES ('20180081', '004', '62', '1');
INSERT INTO `score` VALUES ('20180082', '004', '75', '1');
INSERT INTO `score` VALUES ('20180083', '004', '77', '1');
INSERT INTO `score` VALUES ('20180084', '004', '69', '1');
INSERT INTO `score` VALUES ('20180085', '004', '62', '1');
INSERT INTO `score` VALUES ('20180086', '004', '76', '1');
INSERT INTO `score` VALUES ('20180087', '004', '72', '1');
INSERT INTO `score` VALUES ('20180088', '004', '79', '1');
INSERT INTO `score` VALUES ('20180089', '004', '68', '1');
INSERT INTO `score` VALUES ('20180090', '004', '73', '1');
INSERT INTO `score` VALUES ('20180091', '004', '77', '1');
INSERT INTO `score` VALUES ('20180092', '004', '87', '1');
INSERT INTO `score` VALUES ('20180093', '004', '80', '1');
INSERT INTO `score` VALUES ('20180094', '004', '83', '1');
INSERT INTO `score` VALUES ('20180095', '004', '82', '1');
INSERT INTO `score` VALUES ('20180096', '004', '84', '1');
INSERT INTO `score` VALUES ('20180097', '004', '76', '1');
INSERT INTO `score` VALUES ('20180098', '004', '79', '1');
INSERT INTO `score` VALUES ('20180099', '004', '60', '1');
INSERT INTO `score` VALUES ('20180100', '004', '78', '1');
INSERT INTO `score` VALUES ('20180101', '004', '54', '1');
INSERT INTO `score` VALUES ('20180102', '004', '11', '1');
INSERT INTO `score` VALUES ('20180103', '004', '73', '1');
INSERT INTO `score` VALUES ('20180104', '004', '92', '1');
INSERT INTO `score` VALUES ('20180105', '004', '84', '1');
INSERT INTO `score` VALUES ('20180106', '004', '89', '1');
INSERT INTO `score` VALUES ('20180107', '004', '54', '1');
INSERT INTO `score` VALUES ('20180108', '004', '65', '1');
INSERT INTO `score` VALUES ('20180109', '004', '76', '1');
INSERT INTO `score` VALUES ('20180110', '004', '75', '1');

-- ----------------------------
-- Table structure for stucou
-- ----------------------------
DROP TABLE IF EXISTS `stucou`;
CREATE TABLE `stucou` (
  `StuNo` char(8) NOT NULL,
  `CouNo` char(3) NOT NULL,
  `WillOrder` smallint(6) NOT NULL,
  `State` char(2) NOT NULL,
  `RandomNum` char(50) DEFAULT NULL,
  PRIMARY KEY (`StuNo`,`CouNo`),
  KEY `CouNo` (`CouNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stucou
-- ----------------------------
INSERT INTO `stucou` VALUES ('20180001', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180002', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180003', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180004', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180005', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180006', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180007', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180008', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180009', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180010', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180011', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180012', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180013', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180014', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180015', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180016', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180017', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180018', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180019', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180020', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180021', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180022', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180023', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180024', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180025', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180026', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180027', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180028', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180029', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180030', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180031', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180032', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180033', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180034', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180035', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180036', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180037', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180038', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180039', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180040', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180041', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180042', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180043', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180044', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180045', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180046', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180047', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180048', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180049', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180050', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180051', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180052', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180053', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180054', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180055', '001', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180108', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180107', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180106', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180105', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180104', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180103', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180102', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180101', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180100', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180099', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180098', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180097', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180096', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180095', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180094', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180093', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180092', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180091', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180090', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180089', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180088', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180087', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180086', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180085', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180084', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180083', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180082', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180081', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180080', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180079', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180078', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180077', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180076', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180075', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180074', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180073', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180072', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180071', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180070', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180069', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180068', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180067', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180066', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180065', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180064', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180063', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180062', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180061', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180060', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180059', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180058', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180057', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180001', '014', '4', '报名', null);
INSERT INTO `stucou` VALUES ('20180001', '015', '3', '报名', null);
INSERT INTO `stucou` VALUES ('20180001', '002', '2', '报名', null);
INSERT INTO `stucou` VALUES ('20180109', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180110', '004', '1', '报名', null);
INSERT INTO `stucou` VALUES ('20180001', '017', '5', '报名', null);
INSERT INTO `stucou` VALUES ('20180001', '007', '6', '报名', null);
INSERT INTO `stucou` VALUES ('20180001', '021', '7', '报名', null);
INSERT INTO `stucou` VALUES ('20180001', '025', '8', '报名', null);
INSERT INTO `stucou` VALUES ('20180001', '009', '9', '报名', null);
INSERT INTO `stucou` VALUES ('20180001', '022', '10', '报名', null);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `StuNo` char(8) NOT NULL,
  `ClassNo` char(8) NOT NULL,
  `StuName` char(10) NOT NULL,
  `Pwd` char(254) DEFAULT NULL,
  PRIMARY KEY (`StuNo`),
  KEY `ClassNo` (`ClassNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('20180001', '181', '张吉惟', '356a192b7913b04c54574d18c28d46e6395428ab');
INSERT INTO `student` VALUES ('20180002', '181', '林国瑞', 'da4b9237bacccdf19c0760cab7aec4a8359010b0');
INSERT INTO `student` VALUES ('20180003', '181', '林玫书', '77de68daecd823babbb58edb1c8e14d7106e83bb');
INSERT INTO `student` VALUES ('20180004', '181', '林雅南', '1b6453892473a467d07372d45eb05abc2031647a');
INSERT INTO `student` VALUES ('20180005', '181', '江奕云', 'ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4');
INSERT INTO `student` VALUES ('20180006', '181', '刘柏宏', 'c1dfd96eea8cc2b62785275bca38ac261256e278');
INSERT INTO `student` VALUES ('20180007', '181', '阮建安', '902ba3cda1883801594b6e1b452790cc53948fda');
INSERT INTO `student` VALUES ('20180008', '181', '林子帆', 'fe5dbbcea5ce7e2988b8c69bcfdfde8904aabc1f');
INSERT INTO `student` VALUES ('20180009', '181', '夏志豪', '0ade7c2cf97f75d009975f4d720d1fa6c19f4897');
INSERT INTO `student` VALUES ('20180010', '181', '吉茹定', 'b1d5781111d84f7b3fe45a0852e59758cd7a87e5');
INSERT INTO `student` VALUES ('20180011', '181', '李中冰', '17ba0791499db908433b80f37c5fbc89b870084b');
INSERT INTO `student` VALUES ('20180012', '181', '黄文隆', '7b52009b64fd0a2a49e6d8a939753077792b0554');
INSERT INTO `student` VALUES ('20180013', '181', '谢彦文', 'bd307a3ec329e10a2cff8fb87480823da114f8f4');
INSERT INTO `student` VALUES ('20180014', '181', '傅智翔', 'fa35e192121eabf3dabf9f5ea6abdbcbc107ac3b');
INSERT INTO `student` VALUES ('20180015', '181', '洪振霞', 'f1abd670358e036c31296e66b3b66c382ac00812');
INSERT INTO `student` VALUES ('20180016', '181', '刘姿婷', '1574bddb75c78a6fd2251d61e2993b5146201319');
INSERT INTO `student` VALUES ('20180017', '181', '荣姿康', '0716d9708d321ffb6a00818614779e779925365c');
INSERT INTO `student` VALUES ('20180018', '181', '吕致盈', '9e6a55b6b4563e652a23be9d623ca5055c356940');
INSERT INTO `student` VALUES ('20180019', '181', '方一强', 'b3f0c7f6bb763af1be91d9e74eabfeb199dc1f1f');
INSERT INTO `student` VALUES ('20180020', '181', '黎贵', '91032ad7bbcb6cf72875e8e8207dcfba80173f7c');
INSERT INTO `student` VALUES ('20180021', '181', '郑伊雯', '472b07b9fcf2c2451e8781e944bf5f77cd8457c8');
INSERT INTO `student` VALUES ('20180022', '181', '雷进宝', '12c6fc06c99a462375eeb3f43dfd832b08ca9e17');
INSERT INTO `student` VALUES ('20180023', '181', '吴美隆', 'd435a6cdd786300dff204ee7c2ef942d3e9034e2');
INSERT INTO `student` VALUES ('20180024', '181', '吴心真', '4d134bc072212ace2df385dae143139da74ec0ef');
INSERT INTO `student` VALUES ('20180025', '181', '王美珠', 'f6e1126cedebf23e1463aee73f9df08783640400');
INSERT INTO `student` VALUES ('20180026', '181', '郭芳天', '887309d048beef83ad3eabf2a79a64a389ab1c9f');
INSERT INTO `student` VALUES ('20180027', '181', '李雅惠', 'bc33ea4e26e5e1af1408321416956113a4658763');
INSERT INTO `student` VALUES ('20180028', '181', '陈文婷', '0a57cb53ba59c46fc4b692527a38a87c78d84028');
INSERT INTO `student` VALUES ('20180029', '181', '曹敏侑', '7719a1c782a1ba91c031a682a0a2f8658209adbf');
INSERT INTO `student` VALUES ('20180030', '181', '王依婷', '22d200f8670dbdb3e253a90eee5098477c95c23d');
INSERT INTO `student` VALUES ('20180031', '181', '陈婉璇', '632667547e7cd3e0466547863e1207a8c0c0c549');
INSERT INTO `student` VALUES ('20180032', '181', '吴美玉', 'cb4e5208b4cd87268b208e49452ed6e89a68e0b8');
INSERT INTO `student` VALUES ('20180033', '181', '蔡依婷', 'b6692ea5df920cad691c20319a6fffd7a4a766b8');
INSERT INTO `student` VALUES ('20180034', '181', '郑昌梦', 'f1f836cb4ea6efb2a0b1b99f41ad8b103eff4b59');
INSERT INTO `student` VALUES ('20180035', '181', '林家纶', '972a67c48192728a34979d9a35164c1295401b71');
INSERT INTO `student` VALUES ('20180036', '181', '黄丽昆', 'fc074d501302eb2b93e2554793fcaf50b3bf7291');
INSERT INTO `student` VALUES ('20180037', '181', '李育泉', 'cb7a1d775e800fd1ee4049f7dca9e041eb9ba083');
INSERT INTO `student` VALUES ('20180038', '181', '黄芸欢', '5b384ce32d8cdef02bc3a139d4cac0a22bb029e8');
INSERT INTO `student` VALUES ('20180039', '181', '吴韵如', 'ca3512f4dfa95a03169c5a670a4c91a19b3077b4');
INSERT INTO `student` VALUES ('20180040', '181', '李肇芬', 'af3e133428b9e25c55bc59fe534248e6a0c0f17b');
INSERT INTO `student` VALUES ('20180041', '181', '卢木仲', '761f22b2c1593d0bb87e0b606f990ba4974706de');
INSERT INTO `student` VALUES ('20180042', '181', '李成白', '92cfceb39d57d914ed8b14d0e37643de0797ae56');
INSERT INTO `student` VALUES ('20180043', '181', '方兆玉', '0286dd552c9bea9a69ecb3759e7b94777635514b');
INSERT INTO `student` VALUES ('20180044', '181', '刘翊惠', '98fbc42faedc02492397cb5962ea3a3ffc0a9243');
INSERT INTO `student` VALUES ('20180045', '181', '丁汉臻', 'fb644351560d8296fe6da332236b1f8d61b2828a');
INSERT INTO `student` VALUES ('20180046', '181', '吴佳瑞', 'fe2ef495a1152561572949784c16bf23abb28057');
INSERT INTO `student` VALUES ('20180047', '181', '舒绿', '827bfc458708f0b442009c9c9836f7e4b65557fb');
INSERT INTO `student` VALUES ('20180048', '181', '周白正', '64e095fe763fc62418378753f9402623bea9e227');
INSERT INTO `student` VALUES ('20180049', '181', '张姿妤', '2e01e17467891f7c933dbaa00e1459d23db3fe4f');
INSERT INTO `student` VALUES ('20180050', '181', '张虹伦', 'e1822db470e60d090affd0956d743cb0e7cdf113');
INSERT INTO `student` VALUES ('20180051', '181', '周琼坟', 'b7eb6c689c037217079766fdb77c3bac3e51cb4c');
INSERT INTO `student` VALUES ('20180052', '181', '倪怡芳', 'a9334987ece78b6fe8bf130ef00b74847c1d3da6');
INSERT INTO `student` VALUES ('20180053', '181', '郭贵妃', 'c5b76da3e608d34edb07244cd9b875ee86906328');
INSERT INTO `student` VALUES ('20180054', '181', '杨佩芳', '80e28a51cbc26fa4bd34938c5e593b36146f5e0c');
INSERT INTO `student` VALUES ('20180055', '181', '黄文旺', '8effee409c625e1a2d8f5033631840e6ce1dcb64');
INSERT INTO `student` VALUES ('20180056', '182', '黄盛玫', '54ceb91256e8190e474aa752a6e0650a2df5ba37');
INSERT INTO `student` VALUES ('20180057', '182', '郑丽青', '9109c85a45b703f87f1413a405549a2cea9ab556');
INSERT INTO `student` VALUES ('20180058', '182', '许智云', '667be543b02294b7624119adc3a725473df39885');
INSERT INTO `student` VALUES ('20180059', '182', '张孟涵', '5a5b0f9b7d3f8fc84c3cef8fd8efaaa6c70d75ab');
INSERT INTO `student` VALUES ('20180060', '182', '李小爱', 'e6c3dd630428fd54834172b8fd2735fed9416da4');
INSERT INTO `student` VALUES ('20180061', '182', '王恩龙', '6c1e671f9af5b46d9c1a52067bdf0e53685674f7');
INSERT INTO `student` VALUES ('20180062', '182', '朱政廷', '511a418e72591eb7e33f703f04c3fa16df6c90bd');
INSERT INTO `student` VALUES ('20180063', '182', '邓诗涵', 'a17554a0d2b15a664c0e73900184544f19e70227');
INSERT INTO `student` VALUES ('20180064', '182', '陈政倩', 'c66c65175fecc3103b3b587be9b5b230889c8628');
INSERT INTO `student` VALUES ('20180065', '182', '吴俊伯', '2a459380709e2fe4ac2dae5733c73225ff6cfee1');
INSERT INTO `student` VALUES ('20180066', '182', '阮馨学', '59129aacfb6cebbe2c52f30ef3424209f7252e82');
INSERT INTO `student` VALUES ('20180067', '182', '翁惠珠', '4d89d294cd4ca9f2ca57dc24a53ffb3ef5303122');
INSERT INTO `student` VALUES ('20180068', '182', '吴思翰', 'b4c96d80854dd27e76d8cc9e21960eebda52e962');
INSERT INTO `student` VALUES ('20180069', '182', '林佩玲', 'a72b20062ec2c47ab2ceb97ac1bee818f8b6c6cb');
INSERT INTO `student` VALUES ('20180070', '182', '邓海来', 'b7103ca278a75cad8f7d065acda0c2e80da0b7dc');
INSERT INTO `student` VALUES ('20180071', '182', '陈翊依', 'd02560dd9d7db4467627745bd6701e809ffca6e3');
INSERT INTO `student` VALUES ('20180072', '182', '李建智', 'c097638f92de80ba8d6c696b26e6e601a5f61eb7');
INSERT INTO `student` VALUES ('20180073', '182', '武淑芬', '35e995c107a71caeb833bb3b79f9f54781b33fa1');
INSERT INTO `student` VALUES ('20180074', '182', '金雅琪', '1f1362ea41d1bc65be321c0a378a20159f9a26d0');
INSERT INTO `student` VALUES ('20180075', '182', '赖怡宜', '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7');
INSERT INTO `student` VALUES ('20180076', '182', '黄育霖', 'd54ad009d179ae346683cfc3603979bc99339ef7');
INSERT INTO `student` VALUES ('20180077', '182', '张仪湖', 'd321d6f7ccf98b51540ec9d933f20898af3bd71e');
INSERT INTO `student` VALUES ('20180078', '182', '王俊民', 'eb4ac3033e8ab3591e0fcefa8c26ce3fd36d5a0f');
INSERT INTO `student` VALUES ('20180079', '182', '张诗刚', 'b74f5ee9461495ba5ca4c72a7108a23904c27a05');
INSERT INTO `student` VALUES ('20180080', '182', '林慧颖', 'b888b29826bb53dc531437e723738383d8339b56');
INSERT INTO `student` VALUES ('20180081', '182', '沈俊君', '1d513c0bcbe33b2e7440e5e14d0b22ef95c9d673');
INSERT INTO `student` VALUES ('20180082', '182', '陈淑好', '76546f9a641ede2beab506b96df1688d889e629a');
INSERT INTO `student` VALUES ('20180083', '182', '李姿伶', '7d7116e23efef7292cad5e6f033d9a962708228c');
INSERT INTO `student` VALUES ('20180084', '182', '高咏钰', 'be461a0cd1fda052a69c3fd94f8cf5f6f86afa34');
INSERT INTO `student` VALUES ('20180085', '182', '黄彦宜', '1352246e33277e9d3c9090a434fa72cfa6536ae2');
INSERT INTO `student` VALUES ('20180086', '182', '周孟儒', '3c26dffc8a2e8804dfe2c8a1195cfaa5ef6d0014');
INSERT INTO `student` VALUES ('20180087', '182', '潘欣臻', 'e62d7f1eb43d87c202d2f164ba61297e71be80f4');
INSERT INTO `student` VALUES ('20180088', '182', '李祯韵', 'b37f6ddcefad7e8657837d3177f9ef2462f98acf');
INSERT INTO `student` VALUES ('20180089', '182', '叶洁启', '16b06bd9b738835e2d134fe8d596e9ab0086a985');
INSERT INTO `student` VALUES ('20180090', '182', '梁哲宇', '2d0c8af807ef45ac17cafb2973d866ba8f38caa9');
INSERT INTO `student` VALUES ('20180091', '182', '黄晓萍', '4cd66dfabbd964f8c6c4414b07cdb45dae692e19');
INSERT INTO `student` VALUES ('20180092', '182', '杨雅萍', '8ee51caaa2c2f4ee2e5b4b7ef5a89db7df1068d7');
INSERT INTO `student` VALUES ('20180093', '182', '卢志铭', '08a35293e09f508494096c1c1b3819edb9df50db');
INSERT INTO `student` VALUES ('20180094', '182', '张茂以', '215bb47da8fac3342b858ac3db09b033c6c46e0b');
INSERT INTO `student` VALUES ('20180095', '182', '林婉婷', '8e63fd3e77796b102589b1ba1e4441c7982e4132');
INSERT INTO `student` VALUES ('20180096', '182', '蔡宜芸', '6fb84aed32facd1299ee1e77c8fd2b1a6352669e');
INSERT INTO `student` VALUES ('20180097', '182', '林瑜', '812ed4562d3211363a7b813aa9cd2cf042b63bb2');
INSERT INTO `student` VALUES ('20180098', '182', '黄柏仪', '31bd9b9f5f7b338e41b56183a2f3008b541d7c84');
INSERT INTO `student` VALUES ('20180099', '182', '周逸瑚', '9a79be611e0267e1d943da0737c6c51be67865a0');
INSERT INTO `student` VALUES ('20180100', '182', '夏雅惠', '310b86e0b62b828562fc91c7be5380a992b2786a');
INSERT INTO `student` VALUES ('20180101', '183', '王采骊', 'dbc0f004854457f59fb16ab863a3a1722cef553f');
INSERT INTO `student` VALUES ('20180102', '183', '林孟霖', 'c8306ae139ac98f432932286151dc0ec55580eca');
INSERT INTO `student` VALUES ('20180103', '183', '林竹水', '934385f53d1bd0c1b8493e44d0dfd4c8e88a04bb');
INSERT INTO `student` VALUES ('20180104', '183', '王怡乐', '78a8efcbaaa1a9a30f9f327aa89d0b6acaaffb03');
INSERT INTO `student` VALUES ('20180105', '183', '王爱乐', 'e114c448f4ab8554ad14eff3d66dfeb3965ce8fc');
INSERT INTO `student` VALUES ('20180106', '183', '金佳蓉', '7224f997fc148baa0b7f81c1eda6fcc3fd003db0');
INSERT INTO `student` VALUES ('20180107', '183', '韩健毓', '524e05dc77239f3a15dab766aaa59a9e432efde7');
INSERT INTO `student` VALUES ('20180108', '183', '李士杰', '17503a6b2326f09fbc4e3a7c03874c7333002038');
INSERT INTO `student` VALUES ('20180109', '183', '陈营珍', 'a1422e6a168630cdd214ac5e31ca01ae1bee8d92');
INSERT INTO `student` VALUES ('20180110', '183', '苏姿婷', '5e796e48332af4142b10ca0f86e65d9bfdb05884');
INSERT INTO `student` VALUES ('20180111', '184', '张政霖', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');
INSERT INTO `student` VALUES ('20180112', '184', '李志宏', '601ca99d55f00a2e8e736676b606a4d31d374fdd');
INSERT INTO `student` VALUES ('20180113', '184', '陈素达', 'e993215bfdaa515f6ea00fafc1918f549119f993');
INSERT INTO `student` VALUES ('20180114', '184', '陈虹荣', 'ecb7937db58ec9dea0c47db88463d85e81143032');
INSERT INTO `student` VALUES ('20180115', '184', '何美玲', 'efa6e44dfa0145249be273ecd84a97f534b04920');
INSERT INTO `student` VALUES ('20180116', '184', '李仪琳', '683e725c03a87baaad2623231644e944e537acab');
INSERT INTO `student` VALUES ('20180117', '184', '张俞幸', 'd0e2dbb0bac1917d360aaf52c01a2a4b669e8cdb');
INSERT INTO `student` VALUES ('20180118', '184', '黄秋萍', '12f0de3dc76e067d21ed85125716e02e9f1e69f0');
INSERT INTO `student` VALUES ('20180119', '184', '潘吉维', 'a2e33d344f272e100d4a8efeabc7ae8a60a8ba7a');
INSERT INTO `student` VALUES ('20180120', '184', '陈智筠', '775bc5c30e27f0e562115d136e7f7edbd3cead89');
INSERT INTO `student` VALUES ('20180121', '184', '蔡书玮', '8bd7954c40c1e59a900f71ea3a266732609915b1');
INSERT INTO `student` VALUES ('20180122', '184', '陈信峰', '05a8ea5382b9fd885261bb3eed0527d1d3b07262');
INSERT INTO `student` VALUES ('20180123', '184', '林培伦', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');
INSERT INTO `student` VALUES ('20180124', '184', '查瑜舜', 'f38cfe2e2facbcc742bad63f91ad55637300cb45');
INSERT INTO `student` VALUES ('20180125', '184', '黎慧萱', '0ca9277f91e40054767f69afeb0426711ca0fddd');
INSERT INTO `student` VALUES ('20180126', '184', '郑士易', '114d4eefde1dae3983e7a79f04c72feb9a3a7efd');
INSERT INTO `student` VALUES ('20180127', '184', '陈建豪', '008451a05e1e7aa32c75119df950d405265e0904');
INSERT INTO `student` VALUES ('20180128', '184', '吴怡婷', 'b4182bff4b3cf75f9e54f4990f9bd153c0c2973c');
INSERT INTO `student` VALUES ('20180129', '184', '徐紫富', '8b7471f4ae0bf59f5f0a425068c05d96f4801b9e');
INSERT INTO `student` VALUES ('20180130', '184', '张博海', '2a7541babb57434e5631ffa2b5639e24f8ce84fc');
INSERT INTO `student` VALUES ('20180131', '184', '黎宏儒', 'e794a80eb109162d579df51db6d52e223bb0e9be');
INSERT INTO `student` VALUES ('20180132', '184', '柯乔喜', '91dfde1d6e005e422f64a59776234f1f4c80b5e4');
INSERT INTO `student` VALUES ('20180133', '184', '胡睿纯', 'd30f79cf7fef47bd7a5611719f936539bec0d2e9');
INSERT INTO `student` VALUES ('20180134', '184', '王淑月', '95e815d1541bf6f358cfffbe66ab3af0d0c09d09');
INSERT INTO `student` VALUES ('20180135', '184', '陈百菁', '40f7c01f4189510031adccd9c604a128adaf9b00');
INSERT INTO `student` VALUES ('20180136', '184', '王雅娥', '9e071a3a594a8964cbefe784f8a6afaa94c0de17');
INSERT INTO `student` VALUES ('20180137', '184', '黄佩珊', 'e1a864f0b77f6c89794827a9035355dc8d052622');
INSERT INTO `student` VALUES ('20180138', '184', '李必辰', '56ad4d4deaec98465c419b4a8ea7bfc1ed38c4d9');
INSERT INTO `student` VALUES ('20180139', '184', '吴耀华', 'fa755791d0509bb06ae715a2072de724815ed84d');
INSERT INTO `student` VALUES ('20180140', '184', '彭郁婷', 'c28aca23f1ef3718a464383d925c66842078edaa');
INSERT INTO `student` VALUES ('20180141', '184', '王秀玲', 'c9ca442765657fc90e9e779c34d0d2259d2c3c5b');
INSERT INTO `student` VALUES ('20180142', '184', '谢佳儒', '2a2b47bf21a372f267deccbb420567f3d450b3c0');
INSERT INTO `student` VALUES ('20180143', '184', '罗静綦', 'f47aea8bdcbd1179a1f3d91e6afeeb259488f2d1');
INSERT INTO `student` VALUES ('20180144', '184', '杨舒南', '7320828c9153b2a9848d6bc45d3544236b22fc48');
INSERT INTO `student` VALUES ('20180145', '184', '蔡政琳', '50336bc687eb161ee9fb0ddb8cf2b7e65bad865f');
INSERT INTO `student` VALUES ('20180146', '184', '杨绍瑜', '3fcfb99ec010d4a8ba364f43169465d91ca39ada');
INSERT INTO `student` VALUES ('20180147', '184', '金育木', 'b3c0730cf3f50613e40561e67c871fdb92820cf9');
INSERT INTO `student` VALUES ('20180148', '184', '杨韦成', '536fb6934062440c464ca2eef82b0be8e6b36cc8');
INSERT INTO `student` VALUES ('20180149', '184', '韩宁政', '39dfc9ffd3253c48c9af5dd55c4b3e4b4b5e6229');
INSERT INTO `student` VALUES ('20180150', '184', '蒋廷湖', '13682ac418603aa0966369d46bbf282f562acf47');
INSERT INTO `student` VALUES ('20180151', '184', '毛展霞', 'b16a457a3302d7c1f4563df2ffc96dccf3779af7');
INSERT INTO `student` VALUES ('20180152', '184', '廖婉宏', 'ac2646028f5b8b9bbf7a967f4ac71b8866135211');
INSERT INTO `student` VALUES ('20180153', '184', '黄怡强', 'a6f16ab483da9847d431a822e6c85e144dc54f30');
INSERT INTO `student` VALUES ('20180154', '184', '郭冰宇', '06349be70bd2d5dd98d36b9b8dba0a057500fdac');
INSERT INTO `student` VALUES ('20180155', '184', '黄伟依', '9d8974baddfc0e53300829f37e5fc88b0f5ce61b');
INSERT INTO `student` VALUES ('20180156', '184', '叶元映', '6052521b7625e31d4ee9cc706732484fcf850877');
INSERT INTO `student` VALUES ('20180157', '184', '林智超', '097ccd4f03d962011101c1221009e53461a0993f');
INSERT INTO `student` VALUES ('20180158', '184', '李姿婷', 'a3d12597f93e80f7f6a229cebb1c3e10d4f34ec3');
INSERT INTO `student` VALUES ('20180159', '184', '李莉火', '6b6277afcb65d33525545904e95c2fa240632660');
INSERT INTO `student` VALUES ('20180160', '184', '邱雅要', 'be057d4ca44c10a0fc1dfcffd99cce1490291dc7');
INSERT INTO `student` VALUES ('20180161', '184', '王淑芳', '0159a99ed28b0581890608d24ada9decc4874197');
INSERT INTO `student` VALUES ('20180162', '184', '陈枝盈', 'ae1e7198bc3074ff1b2e9ff520c30bc1898d038e');
INSERT INTO `student` VALUES ('20180163', '184', '高成彦', 'fd93751649ac3ea8f8772ba49c8c1fe068002835');
INSERT INTO `student` VALUES ('20180164', '184', '徐采伶', 'a929eb33e338738d2a91e955ce7623764480253c');
INSERT INTO `student` VALUES ('20180165', '184', '杨大雪', '74cbd2c215c2c13c4b6110ada96de8891b355dda');
INSERT INTO `student` VALUES ('20180166', '184', '林彦韦', '69e56976fc9bee70c1d2eaa85c0c8dea9f722a2f');
INSERT INTO `student` VALUES ('20180167', '184', '李升毓', '708a77db476d737e54b8bf4663fc79b346d696d2');
INSERT INTO `student` VALUES ('20180168', '184', '邱宜瑶', 'f76b2ea6b45eff3bc8e4399145cc17a0601f5c8d');
INSERT INTO `student` VALUES ('20180169', '184', '陈政文', '2659fc519890c924f82b4475ddd71b058178d02b');
INSERT INTO `student` VALUES ('20180170', '184', '李宜豪', '717b2f3d8816830549097908c134e1729c516542');
INSERT INTO `student` VALUES ('20180171', '184', '陈宜宁', '94940e534aedd3f6d9bb77c6322f6641dbb7432a');
INSERT INTO `student` VALUES ('20180172', '184', '陈志宏', 'c1aa04bf421e5b38c3d18933e9994d3f289def65');
INSERT INTO `student` VALUES ('20180173', '184', '阮柔治', '572e20738130fddc7c389f2ab14f4e4b22a97c39');
INSERT INTO `student` VALUES ('20180174', '184', '林乐妹', 'd094700e379f0fb3b543e25c77f8e4b3e068f057');
INSERT INTO `student` VALUES ('20180175', '184', '简健昀', '04f1241ed2b1b531c2c853ce1eeff952cd0f40f3');
INSERT INTO `student` VALUES ('20180176', '184', '廖雅君', '5c8f5ac0b7ad23c110793ad1fcf4d3c8d41344d5');
INSERT INTO `student` VALUES ('20180177', '184', '梁佩芬', '26e7458dc56ab2830fadba7bd2c1aa10e981518d');
INSERT INTO `student` VALUES ('20180178', '184', '苏玮伦', '25293f2761d658cc70c19515861842d712751bdc');
INSERT INTO `student` VALUES ('20180179', '184', '秦娇真', '9e44d2771c052d44058245eda6cb334689ca78cc');
INSERT INTO `student` VALUES ('20180180', '184', '谢佳要', 'ec7f1f65067126f3b2bd1037de8a18d0db2ec84b');
INSERT INTO `student` VALUES ('20180181', '184', '李仁杰', 'aee544ceddfe7ab69a02f82bdf8ce6ea3862ff02');
INSERT INTO `student` VALUES ('20180182', '184', '李佳和', '58f0744907ea8bd8e0f51e568f1536289ceb40a5');
INSERT INTO `student` VALUES ('20180183', '184', '郭贤青', 'dc685e2c3fd7a3a63944383a54aa249ea27f5fdd');
INSERT INTO `student` VALUES ('20180184', '184', '吴怡伶', 'bcf814ab41506290ab1b8158ebda6ee61b4bb579');
INSERT INTO `student` VALUES ('20180185', '184', '陈怡婷', 'cfa2ed2aac6d61f44ca9cba73e1e8946b7cd7d22');
INSERT INTO `student` VALUES ('20180186', '184', '阮晴桦', '87d538ef1c1db71603e60f278446c86470162380');
INSERT INTO `student` VALUES ('20180187', '184', '辛翔坤', 'f67462663a512121ffada791890b558ee8b38773');
INSERT INTO `student` VALUES ('20180188', '184', '林孟富', 'acf1fffc01dc0193aa07d0b1de723c292a2c826d');
INSERT INTO `student` VALUES ('20180189', '184', '刘美玲', 'e54183e2a040e6c09e61eb22d542e3d57074b351');
INSERT INTO `student` VALUES ('20180190', '184', '涂昀琬', '3a2dc677d8e85ac856541744e288d504882feb36');
INSERT INTO `student` VALUES ('20180191', '184', '白凯修', '2fcc820fc1d95b1e8a3a219c7e3689bb8d65042c');
INSERT INTO `student` VALUES ('20180192', '184', '黄蓉芳', '19a448c01aa2e7d55979473b647e282459995b85');
INSERT INTO `student` VALUES ('20180193', '184', '赵吟琪', '14bb99f81147d2705f53a1d75337b2ec3e10d23a');
INSERT INTO `student` VALUES ('20180194', '184', '张裕忠', '2a79f14120945873482b7823caabe2fcde848722');
INSERT INTO `student` VALUES ('20180195', '184', '石春紫', '752ae7bdbb96bf25280b55990570beabf2048ce0');
INSERT INTO `student` VALUES ('20180196', '184', '方美君', '4dea1daedbe9dc1d643b0f0eb8ab57c7d532f771');
INSERT INTO `student` VALUES ('20180197', '184', '潘右博', '61188f24396807ba7ca38919a158766de935852e');
INSERT INTO `student` VALUES ('20180198', '184', '俞星如', 'c837307a9a2ad4d08ca61a4f1bd848ba3d6890fc');
INSERT INTO `student` VALUES ('20180199', '184', '张冠杰', '2952aeca0fe15cf310ede96c437acb94b2b208f1');
INSERT INTO `student` VALUES ('20180200', '184', '钟庭玮', '9f9af029585ba014e07cd3910ca976cf56160616');
INSERT INTO `student` VALUES ('20180201', '184', '叶茜彦', '7f03f3f2febc46f3fa832d98251b0c98f64bc19b');
INSERT INTO `student` VALUES ('20180202', '184', '陈伯薇', '1e7b95c5614637fdcde70eb7f2d109134c95c6bf');
INSERT INTO `student` VALUES ('20180203', '184', '陈昭祥', 'a165fbd61c277745f187eaac7182d9c05d0d1171');
INSERT INTO `student` VALUES ('20180204', '184', '陈伟伦', '1cc641954099c249e0e4ef0402da3fd0364d95f0');
INSERT INTO `student` VALUES ('20180205', '184', '黄雅慧', '5f1cd7c3fb68ae7c679f8c33966610670d32ff1e');
INSERT INTO `student` VALUES ('20180206', '184', '郭子豪', '4afa8f9e90756f0f919a124a1dfbba19be004edc');
INSERT INTO `student` VALUES ('20180207', '184', '黄彦霖', '3be76cc016a8c850661956c5f71d14c621cf6a69');
INSERT INTO `student` VALUES ('20180208', '184', '宋合', 'baab34018148392463ef4c49b5a924409cf5f7b0');
INSERT INTO `student` VALUES ('20180209', '184', '许雅婷', 'acfdd18ea7f4a2ba74132ba977dc207204142994');
INSERT INTO `student` VALUES ('20180210', '184', '王圣如', '135debd4837026bf06c7bfc5d1e0c6a31611af1d');
INSERT INTO `student` VALUES ('20180211', '184', '何伶元', '1b4a364f76e9fa8073516100ed65590c50a6d5e9');
INSERT INTO `student` VALUES ('20180212', '184', '钟伦军', 'e2154fea5da2dd0d1732ff30931723c2973003a0');
INSERT INTO `student` VALUES ('20180213', '184', '蔡佳蓉', '19187dc98dce52fa4c4e8e05b341a9b77a51fd26');
INSERT INTO `student` VALUES ('20180214', '184', '溥康柔', '9a15f42d1c524c306eb91c3df1216db248a8f224');
INSERT INTO `student` VALUES ('20180215', '184', '冯成轩', '828f720439cefaeb3acc7a7babce0a28abaa07a3');
INSERT INTO `student` VALUES ('20180216', '184', '陈嘉惠', '0bad865a02d82f4970687ffe1b80822b76cc0626');
INSERT INTO `student` VALUES ('20180217', '184', '吴惠劭', '49e3d046636e06b2d82ee046db8e6eb9a2e11e16');
INSERT INTO `student` VALUES ('20180218', '184', '谢健铭', '3d5bdf107de596ce77e8ce48a61b585f52bbb61d');
INSERT INTO `student` VALUES ('20180219', '184', '林怡婷', 'c0ba17c23a26ff8c314478bc69f30963a6e4a754');
INSERT INTO `student` VALUES ('20180220', '184', '廖佳蓉', 'f37062d9a65543a46f2ba13299ba77a370a1c4eb');
INSERT INTO `student` VALUES ('20180221', '184', '李佩伯', '9a70776c743352cfcf688e52512673332e5e4007');
INSERT INTO `student` VALUES ('20180222', '184', '何甄', '1c6637a8f2e1f75e06ff9984894d6bd16a3a36a9');
INSERT INTO `student` VALUES ('20180223', '184', '谢晓玲', 'af06318c33c8e41c70083ee23dbe19426f1f9c5b');
INSERT INTO `student` VALUES ('20180224', '184', '许彦霖', 'bc15c774dca4499ea6fb42da7d216ca54f8c697e');
INSERT INTO `student` VALUES ('20180225', '184', '林威强', 'cfe21c6800c88f06d7d0683b1535821c75c954ad');
INSERT INTO `student` VALUES ('20180226', '184', '周佳勋', 'c1a38b8a671f58b20d4079b68d6533216db2a364');
INSERT INTO `student` VALUES ('20180227', '184', '林静怡', '42d2a6ad49f93ab4b987b1a9e738425aacb8d2af');
INSERT INTO `student` VALUES ('20180228', '185', '周筠亚', 'cad06f3c4901bbcd4a396dd83c4544a146d6e3e8');
INSERT INTO `student` VALUES ('20180229', '185', '陈仲宜', '4c8205da3610a61583b64c7faeb86dd040cace63');
INSERT INTO `student` VALUES ('20180230', '185', '胡东贵', '2815f6b98b7a1fc00fc6bbb6d86583c410d86af7');
INSERT INTO `student` VALUES ('20180231', '185', '陈绍翰', 'eadc1dd8fc279583d5552700ae5d248e3fa123bd');
INSERT INTO `student` VALUES ('20180232', '185', '梁斓来', '4f0f5c96ca8457ccd84c30f91c0555bd7e615c81');
INSERT INTO `student` VALUES ('20180233', '185', '陈雅吉', '52fdb9f68c503e11d168fe52035901864c0a4861');
INSERT INTO `student` VALUES ('20180234', '185', '张莉雯', '0ec09ef9836da03f1add21e3ef607627e687e790');
INSERT INTO `student` VALUES ('20180235', '185', '陈韦荣', '0b7f5ada6bdd5e4844b1dc6da915ace79a38c463');
INSERT INTO `student` VALUES ('20180236', '185', '林素伦', '5d23e965603269f7674c2fc33318f5d5af406f6f');
INSERT INTO `student` VALUES ('20180237', '185', '李菁正', '3c331613a26f366446dd2bb9297a8b4104e340d5');
INSERT INTO `student` VALUES ('20180238', '185', '蔡玉婷', '5b7d26c4d99b922929b7c30ce06be0fd58a71500');
INSERT INTO `student` VALUES ('20180239', '185', '郑智钩', '584130e068c3f0f36bf0a7ef9308031af8fb6462');
INSERT INTO `student` VALUES ('20180240', '185', '吴孟钰', 'cae91e45aed80f3a3fe285c3c8c1a7e78d82d473');
INSERT INTO `student` VALUES ('20180241', '185', '蔡国伟', '9ffd1ae121c4f26fe7f0c45ecdc85fa6ac245bf0');
INSERT INTO `student` VALUES ('20180242', '185', '连俊达', '851cd04fbcac9538616f1d147d7930db87b8750d');
INSERT INTO `student` VALUES ('20180243', '185', '李雅婷', '4af7f9edc0f545f4de769f2e9e763df919915cab');
INSERT INTO `student` VALUES ('20180244', '185', '李礼娇', '01592d51db5afd0165cb73baca5c0b340c4889f1');
INSERT INTO `student` VALUES ('20180245', '185', '李忆孝', '3aed9b0313f9226111de8aeabaedccf8db07d428');
INSERT INTO `student` VALUES ('20180246', '185', '黄静雯', '3464dc11507c600bbff7daec3d6fb71402063a5f');
INSERT INTO `student` VALUES ('20180247', '185', '陈淳宝', 'b4ef7df17d3dc74720cd2a8fe98a173f9576d007');
INSERT INTO `student` VALUES ('20180248', '185', '李文育', 'ca3799b8ff860c55da009a5675031b8644cdf7e3');
INSERT INTO `student` VALUES ('20180249', '185', '林佳蓉', 'ee44c6bcc4e0dfae682057bafe6d80f880169bd9');
INSERT INTO `student` VALUES ('20180250', '185', '罗依茂', 'ba30fd97b4127db56e9f4d3d9c030d71646fd2e7');
INSERT INTO `student` VALUES ('20180251', '185', '李淑佩', 'd6e3de36b09baee29613a44bada8dbc0d7202f31');
INSERT INTO `student` VALUES ('20180252', '185', '谢怡君', '98fcc378d7f5adda37f271debf5d7a4d1cdd37b9');
INSERT INTO `student` VALUES ('20180253', '185', '王美玲', '4c15dc21c91634c1b301de6236eb08ead86be4ae');
INSERT INTO `student` VALUES ('20180254', '185', '黄慧学', 'c9f13c16144065a9ebccb216f3ec832b33e1693c');
INSERT INTO `student` VALUES ('20180255', '185', '邓幸韵', '3028f51407d83338f72f994bc283572452a877de');
INSERT INTO `student` VALUES ('20180256', '185', '陈秀琬', 'dd7c1a3d9d5627da9aea5415e3d07202bfb5925e');
INSERT INTO `student` VALUES ('20180257', '185', '许岳平', 'c439c60b7bf00fc6d80b76312309f8dc6107f635');
INSERT INTO `student` VALUES ('20180258', '185', '许爱礼', '982fd8b711279888a3b54f5af24f185041d22ee6');
INSERT INTO `student` VALUES ('20180259', '185', '宋乐男', '5f573b82f1da8677c86d695538c530d136b6c489');
INSERT INTO `student` VALUES ('20180260', '185', '简志雪', '09d66f6e5482d9b0ba91815c350fd9af3770819b');
INSERT INTO `student` VALUES ('20180261', '185', '赵若喜', '5d00f2c62873169a8720963189ff86b1f29d4958');
INSERT INTO `student` VALUES ('20180262', '185', '许承翰', '1106a1dda2d680438ecfb0bb70fd479c55a1791f');
INSERT INTO `student` VALUES ('20180263', '185', '姚哲维', '065f8e41a20c940689359644aae39608d126c498');
INSERT INTO `student` VALUES ('20180264', '185', '苏俊安', '682a03f4cd9e0c79b8a1f0e34266b9651ad9821c');
INSERT INTO `student` VALUES ('20180265', '185', '郭礼钰', '25250e46745c8169531da0086e6bbc3369795330');
INSERT INTO `student` VALUES ('20180266', '185', '姜佩珊', '45cbe19f37712e7f4e2fcfe27422a2410971f95f');
INSERT INTO `student` VALUES ('20180267', '185', '张鸿信', '81ecfd4383a1b3f7805215da769e4bb7e368451e');
INSERT INTO `student` VALUES ('20180268', '185', '秦欣瑜', 'd5f0d9102728577dfc9eec0a84867f75afbdfe46');
INSERT INTO `student` VALUES ('20180269', '185', '李旺劭', '9a61b86ecef7f4f8978d90273acfe0236bae7479');
INSERT INTO `student` VALUES ('20180270', '185', '陈怡爱', '29350804a152f35fbef4117a6a434deee760dee9');
INSERT INTO `student` VALUES ('20180271', '185', '陈秀德', 'ef7de0b7dedde0a2722380a752fece7a2ccdd672');
INSERT INTO `student` VALUES ('20180272', '185', '张佳伶', 'eb94d5c2be91b5d6dd995dbadd5ac0c30e3c17a1');
INSERT INTO `student` VALUES ('20180273', '185', '郑凯婷', '733b57ae9e45bae742221b555c15e97f45364893');
INSERT INTO `student` VALUES ('20180274', '185', '郑雅任', '431bf3b995a99c2cd6899b97187d1542a965cec9');
INSERT INTO `student` VALUES ('20180275', '185', '黄国妹', 'df518c2e0702a3bec12b032911d3090d9bfef76c');
INSERT INTO `student` VALUES ('20180276', '185', '林芳江', '6d363479c97439b921ad2bcba054992d8eda9a0c');
INSERT INTO `student` VALUES ('20180277', '185', '江骏生', 'f333160e6b20ba37686da89bbe5fab728a7d3d24');
INSERT INTO `student` VALUES ('20180278', '185', '黄儒纯', '68b5193fd0f5308baac9d9eed453a89e6925bcf9');
INSERT INTO `student` VALUES ('20180279', '185', '王培伦', '1407c2b75f43d3691c240e28204533da74ee4054');
INSERT INTO `student` VALUES ('20180280', '185', '陈蕙侑', 'ba613d1fc0d9300175611e31cca7cf9f525056cb');
INSERT INTO `student` VALUES ('20180281', '185', '蔡宜慧', 'd8502b7d774861547d38343645a9f52b163d08cd');
INSERT INTO `student` VALUES ('20180282', '185', '陈信意', '267b976f6f335984ab90f0f478e8a1637eabe7d5');
INSERT INTO `student` VALUES ('20180283', '185', '陈惠雯', '3032a4beba0cc85ba637566923b54c9addc94b63');
INSERT INTO `student` VALUES ('20180284', '185', '张绣纶', '7f35419a058e19d2b75e962dba149bddedec7606');
INSERT INTO `student` VALUES ('20180285', '185', '黄碧仪', '367ac64a16d19e2afefcf7c5fab8666dda92f9de');
INSERT INTO `student` VALUES ('20180286', '185', '陈志文', '7edab1f00ca6b31e11f7eb2e61787ed747420923');
INSERT INTO `student` VALUES ('20180287', '185', '谢懿富', 'f0a4acfc86dfa0637e085abf0bbaef7bd0ec5aa4');
INSERT INTO `student` VALUES ('20180288', '185', '杨凡靖', 'b70706fdb0027063c33c00f7ce3e040221dd70bb');
INSERT INTO `student` VALUES ('20180289', '185', '蔡秀琴', '6b0f4d999089662690c5233e0ddea57d297a9a0a');
INSERT INTO `student` VALUES ('20180290', '185', '温惠玲', '9d323717c1d5f918d8b0267c157186d6e6b64ec9');
INSERT INTO `student` VALUES ('20180291', '185', '林宗其', '3717862a00f88c6164a735d661d4e9c91c5d9767');
INSERT INTO `student` VALUES ('20180292', '185', '林绍泰', '85f1002bf139bebdb7f0d07b31fa14155aea9dfc');
INSERT INTO `student` VALUES ('20180293', '185', '何佳慧', '05580caed314df2d74c3e515d57294928cfbfae6');
INSERT INTO `student` VALUES ('20180294', '185', '蔡辰纶', '3a085d1bc5fa41313c4e0910e7341af761b0f7db');
INSERT INTO `student` VALUES ('20180295', '185', '王雅雯', 'a02b857f2eff73e8e188f35529dd91f8144b23b9');
INSERT INTO `student` VALUES ('20180296', '185', '叶怡财', 'cc8cd1ceed58e1755b28acffa45c3d0ae4751cbf');
INSERT INTO `student` VALUES ('20180297', '185', '冯雅筑', 'dd500e1c0fa5792340acd988b4e8a3338cdc609a');
INSERT INTO `student` VALUES ('20180298', '185', '李伦圣', 'eb65e208b715d3b42fc535aebcd8d3e7fb5f2c94');
INSERT INTO `student` VALUES ('20180299', '185', '彭正仁', '4b2e392816d93bae3b562a1200b0c7a3f3fd76d4');
INSERT INTO `student` VALUES ('20180300', '185', '刘小紫', 'e26973e6ee8ab9cd8cb3f207d1b90f00d2669eff');
INSERT INTO `student` VALUES ('20180301', '185', '温燕达', '787d41d9c35c57ef9e4aba799bacefac312149a4');
INSERT INTO `student` VALUES ('20180302', '185', '刘佳雨', 'cd0613ba91fbab0c5af2827e308e487e267d28a0');
INSERT INTO `student` VALUES ('20180303', '185', '吴婷婷', 'bbcbb1e844266f4abdfc29b3d8a64628607fa47e');
INSERT INTO `student` VALUES ('20180304', '185', '杨怡君', '79816ecb0a75e0b29ec93a3e4845cf4f0b5d4d4d');
INSERT INTO `student` VALUES ('20180305', '185', '黄康刚', '9a3d6127374af09c22015bf3ede3ac00a36e3ec6');
INSERT INTO `student` VALUES ('20180306', '185', '林辰和', '72c1975b93f0fff13952a520575f947c42ad8114');
INSERT INTO `student` VALUES ('20180307', '185', '陈世人', 'ae5ffa6599c837509139132ef41c7856f33a50f7');
INSERT INTO `student` VALUES ('20180308', '185', '吴佩霖', '3e0f83cc51276227de3cfebca941faace8aaa317');
INSERT INTO `student` VALUES ('20180309', '185', '张伟杰', 'ed2efc1c05342a60c2198a5e96773a237008956b');
INSERT INTO `student` VALUES ('20180310', '185', '刘友淳', 'af53d4aa0b9131f18f84130767ee5b1dcbcb63be');
INSERT INTO `student` VALUES ('20180311', '185', '张瑞群', 'cd6d91089c7e219a7f4e86e3c2d57f936d367689');
INSERT INTO `student` VALUES ('20180312', '185', '洪紫芬', 'a93c168323147d1135503939396cac628dc194c5');
INSERT INTO `student` VALUES ('20180313', '185', '邓家伟', '97b31c942deab39118e64423efe46b9c31e669f7');
INSERT INTO `student` VALUES ('20180314', '185', '谢佩任', '6e21fce62b88ee824118ee6f3d791d78a748f9a5');
INSERT INTO `student` VALUES ('20180315', '185', '戏郁文', 'f6b9b6ccd0440bc448ae4b0267c316b751bcf826');
INSERT INTO `student` VALUES ('20180316', '185', '李治火', '81c69212880f2e985e1dedf869c2483ece723d68');
INSERT INTO `student` VALUES ('20180317', '185', '林石美', 'f44a286f486d11990238c4ae59a9b4f8b7a9edf4');
INSERT INTO `student` VALUES ('20180318', '185', '郑雅茜', '154a31bf7fa827bce90915439a7a5f3aa0f2fa47');
INSERT INTO `student` VALUES ('20180319', '185', '胡台泰', 'a84c9aa070f9d126532293b8687d2ff3966060f0');
INSERT INTO `student` VALUES ('20180320', '185', '陈怡盈', '7fdec83a2662ffe53af456402cbaeafa380b15b4');
INSERT INTO `student` VALUES ('20180321', '185', '阙石意', '5f6955d227a320c7f1f6c7da2a6d96a851a8118f');
INSERT INTO `student` VALUES ('20180322', '185', '林盈威', '81110df80ca4086e306c4c52ab485a35cf761acc');
INSERT INTO `student` VALUES ('20180323', '185', '林志嘉', 'cb4dd52770e258826c4174c36202b18f649e262f');
INSERT INTO `student` VALUES ('20180324', '185', '李秀玲', '914127d1002e9938e2e1ee54cd92fd8195a248b0');
INSERT INTO `student` VALUES ('20180325', '185', '王彦霖', '4551b2d552b0795735b70411d13d6b5ad82d6b8c');
INSERT INTO `student` VALUES ('20180326', '185', '叶惟', '4296abf737c7b57969d073b5dfa47c041e22782f');
INSERT INTO `student` VALUES ('20180327', '185', '郑星钰', '076e5a3a32038d0ba2d7e8fac5f6a5249a68e749');
INSERT INTO `student` VALUES ('20180328', '185', '邱贞伟', '5547f6312291149b2a3269420b59747949760a0d');
INSERT INTO `student` VALUES ('20180329', '185', '姚扬云', '8d396f9047754b91e68d992920b521280cd9d351');
INSERT INTO `student` VALUES ('20180330', '185', '涂武盛', 'a609bb8ab05a0d13db9eb1d0d3b1383d1703c17d');
INSERT INTO `student` VALUES ('20180331', '185', '王雅顺', 'c28097ad29ab61bfec58d9b4de53bcdec687872e');
INSERT INTO `student` VALUES ('20180332', '185', '唐欣仪', 'ef2afd226e3384e34d9833fe09cd123db498754c');
INSERT INTO `student` VALUES ('20180333', '185', '陈政圣', '43814346e21444aaf4f70841bf7ed5ae93f55a9d');
INSERT INTO `student` VALUES ('20180334', '185', '陈育福', 'fffb8e85796e61b713c68833d9f84ef0958681aa');
INSERT INTO `student` VALUES ('20180335', '185', '吴惠要', '4728a26498a7441a03a375eb0280b65c24a8cbd9');
INSERT INTO `student` VALUES ('20180336', '186', '李淑淑', '9c882d5c6a1aa240b2672dce0ffb03360abcaca5');
INSERT INTO `student` VALUES ('20180337', '186', '黄莉秋', '0588f59014485510aac3bd9fdc2695c7b2a0d559');
INSERT INTO `student` VALUES ('20180338', '186', '赖俊军', '01ec40215edd21ed26d1bedde644afcfa4ccd665');
INSERT INTO `student` VALUES ('20180339', '186', '荆彦璋', '6c41101fe24a8f80c8cb51781f9e9ecf8c7a4d39');
INSERT INTO `student` VALUES ('20180340', '186', '白怡均', '3e6bf6c89ba8a8b8b189f85975b0fab42bdc6d4a');
INSERT INTO `student` VALUES ('20180341', '186', '林姿辛', '8da4dabfaeb4a44681c9777c85db39140e3e12e6');
INSERT INTO `student` VALUES ('20180342', '186', '林雅慧', 'c415505dca69be631ca5d391b3ccd2b44b52d017');
INSERT INTO `student` VALUES ('20180343', '186', '詹允坚', '25a5e3012854728e0c6ab97fdcbb65c3a00c0965');
INSERT INTO `student` VALUES ('20180344', '186', '赖淑珍', '640bacfb48aefac1f91028c01603e5c78d4f63ca');
INSERT INTO `student` VALUES ('20180345', '186', '吴惠美', '35139ef894b28b73bea022755166a23933c7d9cb');
INSERT INTO `student` VALUES ('20180346', '186', '李凯婷', '41f448afc82647d1376ad508aec1ebe28826b8f7');
INSERT INTO `student` VALUES ('20180347', '186', '林承辰', '1b04f217730b9e677ec7021775bb6c2c8f8ca543');
INSERT INTO `student` VALUES ('20180348', '186', '刘亭宝', 'cfd1799660639c006d19f3ca7ebd518a1d6e6ca2');
INSERT INTO `student` VALUES ('20180349', '186', '宋慧元', '3341b16b2e02679ecb3d3fccb14a5667fa751d0d');
INSERT INTO `student` VALUES ('20180350', '186', '连书忠', '89a1c105a4720482e52ae423839ed97c693201ca');
INSERT INTO `student` VALUES ('20180351', '186', '余仪礼', '0026476a20bfbd08714155bb66f0b4feb2d25c1c');
INSERT INTO `student` VALUES ('20180352', '186', '袁哲仪', 'efbc0848b836a9de4b0c18c93ec052d87647fb06');
INSERT INTO `student` VALUES ('20180353', '186', '杜怡臻', '8ada660e06b787f245667943dc948dafab997e25');
INSERT INTO `student` VALUES ('20180354', '186', '潘孝东', '1a1162ec85b1d21244d7d3ecba5bc65878b73777');
INSERT INTO `student` VALUES ('20180355', '187', '周志合', '90af7edbfd8a161a7f711504a114aaf5bf597f9f');
INSERT INTO `student` VALUES ('20180356', '187', '刘力霞', 'd20016547f489da25167fa1dbe9a00bfd82298c0');
INSERT INTO `student` VALUES ('20180357', '187', '林钰婷', '86970064ea53b6d66b7c53cbc91c58b4f06fc6fd');
INSERT INTO `student` VALUES ('20180358', '187', '林怡紫', 'abf749051d8b000946c71a2e216e55eeb49cf414');
INSERT INTO `student` VALUES ('20180359', '187', '林俊凯', '2a5ac580e608daa6d2cd4b6c20326e1518baadd5');
INSERT INTO `student` VALUES ('20180360', '187', '蔡于纬', 'a1773d62a609dd09e98ea1aebeddbd949b78bf83');
INSERT INTO `student` VALUES ('20180361', '187', '蔡雅惠', 'b6e7a22c25e9e7146913841b0995288c688f9bf8');
INSERT INTO `student` VALUES ('20180362', '187', '汪喜祥', '8d6f9131366dac0c298ee725e6577d6e0a54e832');
INSERT INTO `student` VALUES ('20180363', '187', '陈铭侑', '15a17abee2bf17c4859db0247500fc078d2a5dd4');
INSERT INTO `student` VALUES ('20180364', '187', '郭子珠', '56e43ae4ca9369ef504ed49d4a92f42eddff81c5');
INSERT INTO `student` VALUES ('20180365', '187', '许伦吉', 'a0d04378f37973ffa3b2aa8b3e27a3f0a98de06d');
INSERT INTO `student` VALUES ('20180366', '187', '陈佳雨', 'b00168585f7b81b68f0ef02ffa919c710fb6f592');
INSERT INTO `student` VALUES ('20180367', '187', '赖英贤', 'f090932162756b798b1a050b05e3d36a3437c4fc');
INSERT INTO `student` VALUES ('20180368', '187', '吴嘉茹', '9aaa0b523023790b2cf1df9dc629ba14abd0edd5');
INSERT INTO `student` VALUES ('20180369', '187', '陈永桂', '5e06d22c8893e27d5a7243bd185faa94cc593072');
INSERT INTO `student` VALUES ('20180370', '187', '张文宏', '97705a95fdc2a4886f9b24061803f0f5c60270cb');
INSERT INTO `student` VALUES ('20180371', '187', '唐欣怡', '3554dce55f341edd431fc711f6816673f081452d');
INSERT INTO `student` VALUES ('20180372', '187', '丁绍燕', '6d93f2a0e5f0fe2cc3a6e9e3ade964b43b07f897');
INSERT INTO `student` VALUES ('20180373', '187', '王雅谕', 'a5133248b1b55f7b0f0f989caafe254d9c16b6a7');
INSERT INTO `student` VALUES ('20180374', '187', '叶柏字', '4a0e88cf529fbbdc2c0a995bbe88a0a86212ed8d');
INSERT INTO `student` VALUES ('20180375', '187', '王婉萍', '348763862f0a868bdc2591812b783206c351bc2f');
INSERT INTO `student` VALUES ('20180376', '187', '王宗清', 'b6e2efd8ffb991dd3ea069b7b9286d5e31f97b36');
INSERT INTO `student` VALUES ('20180377', '187', '刘心霖', 'be4d979ef9808e41a6adf3bbefc4331248e88604');
INSERT INTO `student` VALUES ('20180378', '187', '吴柏廷', '0d990fa9636db56c6349320acba1a0c6499a1db3');
INSERT INTO `student` VALUES ('20180379', '187', '陈怡臻', 'c829eb96cef056a9003d7ab56ed6072e99089985');
INSERT INTO `student` VALUES ('20180380', '187', '杜士豪', 'c30749cf5bc74c7c3a7e5c8411512825e95333a8');
INSERT INTO `student` VALUES ('20180381', '187', '李春勋', '00f7eea0d077127d2045e251487cfe61189614c7');
INSERT INTO `student` VALUES ('20180382', '187', '黄雅慧', 'd0226f9e35dab55020fca272f6d56ff5812633fd');
INSERT INTO `student` VALUES ('20180383', '187', '吴乔茂', '8c4a0a7afbb10de1e63107ce71805605f1a81765');
INSERT INTO `student` VALUES ('20180384', '187', '郑婉如', 'b741f2520f68d7b8abfecea2d88015fc823ef8bb');
INSERT INTO `student` VALUES ('20180385', '187', '李育坚', '855679730970f8a0fca717e82e76cc93053c09c1');
INSERT INTO `student` VALUES ('20180386', '187', '黄静雯', '295df4a5051a775dd5a1e5a8b7410d884bbbb74b');
INSERT INTO `student` VALUES ('20180387', '187', '赵一蓉', 'f7e19157e9c4e0b9bf77b16588e3961fe4b0e2d9');
INSERT INTO `student` VALUES ('20180388', '187', '邱萱俐', '11307768e6d77951256a33cc9abd40851f6f5ce8');
INSERT INTO `student` VALUES ('20180389', '187', '周立妹', '1ed8625b87fe7be262cf36d4e4648ea241575e22');
INSERT INTO `student` VALUES ('20180390', '187', '李宝其', 'f369b411c5eb95ab252e1ab9de70f787fa720784');
INSERT INTO `student` VALUES ('20180391', '187', '张信豪', '4c629c4c340105f45966111510782ae516f7bf65');
INSERT INTO `student` VALUES ('20180392', '187', '李昆霖', '0715d58c74869d445849a688c0f3804892a5d6a1');
INSERT INTO `student` VALUES ('20180393', '187', '陈俊安', 'b0c68924acc44f1f1ed598a8b2b2d4568b02dcfc');
INSERT INTO `student` VALUES ('20180394', '187', '林建志', 'bc62305b6cff49d43aed5f6550716c89890a3ccc');
INSERT INTO `student` VALUES ('20180395', '187', '黄韦伶', '86cf294a07a8aa25f6a2d82a8938f707a2d80ac3');
INSERT INTO `student` VALUES ('20180396', '187', '李美麟', '2bc4a9de212381b2bbb88945fcc28f65c338b37a');
INSERT INTO `student` VALUES ('20180397', '187', '张政达', '20387dbb740a1024dc09b567e17ab8b8d656ec64');
INSERT INTO `student` VALUES ('20180398', '187', '郑惠玲', '10309cbe2800a679343754aa99688bac884f9fac');
INSERT INTO `student` VALUES ('20180399', '187', '柳忠廷', '9ed4f29f8b6857ffe123d6e41d5c699edc0d62a1');
INSERT INTO `student` VALUES ('20180400', '187', '黄美娟', 'ab7f7b955330dc8dcd7f8ae3d9689ffa32bf10d5');
INSERT INTO `student` VALUES ('20180401', '187', '许怡君', '63b4f91cf8f3dcf5b300797302b9953cc8333368');
INSERT INTO `student` VALUES ('20180402', '187', '吴崇南', '5e63673cbc075e2d21cef6bde4c591c263380bee');
INSERT INTO `student` VALUES ('20180403', '187', '邱承正', '8980dc86c1e9ea324ec99f8b15a2e9a92d0a4d1e');
INSERT INTO `student` VALUES ('20180404', '187', '叶得梅', 'c35a9fc52bb556c79f8fa540df587a2bf465b940');
INSERT INTO `student` VALUES ('20180405', '187', '陈祯月', '7ee51d9582ef3d3b56ec2fc25b77fc147d8563e5');
INSERT INTO `student` VALUES ('20180406', '187', '杨宛儒', 'b202977c0fc07e1c6b31961a905395a8ffb23121');
INSERT INTO `student` VALUES ('20180407', '187', '阮肇宪', 'e6de89674d9f1d7968a70dad4f41b844965b4fdc');
INSERT INTO `student` VALUES ('20180408', '187', '杨益霞', 'beba4d5d3ffb8fac7fe5ce87ac1eb2f75c4cd1a2');
INSERT INTO `student` VALUES ('20180409', '187', '唐盛人', '3352d0d8278c176fa61d82326d7e51dabd2a032e');
INSERT INTO `student` VALUES ('20180410', '187', '许平纬', '329dc1daf9fb9d5e75d687dd9e0740e1c72796c3');
INSERT INTO `student` VALUES ('20180411', '187', '许雅如', '83fdc3407ccf68718bfb9aaddefa7cc0e40529db');
INSERT INTO `student` VALUES ('20180412', '187', '林秀绮', '6e9b99384f21dc46400b5347a3eb341f6daeb334');
INSERT INTO `student` VALUES ('20180413', '187', '刘昌东', '5715aa02de07dc08f6197a5850b92d7640766663');
INSERT INTO `student` VALUES ('20180414', '187', '张家荣', '4396c2d023b9d985eed0ba30fe1c672637c01718');
INSERT INTO `student` VALUES ('20180415', '187', '杨淑君', '8749f5bad0754ddc52e5945049175078943a69ad');
INSERT INTO `student` VALUES ('20180416', '187', '吴俊民', '279e901e056c2d8c7d7cf626cc71a1bda80ca343');
INSERT INTO `student` VALUES ('20180417', '187', '李彦瑜', '4dc77829a69518101f9a97ef4257e3a7820944d2');
INSERT INTO `student` VALUES ('20180418', '187', '李彦文', '93ac1946cb917abc4735cdd1ee5fb7e3c6e164de');
INSERT INTO `student` VALUES ('20180419', '187', '王崇以', '1f0037c5e92481b35c84bc22d7e8f69c34365430');
INSERT INTO `student` VALUES ('20180420', '187', '王威全', '7a95563490d87e3621966d553f06078acb822585');
INSERT INTO `student` VALUES ('20180421', '187', '彭琳以', '1c76c42db69f242fdc8d813f5fddf04e958dca4b');
INSERT INTO `student` VALUES ('20180422', '187', '许志任', '020c4877362530fccadf006a858f56ee9637177d');
INSERT INTO `student` VALUES ('20180423', '187', '陈嘉杰', 'a785bdbf3c99e0509f4cc3417295cce9d89459a1');
INSERT INTO `student` VALUES ('20180424', '187', '蔡志远', '77873674e5df0c6b070f8dd195293533838ca7a1');
INSERT INTO `student` VALUES ('20180425', '187', '陈信文', '7a698699a9229b278afa72593214582d739b9bad');
INSERT INTO `student` VALUES ('20180426', '187', '陈思廷', '62866ab415331d03c03849c24f528450f246e375');
INSERT INTO `student` VALUES ('20180427', '187', '吴家毓', 'fba7b60b15f0b26aa5b56b8f378a0b1b4092ed23');
INSERT INTO `student` VALUES ('20180428', '187', '李宜紫', '2aed8cef33a640e55d1a7f9358fc92db260a4de9');
INSERT INTO `student` VALUES ('20180429', '187', '杨毅民', '75988f5ac0575a8d3636291a136cf92664152ed3');
INSERT INTO `student` VALUES ('20180430', '187', '林志平', 'f8c024c4ad95bf78baaf9d88334722b84f8a930b');
INSERT INTO `student` VALUES ('20180431', '187', '张坚凤', '6c0ac76ca9fe1af889558d11fd9a75e1fb9a0b86');
INSERT INTO `student` VALUES ('20180432', '187', '林明春', 'a2092f63a2f91825e2c72496b104e027c2a5b0f0');
INSERT INTO `student` VALUES ('20180433', '187', '戴火劭', '82ad38f885211232bd89c439e0df9982d6ae74f7');
INSERT INTO `student` VALUES ('20180434', '187', '傅予名', '8949eb0b6a2ef0595f9ef639e167d6209c3ccc60');
INSERT INTO `student` VALUES ('20180435', '187', '叶佩璇', '784ef0059227d57909c9d81632b89915adc03c22');
INSERT INTO `student` VALUES ('20180436', '187', '陈雅雯', '6c4c04be8f82a4e053bde03dd716d59c841cfda9');
INSERT INTO `student` VALUES ('20180437', '187', '萧宗毅', 'bf9e9998a83a0659666e3e32cd4c051f0a82aa46');
INSERT INTO `student` VALUES ('20180438', '187', '郭淑媛', '06cb3f00aa09252fffcbe8ea8d165a338f803a7e');
INSERT INTO `student` VALUES ('20180439', '187', '刘淑卿', '0fdf6a63ef21d8a712f68633ace5ce08cd1914ac');
INSERT INTO `student` VALUES ('20180440', '187', '陈雅萍', '6d0e1050797b03d8826ea5ad224adba68621f692');
INSERT INTO `student` VALUES ('20180441', '187', '陈佩木', '5dd8b53aacfc461407333cffac2e4acce3337ebf');
INSERT INTO `student` VALUES ('20180442', '187', '冯惠玲', 'e076fa133a86ed3f260850a0dc70993ae366a649');
INSERT INTO `student` VALUES ('20180443', '187', '吴乃亚', 'ac3e7b007d7ab0ba379faa8ab62d9da35c5444f4');
INSERT INTO `student` VALUES ('20180444', '187', '刘欣怡', '9a3e61b6bcc8abec08f195526c3132d5a4a98cc0');
INSERT INTO `student` VALUES ('20180445', '187', '陈意婷', 'ac9c957760424d463fbc0a28712e09dcd11a9415');
INSERT INTO `student` VALUES ('20180446', '187', '林明珠', '5a9295d8fa430d03c34c8f7145f47117fb940f31');
INSERT INTO `student` VALUES ('20180447', '187', '陈淑婷', '08d55d01921d987568b19a5fd67bc17b74d6c36f');
INSERT INTO `student` VALUES ('20180448', '187', '徐宏亦', 'f04b1d726c615672552fa5116aa5b958d8d41676');
INSERT INTO `student` VALUES ('20180449', '187', '李佳德', '5fd7e33e01c871f02cbf9f6b0c1feec774b09cf5');
INSERT INTO `student` VALUES ('20180450', '187', '蔡正信', 'd96adb142a1f7ede4d5906eadf01409dbd98b60d');
INSERT INTO `student` VALUES ('20180451', '187', '李淑敏', '9d4650d4e8944e0ebf5c32dd9706abc74343e3a8');
INSERT INTO `student` VALUES ('20180452', '187', '蒋佳玲', '3af0af21718ad75722b7f7dc2428e7f3f9c10432');
INSERT INTO `student` VALUES ('20180453', '187', '蔡佳明', '4ac2bbff5b524a7870db72e80334fa26fee02817');
INSERT INTO `student` VALUES ('20180454', '187', '简淑惠', '14019988a92023b21c8fbafb2b615c6ce575da38');
INSERT INTO `student` VALUES ('20180455', '187', '张雅菱', 'b02b70815b8520a272deb770f0bd96f6ab0a8257');
INSERT INTO `student` VALUES ('20180456', '187', '颜淳奇', '51eac6b471a284d3341d8c0c63d0f1a286262a18');
INSERT INTO `student` VALUES ('20180457', '187', '刘芳仪', 'd36550fc4422fde2c3bb4169c939e24e583e79f0');
INSERT INTO `student` VALUES ('20180458', '187', '陈俊玮', '06be19ff5cbfb5dba362873de9cba10fa3d48b9f');
INSERT INTO `student` VALUES ('20180459', '187', '黄雯坚', 'bf0d80b16262738fcdcb9b2e3d6a600cf75e4cc4');
INSERT INTO `student` VALUES ('20180460', '187', '侯文贤', 'e973a64ce098778bb7327fe57d8a607be981cbd3');
INSERT INTO `student` VALUES ('20180461', '187', '郑雅要', '668f37d8c8de8ceafa1092495a78aaaa0efef934');
INSERT INTO `student` VALUES ('20180462', '187', '黄雅俐', '5a73b747ec74bdd97d5f05bf1ea48d0707e87e50');
INSERT INTO `student` VALUES ('20180463', '187', '陈婉婷', '07fd89a40a3755e21a5884640f23eaf59b66df35');
INSERT INTO `student` VALUES ('20180464', '187', '郑智杰', '6f946e26bbbc095620c42c4453cbf8df7ffca1a0');
INSERT INTO `student` VALUES ('20180465', '187', '林玉信', 'f8b5f622dcf940ae97164f7cea68e98da6bf8ac3');
INSERT INTO `student` VALUES ('20180466', '187', '阮侑美', 'cf2f328d24859d56d55d2b610b12525e60b21895');
INSERT INTO `student` VALUES ('20180467', '187', '潘怡婷', 'ec2b67d5467580f9f9fea7878374ced969f38129');
INSERT INTO `student` VALUES ('20180468', '187', '黄世祥', '3977dced04b7d0c7bc81b01a3f4124e14c683b8e');
INSERT INTO `student` VALUES ('20180469', '187', '张韦水', 'e3e097dc79d8161b2a2448f6c0930a8b081cd013');
INSERT INTO `student` VALUES ('20180470', '187', '黄彦慈', '264c3f3470cadac69e9912a8517f6210af35afaf');
INSERT INTO `student` VALUES ('20180471', '187', '张峻香', '5e5ad0b76c7633737a8d81700681204e0167c0d9');
INSERT INTO `student` VALUES ('20180472', '187', '宋轩天', 'cf06ed6df6eb6ebc840cdb81ed164cfdb56a6aa9');
INSERT INTO `student` VALUES ('20180473', '187', '周好军', '7ed28031fea3428609396624c50f0db45cfe7069');
INSERT INTO `student` VALUES ('20180474', '187', '江佩玲', '1625434cebb5e5c4cf7cac668ab24444f9ec05b7');
INSERT INTO `student` VALUES ('20180475', '187', '陈美芝', '6e75d23a0574afce62799aab4afcd882f53d6680');
INSERT INTO `student` VALUES ('20180476', '187', '张伦启', '38c07d9eb6f585cb2e363aa8d83443b1b9fcc722');
INSERT INTO `student` VALUES ('20180477', '187', '陈敏爱', '8665243ef242a2b13ff662d0943d369e8ba0e206');
INSERT INTO `student` VALUES ('20180478', '187', '杨毓娇', 'fbea31c7083ef34d19f4b946b94b60560c709e34');
INSERT INTO `student` VALUES ('20180479', '187', '谢姿君', 'eaef52968c5b1fa7aa44f27a0584221e72e9b648');
INSERT INTO `student` VALUES ('20180480', '187', '赖姿泰', '6153f0b97fb44420cd413a37979f8e6219fc3f36');
INSERT INTO `student` VALUES ('20180481', '187', '黄圣映', '2978e0c34dbebfc46bf96c994436a5790a22017a');
INSERT INTO `student` VALUES ('20180482', '187', '林柏燕', 'd051bf1ddf82f79c6af34f7f4e59707f081296ad');
INSERT INTO `student` VALUES ('20180483', '187', '黄馨香', '9ee0df7c8a647ff45e95abfac028ef5651be0ac5');
INSERT INTO `student` VALUES ('20180484', '187', '叶于玫', '329a970dfa7f977b158a7450f283716d1b46ac73');
INSERT INTO `student` VALUES ('20180485', '187', '陈山茹', '3b69df951b3d4c18c3cb681597fbb9bba88d799c');
INSERT INTO `student` VALUES ('20180486', '187', '魏得凤', '6cc71d91778fcdda0eb8709e9348240b251afe5e');
INSERT INTO `student` VALUES ('20180487', '187', '张明翰', '8f98b68c4d83cf50f7c863fe577a2c5e38b43236');
INSERT INTO `student` VALUES ('20180488', '187', '林冠强', 'ee16ee0fa7f21a4101793582e1cf4b24fef9f948');
INSERT INTO `student` VALUES ('20180489', '187', '李文荣', '343ae8e26ca054cfcc1f6cbfe5781dddc9059adc');
INSERT INTO `student` VALUES ('20180490', '187', '龚静雯', '1b0a69d74c5ab68f9e3505f103f40618a51e5987');
INSERT INTO `student` VALUES ('20180491', '187', '陈伟孝', '014a1aa3f7a2c6578a3fa48e3dd84f775925489f');
INSERT INTO `student` VALUES ('20180492', '187', '刘信俊', '77d67ab1e3d05296a7131e197d9d3767fb900bad');
INSERT INTO `student` VALUES ('20180493', '187', '李美治', 'c56f5cb661da571966164b6b20c855e02fcc7044');
INSERT INTO `student` VALUES ('20180494', '187', '徐景隆', '456f2361d677372141da13ecbc8f27b83f5b6a15');
INSERT INTO `student` VALUES ('20180495', '187', '刘怡洁', 'f1e75747bc4c6d0b16f0d429b76d23f1c06153a9');
INSERT INTO `student` VALUES ('20180496', '188', '陈钰梦', '93e097e319c2db13edf06f45c4dff4f741394c0d');
INSERT INTO `student` VALUES ('20180497', '188', '谢静宜', 'ccddaf626302032b0414003d6d4ebbfe4b3f99af');
INSERT INTO `student` VALUES ('20180498', '188', '戴惠如', 'd049c44e2fd67b6eb19a1c18c93110c0b52cab63');
INSERT INTO `student` VALUES ('20180499', '188', '王香君', 'edd6ebda641b723cc1bc537c49099c1d5a458138');
INSERT INTO `student` VALUES ('20180500', '188', '钟汉馨', 'f83a383c0fa81f295d057f8f5ed0ba4610947817');
INSERT INTO `student` VALUES ('20180501', '188', '郑国玮', '2c9a62c3748f484690d547c0d707aededf04fbd2');
INSERT INTO `student` VALUES ('20180502', '188', '张哲亚', '2f9f705a38307c470e3a819ac1f6df7a7fa0ffbc');
INSERT INTO `student` VALUES ('20180503', '188', '詹南勋', '7110e0d3f236986f20f4297a48a536d8fac5c411');
INSERT INTO `student` VALUES ('20180504', '188', '潘秋福', '300122350a32530a2c2103b46ed07eacdc82aff8');
INSERT INTO `student` VALUES ('20180505', '188', '黄奕君', '3ead28f890ec0f5b363587e15d61e0b4dca2ee6d');
INSERT INTO `student` VALUES ('20180506', '188', '郭斑婷', 'e408d89ae85c9a0b6deaeeec2a3cf7eb0cf9c5fd');
INSERT INTO `student` VALUES ('20180507', '188', '冯家华', '1185401df4fc07ec0f2e42c538ab6b1bb1388264');
INSERT INTO `student` VALUES ('20180508', '188', '吴佩仁', '07a85bd180d31c968e6dc5989ac4de434918dd41');
INSERT INTO `student` VALUES ('20180509', '188', '周思颖', '6d5db0e809f71a43d3bada01e4c1c4d4b501b435');
INSERT INTO `student` VALUES ('20180510', '188', '张柏钩', '2d3fbcffe8a44d7f02a2b8c374085b84f0284201');
INSERT INTO `student` VALUES ('20180511', '188', '吴世伟', 'b7f5113f83376fc4334a2f305303bd99b533a5c4');
INSERT INTO `student` VALUES ('20180512', '188', '朱佳琪', 'ce09b127d48f83868a45645e246d3b52f4bdecbe');
INSERT INTO `student` VALUES ('20180513', '188', '陈宗馨', '10d293a95915109e7675b011f404213902624f14');
INSERT INTO `student` VALUES ('20180514', '189', '黄菁坚', '3f1522d025592284c3a736264c470d52fa878cd0');
INSERT INTO `student` VALUES ('20180515', '189', '郑建泉', 'f5b68d74621aa3616444d8ac07c9052a6030cf31');
INSERT INTO `student` VALUES ('20180516', '189', '许金志', 'b903ea6300ffc957d946618424318ce4afcc0764');
INSERT INTO `student` VALUES ('20180517', '189', '平信宏', '142e9ae35ca000441e9ea0566bb96694ed97d0bc');
INSERT INTO `student` VALUES ('20180518', '189', '蔡佳麟', '0486ffb0d9c84cf1c38a7024c5284f0a2c411070');
INSERT INTO `student` VALUES ('20180519', '189', '杨佳宏', '8a279e5c5354af5ae7810101fd16c35a749451cc');
INSERT INTO `student` VALUES ('20180520', '189', '陈皓雅', '0b6a63765cf0acb1022fc7c84ed8dcb104f221ed');
INSERT INTO `student` VALUES ('20180521', '189', '吴翊意', '91afc4c2917059721285db729422445840ce77e8');
INSERT INTO `student` VALUES ('20180522', '189', '张佩珊', '22ef9733f34012fee57a30e23cfeaf3810f47298');
INSERT INTO `student` VALUES ('20180523', '189', '温欣桦', '8de23aaaec61b2cba81bd155ea66322737dea7d8');
INSERT INTO `student` VALUES ('20180524', '189', '王诗铭', '6632e7ca34bf65b81cadd060000fa794dc91938f');
INSERT INTO `student` VALUES ('20180525', '189', '许宜辰', '00a8a5c3f7bac086c6df1a59b7da7e26eee029a1');
INSERT INTO `student` VALUES ('20180526', '189', '林孟哲', 'd5155d043a8e6fffa4385a64df15a176f4752551');
INSERT INTO `student` VALUES ('20180527', '189', '黄善宇', '22ab0e4326f1e9096ffc3217cd20a17829a5c486');
INSERT INTO `student` VALUES ('20180528', '189', '王怡贵', '1d7deb7af392ce1dd0b07cc0e31a54ffbcbfe9fc');
INSERT INTO `student` VALUES ('20180529', '189', '许淑玫', '945335a6aaa02e8642218d06ddbb9073cb1e3d69');
INSERT INTO `student` VALUES ('20180530', '189', '张学玉', '5c64cc5d7cc05237d16fa2873e58b5923c489b73');
INSERT INTO `student` VALUES ('20180531', '189', '黄美珍', '9d94ce174298e08402d1271df4e20f4cb50f7340');
INSERT INTO `student` VALUES ('20180532', '189', '陈佳心', '0313e644f8fda754eeeddc6c00eb824b00fea515');
INSERT INTO `student` VALUES ('20180533', '189', '宋其琪', '3a69aa1b60febf635d84cdca387928f10062450d');
INSERT INTO `student` VALUES ('20180534', '189', '陈致昀', 'ae7329c979b3cd96086c22cca6217764ab3e50ec');
INSERT INTO `student` VALUES ('20180535', '189', '王建福', 'be2793cdd2af9b687e24da064353ecd4681052d2');
INSERT INTO `student` VALUES ('20180536', '189', '刘莹睿', '4e86d8c0a0eb12d71f5fcb6ce71218482465aae7');
INSERT INTO `student` VALUES ('20180537', '189', '陈正莲', '7ec24305aabd039523e863b97fc436f600b30b42');
INSERT INTO `student` VALUES ('20180538', '189', '冯萱雨', '093f0b067a05c35392acf5a68ae51f414b877d32');
INSERT INTO `student` VALUES ('20180539', '189', '金淑敏', '3cc5149977a9d4beaf5387b67b4d30c41fdf32e0');
INSERT INTO `student` VALUES ('20180540', '189', '宋廷意', 'a8a2b30f8dba82d690db42ce743475f11be31030');
INSERT INTO `student` VALUES ('20180541', '189', '吴承华', 'acf10f2c0a9d00345c2f6be783fc7068fe6a6bff');
INSERT INTO `student` VALUES ('20180542', '189', '陈家莲', 'd06b6c54863ac33d12419dd04f7acb85c696f722');
INSERT INTO `student` VALUES ('20180543', '189', '王志源', 'f0483f255e0ce2c93d5dfa593f2161b266474869');
INSERT INTO `student` VALUES ('20180544', '189', '张佩君', 'b87bed12954890a8af4b5df47633ced9fdf85923');
INSERT INTO `student` VALUES ('20180545', '189', '黄志伟', '9741f79aca77af5b5793817bd36737360dcb0a29');
INSERT INTO `student` VALUES ('20180546', '189', '吴孟吟', '461742bbd8cc55ac9eefa04baff70c5c64592896');
INSERT INTO `student` VALUES ('20180547', '189', '蔡玮玉', '3219b5be78da72e80e0918d458b9ece3825a68e1');
INSERT INTO `student` VALUES ('20180548', '189', '张心怡', '916f5b10fee9db4c317b6fbbc343cc3cd03f1569');
INSERT INTO `student` VALUES ('20180549', '189', '吴志绿', '2ef28d314a746794372012c327c941b66c3a057c');
INSERT INTO `student` VALUES ('20180550', '189', '何武霖', 'cf94db48fb7aa4da74260da3f6c7e4722e913b72');
INSERT INTO `student` VALUES ('20180551', '189', '杨中惟', 'a4c36ded9dbf60a5a9dceb0d0a1e3b17ac92f8cf');
INSERT INTO `student` VALUES ('20180552', '189', '王佑诚', 'f53eac2e4221f1794509de8d786a143b5016901f');
INSERT INTO `student` VALUES ('20180553', '189', '徐承财', '53e56691fe7c82711dc58960df28b221ec2f29e3');
INSERT INTO `student` VALUES ('20180554', '189', '温伟伦', 'c8c06cfae2f59de7d444d46f0681e0845c5fcd68');
INSERT INTO `student` VALUES ('20180555', '189', '萧郁婷', 'cfa1150f1787186742a9a884b73a43d8cf219f9b');
INSERT INTO `student` VALUES ('20180556', '189', '陈世伟', '170377543ef02d8082756be316e863c382a1d1bc');
INSERT INTO `student` VALUES ('20180557', '189', '林敬书', '859371c78674de37bb9ae20743117bad002716e1');
INSERT INTO `student` VALUES ('20180558', '189', '谢孟南', '9d6ad3cc125c3c4d07b17f6aac6ff9ebf9a338c8');
INSERT INTO `student` VALUES ('20180559', '189', '项宜真', '2473f01571bf0dcb7d2b16d67da6dd031769947d');
INSERT INTO `student` VALUES ('20180560', '189', '崔美珠', '84582c1dbe026475319df14c19967d1dd0bf751f');
INSERT INTO `student` VALUES ('20180561', '189', '赖筱要', '77c8184f671aa0397dd897541ed5ec0a8be0380b');
INSERT INTO `student` VALUES ('20180562', '189', '陈盛丰', '904f2cc1c3677bb35876e91f4716341c06769cc6');
INSERT INTO `student` VALUES ('20180563', '189', '阮升云', '68b7933743e4841afc42c7b7eb5b4974a1070228');
INSERT INTO `student` VALUES ('20180564', '189', '周怡季', 'fe2fb474076a872e237e4430d40cbed150d20033');
INSERT INTO `student` VALUES ('20180565', '189', '江佳芸', 'e77a763321d6cf825534ab228e1dfa33e71447c1');
INSERT INTO `student` VALUES ('20180566', '189', '郭惠君', 'ceab25abfedcba417c7cade07076c93c1cdacc44');
INSERT INTO `student` VALUES ('20180567', '189', '吕智文', '6643521711328a1e282daf5a5da43970eb11a089');
INSERT INTO `student` VALUES ('20180568', '189', '王琼龙', '8a1beaee63fed318ca54d4f7d18cee4081c68a74');
INSERT INTO `student` VALUES ('20180569', '189', '陈姿茜', 'fc8d9e6e58db7ca861d6096d684bd0169ffd01cf');
INSERT INTO `student` VALUES ('20180570', '189', '张佩君', '4260e7eabc193825e5a09c31c41d9c739703be50');
INSERT INTO `student` VALUES ('20180571', '189', '李佩纬', '2bfba6b3b2af0ccf35dcc4f6166d474cb91266e8');
INSERT INTO `student` VALUES ('20180572', '189', '黄心', '7ee08d3afb3a2ef0b04a9ebd0698bb2fffddc587');
INSERT INTO `student` VALUES ('20180573', '189', '李旭友', 'f33f7ae89c2c6ab8e29a3cb0a97bb1f9456aacba');
INSERT INTO `student` VALUES ('20180574', '189', '王健以', 'fa1a65120bd41529ad60271db0cef24aab4a57c3');
INSERT INTO `student` VALUES ('20180575', '189', '蔡幸引', '05a53e3696e2a6dd37964f5721d34101689ecac8');
INSERT INTO `student` VALUES ('20180576', '189', '刘智钩', '0fb914ab018d3fbf1e69f5bcd0caa0559f47fe0c');
INSERT INTO `student` VALUES ('20180577', '189', '张佳颖', '7c33876368ece2e1b804a2d191df26be063e42d9');
INSERT INTO `student` VALUES ('20180578', '189', '郭东欣', 'e77f8d53c6dfa1c3f308adcfa8a42cd169cb8a8b');
INSERT INTO `student` VALUES ('20180579', '189', '黄志忠', '7a9ca14dcab2ffdcfc790dac3afe5ba5be292823');
INSERT INTO `student` VALUES ('20180580', '189', '李娇郁', '3db2991a3bd1f2ca292a463744f4136d61b1faa3');
INSERT INTO `student` VALUES ('20180581', '189', '许欣怡', '9f682df245668969bbcd5395bdc2882591eeecde');
INSERT INTO `student` VALUES ('20180582', '189', '杜劭依', '985d6ac20b189c12b3cad0bd3af82450e25024c8');
INSERT INTO `student` VALUES ('20180583', '189', '荣美君', '9c676e003b8932ac49d4d3a18467c0b59e3e3fb6');
INSERT INTO `student` VALUES ('20180584', '189', '陈翠昆', 'c6eeaa0539eaa4ce33dfb9e4b4eee1cfc0cbf6e7');
INSERT INTO `student` VALUES ('20180585', '189', '陈昆绍', 'a32c5cfee76478050154a15ca6743a532e27b926');
INSERT INTO `student` VALUES ('20180586', '189', '黄志佩', '4088f87e6ecef91b275bafd8c53fe699192d23f0');
INSERT INTO `student` VALUES ('20180587', '189', '黄舜文', 'e4dd8a3f00e999f798719337af6085d777f539d5');
INSERT INTO `student` VALUES ('20180588', '189', '刘丽卿', '55da3f56239d2acf0ec75f787f59ad0673af5057');
INSERT INTO `student` VALUES ('20180589', '189', '张倩纬', '867cd58f3fe352905cc5b21cb41c523ca92da469');
INSERT INTO `student` VALUES ('20180590', '189', '施珊昆', 'efa260adfcac648aa5df57fc33520b5e0a3fb0c3');
INSERT INTO `student` VALUES ('20180591', '189', '郑纬水', '2134834173800a88be598393763c66c179d793a1');
INSERT INTO `student` VALUES ('20180592', '189', '林明玫', 'ed29c0d8b33574e6b27cb730300cda87fcb2c619');
INSERT INTO `student` VALUES ('20180593', '189', '郑琦希', '620807a1bbd690fc48597698e7f449e961505536');
INSERT INTO `student` VALUES ('20180594', '190', '童家贤', 'c2548064eaf018a1d481dffb9900c93eb7bdef13');
INSERT INTO `student` VALUES ('20180595', '190', '郭峻豪', 'edd6bb4181065a5b9fb559ad9fddeef16a975d07');
INSERT INTO `student` VALUES ('20180596', '190', '林雅豪', 'ad1bf290f3ae791d4ca98700eafe4daf341b103c');
INSERT INTO `student` VALUES ('20180597', '190', '曲祯妹', '8b4753ed1cb27a4a5b8c6cfe938b1d7ec5b5396c');
INSERT INTO `student` VALUES ('20180598', '190', '林冠宇', '91eb375e8e71d9ce2f7cde8b0a757f66c94c998a');
INSERT INTO `student` VALUES ('20180599', '190', '陈珍莹', '13b724905530d4de5bfaeb714bc2c7f1f2ee2992');
INSERT INTO `student` VALUES ('20180600', '190', '简玫君', '15aa0c7e8fbd2923db7041d012e8838d66b9572d');
INSERT INTO `student` VALUES ('20180601', '190', '杜阳吟', '3bb18d9ab531def40a51e637a236689460f8d373');
INSERT INTO `student` VALUES ('20180602', '190', '许雅姜', '73fb9760f330bcf6d3b61d28a67ccc8ba37a7f8f');
INSERT INTO `student` VALUES ('20180603', '190', '叶木书', '8d255e1e608e20d07f0fcfbcb95bc14abffba589');
INSERT INTO `student` VALUES ('20180604', '190', '黄文其', 'f8d0f85975e49b959799cc52847110cc940b9db1');
INSERT INTO `student` VALUES ('20180605', '190', '陈景彦', '8290abc6c261e044710e7d616082ab51cb377262');
INSERT INTO `student` VALUES ('20180606', '190', '蒋承凯', 'a29e971b5176a9fadde4eb86c851c7d66de8004b');
INSERT INTO `student` VALUES ('20180607', '190', '黄依萍', 'aa62ffff47619bf0b14843d4865e7dac00e278ef');
INSERT INTO `student` VALUES ('20180608', '190', '黄珊秋', '72ab8108eff0514f059c30e2e277c37a9aaf1b04');
INSERT INTO `student` VALUES ('20180609', '190', '郑文贤', '80cc9feae5756e54abd79a88f8a4e233160b5674');
INSERT INTO `student` VALUES ('20180610', '190', '柯元燕', 'dad39ce1a0f516e191b0b515ea02e6cbc4ea76b6');
INSERT INTO `student` VALUES ('20180611', '191', '李思雄', '63843e04b0f7a32d94539cf328ed335d39085a56');
INSERT INTO `student` VALUES ('20180612', '191', '王绍玉', 'aa4b27d555e488b85795434762b6633c21c68bb5');
INSERT INTO `student` VALUES ('20180613', '191', '金尧珊', 'ae694b0755cd5eed5886ec4d8e658bde9639331d');
INSERT INTO `student` VALUES ('20180614', '191', '李政绍', '1bdf1a2fc92382e70ba7d9f31ae616547c06f2b2');
INSERT INTO `student` VALUES ('20180615', '191', '叶法盛', '2456caf1512365bb4622c2331d4dd695abb7652b');
INSERT INTO `student` VALUES ('20180616', '191', '苏琪山', '8746b7e5d534efa196e92e53c61ec747f4c936a5');
INSERT INTO `student` VALUES ('20180617', '191', '邱思好', '30222b26c6fe9abd40484df71711d3031a28c6bf');
INSERT INTO `student` VALUES ('20180618', '191', '王若芳', 'ff6d1d2c3324408300408b915aa5c531b6db0e48');
INSERT INTO `student` VALUES ('20180619', '191', '黎彦君', 'ec91fc2dc062c0f220b5d7b52ac6446011bf98cd');
INSERT INTO `student` VALUES ('20180620', '191', '冷翊瑜', 'cf32406111908544e504c84731147f072cdf2fbd');
INSERT INTO `student` VALUES ('20180621', '191', '张明真', 'dc51d239fbced2ce3562b4cf820eac1e2b2344c7');
INSERT INTO `student` VALUES ('20180622', '191', '李琪源', '8157eff8389a499cc91e0a86a185f46ea99aa5d5');
INSERT INTO `student` VALUES ('20180623', '191', '林素侑', '01eebb18768df62af78c266abbfd0a39920891da');
INSERT INTO `student` VALUES ('20180624', '191', '孟敏宇', '5dca477752fc50226595c6a93528eaf3297dbcf8');
INSERT INTO `student` VALUES ('20180625', '191', '怀雅惠', '44b2920d7e9cb7c0ab668fd380af0c242dc27ad4');
INSERT INTO `student` VALUES ('20180626', '191', '吴士弘', '9a84e151813e6605a751da99bf06757a0cb5b278');
INSERT INTO `student` VALUES ('20180627', '191', '张世志', '47d5c9c207cca57d0fc560882f7b1a258121a579');
INSERT INTO `student` VALUES ('20180628', '191', '袁志铭', '3f4ed2f1010b876ed91f61416a6515fd5b7758b1');
INSERT INTO `student` VALUES ('20180629', '191', '林千惠', 'bdab02b526850c0ef562ff382a7d312349c611d3');
INSERT INTO `student` VALUES ('20180630', '191', '黄淑贞', '2c9baea38488b23d572875080939b4cb778835b8');
INSERT INTO `student` VALUES ('20180631', '191', '王宗盛', '6e9aaa5a8a5e8ead9c7e1409fe10d31d41288a5a');
INSERT INTO `student` VALUES ('20180632', '191', '吴永臻', 'e7ee3efaf77443c04473b4a88385f8f7806071d5');
INSERT INTO `student` VALUES ('20180633', '191', '陈富财', '43b4d1d4656278e0d1055d505443f404f81ab422');
INSERT INTO `student` VALUES ('20180634', '191', '钱孟儒', '08ec2efcf0142e45c607570add5be471abd4504c');
INSERT INTO `student` VALUES ('20180635', '191', '谢百宜', '83a002e8ffbe10a8e5bfd289b565b247092a9b70');
INSERT INTO `student` VALUES ('20180636', '191', '曹振豪', 'bc60205da2555fc0304c24d2a1b8532bba3350e5');
INSERT INTO `student` VALUES ('20180637', '191', '陈品妃', '88a9d5a83b2b7e4bc74200cc205858df88a90f44');
INSERT INTO `student` VALUES ('20180638', '191', '吴升财', 'afc3bf9d346f20c15bd914465c0beae12e0dba2e');
INSERT INTO `student` VALUES ('20180639', '191', '陈昀雪', '40e0ce8abc662ad8d6a7b5f1d1a0e297b3036980');
INSERT INTO `student` VALUES ('20180640', '191', '高淑娟', 'a52b27e785768645815cc7cb4f28d4278538de42');
INSERT INTO `student` VALUES ('20180641', '191', '林智钧', 'd2578a848888259fc29e19f4770e0f27690a02ea');
INSERT INTO `student` VALUES ('20180642', '191', '林秋平', '99316daea530a41f7e3cddaea0561a59d2dc23f0');
INSERT INTO `student` VALUES ('20180643', '191', '王汉季', 'dcd7d0e3f3c05153d22d9f1d8caff4ab1b270ffe');
INSERT INTO `student` VALUES ('20180644', '191', '黄仁添', '4c8596c838c9d498b000d5fab25d2c2ea657588e');
INSERT INTO `student` VALUES ('20180645', '191', '詹雅如', 'f7b41d20b69937da146fc75bff4c97615532586b');
INSERT INTO `student` VALUES ('20180646', '191', '蔡佳麟', '961cc96ada94bed0d2ff9d76556e8651995d940f');
INSERT INTO `student` VALUES ('20180647', '191', '张美君', '17820ac1fd68b22540b4a76c24849312e7f79c58');
INSERT INTO `student` VALUES ('20180648', '191', '孙姿吟', '4de62d12209f2c3b18bc8a19eca399e914835762');
INSERT INTO `student` VALUES ('20180649', '191', '陈孟善', '491173598037c270f1fe2d1ccbd6b58c7ed459be');
INSERT INTO `student` VALUES ('20180650', '191', '邓威育', '70ac2ffcf11f24d59360e0d4cefb1816a96053a4');
INSERT INTO `student` VALUES ('20180651', '191', '谢博容', '93f271ad5efd7ea64a800c9acfe0b34fc19f58e3');
INSERT INTO `student` VALUES ('20180652', '191', '邓宗毅', '918fc64d3247435e25e80875ecaa5b39e3ed48c2');
INSERT INTO `student` VALUES ('20180653', '191', '陈伟，', 'e1c03d2c445ffd0b7d000b732c8108a2e9145245');
INSERT INTO `student` VALUES ('20180654', '191', '林原隆', 'db00e4fdc8a6d8fc749a23649c9ec9343051ec47');
INSERT INTO `student` VALUES ('20180655', '191', '骆修秋', '4dcee7f85df40fc71dcad450a6cbc55190e1253b');
INSERT INTO `student` VALUES ('20180656', '191', '李宜喜', 'e30e49d63907db14c48c5ad063ff7577b7ab5248');
INSERT INTO `student` VALUES ('20180657', '191', '张雅婷', 'f90a34bcd66e597a5d391005bf1e14a7c70f1d2c');
INSERT INTO `student` VALUES ('20180658', '191', '许志紫', 'f597ae7c454f8d38ef01b322ad0cdbaa40040e7a');
INSERT INTO `student` VALUES ('20180659', '191', '陈子杰', '9dbb7f83a82dff4d62f7f5f2c0491527ce35cce8');
INSERT INTO `student` VALUES ('20180660', '191', '杨隆志', '6765c043a097743fe613e347c1cd7f770096750d');
INSERT INTO `student` VALUES ('20180661', '191', '李淑芬', '28903f610228f970292b06382eae94ae10efa9a0');
INSERT INTO `student` VALUES ('20180662', '191', '李惠文', '091d039b02ddf4d2fb7f5be76e1c77465d6b4ec7');
INSERT INTO `student` VALUES ('20180663', '191', '徐治蓉', 'b66cd90e3946dd63b5a914d5eb2c7eddb46177ec');
INSERT INTO `student` VALUES ('20180664', '191', '陈季苹', '88547be1130859cf095ec35f890a1a53eafa9ac2');
INSERT INTO `student` VALUES ('20180665', '191', '陈佳霖', 'af7166a5d6ddde19c3a7fd202d93ee963ea22132');
INSERT INTO `student` VALUES ('20180666', '191', '赖和慈', 'cd3f0c85b158c08a2b113464991810cf2cdfc387');
INSERT INTO `student` VALUES ('20180667', '191', '李怡冷', '74da6152f5b23ae319b48bec60aff34ee65862cc');
INSERT INTO `student` VALUES ('20180668', '191', '林育来', '34c66477519b949b09b45e131347c17b5822a30a');
INSERT INTO `student` VALUES ('20180669', '192', '李宛仪', '9f3bdbf605248e180acba43499e6c6cbcec07427');
INSERT INTO `student` VALUES ('20180670', '192', '高启淑', '1cf9ade625b515864393eacfeb943eaeb0e52814');
INSERT INTO `student` VALUES ('20180671', '192', '吴碧沛', '97e01b6f38ed3790a7fed91dda9b2f288222e77d');
INSERT INTO `student` VALUES ('20180672', '192', '蔡宗奇', '540d3e47795cb7cf660d17fac99e2ad4296c26ca');
INSERT INTO `student` VALUES ('20180673', '192', '刘惠雯', 'dca7d04102c326cf00ed5aac983d712827329f31');
INSERT INTO `student` VALUES ('20180674', '192', '欧郁雯', 'ee49886656eacc1451a1a06ad61d7a8b31448650');
INSERT INTO `student` VALUES ('20180675', '192', '陈孟伟', 'fcd72fa5e79091747b312d4bdf3a5368d2be87b3');
INSERT INTO `student` VALUES ('20180676', '192', '黄良财', 'c6cf93cb5f3e51a3053e0c15aa871977512f3515');
INSERT INTO `student` VALUES ('20180677', '192', '张介玫', 'e0cc7b71e9bf62b758889fa83aa7335372f79de0');
INSERT INTO `student` VALUES ('20180678', '192', '诸智湖', 'b2029ba5ea1042d78c96d3888897571eea8c27fa');
INSERT INTO `student` VALUES ('20180679', '192', '陈雅惠', 'eac6819d6e578da7ba6eed2a8df7ca3d425246c8');
INSERT INTO `student` VALUES ('20180680', '192', '林华的', 'fab19abfc186474354d059987002dfd06da3ddce');
INSERT INTO `student` VALUES ('20180681', '192', '刘慧惟', '89d79a520700d1cce8a6d6c0873ae93de21ffcc0');
INSERT INTO `student` VALUES ('20180682', '192', '赖碧仲', '7fd2b74e8017425780436f5257d01e4ab14b9cc2');
INSERT INTO `student` VALUES ('20180683', '192', '温哲湖', '4f2706558a59b0c71f4a31a81345052fc8623919');
INSERT INTO `student` VALUES ('20180684', '192', '赖文豪', 'a79e9a409bded1928e5dad9765d53e7bce91d555');
INSERT INTO `student` VALUES ('20180685', '192', '王怡奇', '27cfac7148112eaa048ea53bbeb10cacab631742');
INSERT INTO `student` VALUES ('20180686', '192', '陈韵惠', 'cea6475abf50000b50fe25c592e079363689f59e');
INSERT INTO `student` VALUES ('20180687', '192', '郭胜治', 'dbe8ddfe63caf36d00ca9e558b358c59d1434e04');
INSERT INTO `student` VALUES ('20180688', '192', '梁佳慧', '8ff059157542d2c31f0e43fc7f2325343e603875');
INSERT INTO `student` VALUES ('20180689', '192', '梁晓雯', '53c53c5d2b630c0d912264bb9edf8cf6f0afa260');
INSERT INTO `student` VALUES ('20180690', '192', '陈育珍', 'd9fce17200317431b1b43b27508224cf0294759a');
INSERT INTO `student` VALUES ('20180691', '193', '梁筱行', '3da7e2c2144502d7115bee98a0dfe95030345b43');
INSERT INTO `student` VALUES ('20180692', '193', '黄宗筠', '6d3eeb1a2cc4cb90eb87ab1002ed6bb801b3aae1');
INSERT INTO `student` VALUES ('20180693', '193', '阮紫瑁', 'd69b923df6140a16aefc89546a384e0493641fbe');
INSERT INTO `student` VALUES ('20180694', '193', '韩晓轩', 'd2e19c4182d68093904d9bf3744ac0c3a8bc8238');
INSERT INTO `student` VALUES ('20180695', '193', '弓文欣', '00a6915f2bd395a55fb85aed647039e4136e35cb');
INSERT INTO `student` VALUES ('20180696', '193', '周淑贞', '4c87e5e9fc1a564781c398618687a2f5cad0abb8');
INSERT INTO `student` VALUES ('20180697', '193', '李骏轩', 'ff5ae4a7485c5c734d9e9cd8a8d875bf5ebddf60');
INSERT INTO `student` VALUES ('20180698', '193', '黄俊颖', '07eb1cd77ab3f5be92ee0c7050d2048fa1390e4c');
INSERT INTO `student` VALUES ('20180699', '193', '黄建中', '8666e1e6084dc8e20443de41f6826d13d4e3b32b');
INSERT INTO `student` VALUES ('20180700', '193', '吴惠文', 'd8e4bbea3af2e4861ad5a445aaec573e02f9aca2');
INSERT INTO `student` VALUES ('20180701', '193', '许梅天', '9170981d59d0f8d3f003ef0f289394ded6a00696');
INSERT INTO `student` VALUES ('20180702', '193', '周丽珠', 'a085216616587a553a52ec5faf1e61bfacf2bbfa');
INSERT INTO `student` VALUES ('20180703', '193', '夏宏达', '8fc1bb57c95fe04d4a8acab34ca0576ac19fdc01');
INSERT INTO `student` VALUES ('20180704', '193', '郭湖睿', 'a093a39de68a668cd79e97f49b597f15f3ad5609');
INSERT INTO `student` VALUES ('20180705', '193', '韩雅雯', '794bb3681babb52a3960b4b4802cb2941ec86aa5');
INSERT INTO `student` VALUES ('20180706', '193', '张伟智', 'de9a90c16b82748e2c528c4e9f25c06e8837ee36');
INSERT INTO `student` VALUES ('20180707', '193', '詹营贵', '2a8ae2469569e6eccde1a5b5b16eb076d0769ad3');
INSERT INTO `student` VALUES ('20180708', '193', '刘冠宇', 'b6c3f8f43516460ff7a23fb24c33ae4ab854635e');
INSERT INTO `student` VALUES ('20180709', '193', '曾宛真', '29da9bc33b146db5b36af2908861e1de88c25fc8');
INSERT INTO `student` VALUES ('20180710', '193', '吴惠仪', '86e55aec99bfd3868b399afe0c5069bd2a7b7d18');
INSERT INTO `student` VALUES ('20180711', '193', '韩孟儒', '7919ae519f96a6645a5640c381f954df58d2d2d2');
INSERT INTO `student` VALUES ('20180712', '193', '李家铭', 'a85f2d02e23cd73f8f9a7e5564778deb983ecb2f');
INSERT INTO `student` VALUES ('20180713', '193', '赖哲荣', '84b0b577501b6c0162aea7c1353b300e66a9fe4a');
INSERT INTO `student` VALUES ('20180714', '193', '陈建纬', '3acc03b58fc090f39e4021239a795efa3302a155');
INSERT INTO `student` VALUES ('20180715', '193', '林威绿', '32e9d389ede4a021467f51eea81dc2bde15a33ad');
INSERT INTO `student` VALUES ('20180716', '193', '许佩桦', '8df1bd5982b694d09ace0550ed9f0738fc91dc3e');
INSERT INTO `student` VALUES ('20180717', '193', '吴欣星', 'e1c1bfebab6bf67d6a890159995b9edf156ac725');
INSERT INTO `student` VALUES ('20180718', '194', '刘育亦', '395ea62457ba1302a696ef4bf8c3ebec74b6f0ac');
INSERT INTO `student` VALUES ('20180719', '194', '黄国星', '83950160648e3b8fe394c1cd9633d79cad816c06');
INSERT INTO `student` VALUES ('20180720', '194', '童淑玲', 'aeaa8a872d9de96a7c8f7f1014fd6e4b1185f1d7');
INSERT INTO `student` VALUES ('20180721', '194', '刘伟伦', '0707dcc10ec1cfee92b537a96faab0a38f7bc5a1');
INSERT INTO `student` VALUES ('20180722', '194', '毛佳琳', '278e89d8c2da87688af1c1b00f468a10e7dbe61f');
INSERT INTO `student` VALUES ('20180723', '194', '杨淑花', 'f5354c576bb89b67972d7fe269df256a54fef036');
INSERT INTO `student` VALUES ('20180724', '194', '蒋姿吟', 'b19dc177a07ce563e09b457f13bf5a673ddfbba1');
INSERT INTO `student` VALUES ('20180725', '194', '金佑诚', '75d2a5a3c528920d00425f29099eed114b9134e0');
INSERT INTO `student` VALUES ('20180726', '194', '高旺盈', 'db667d12a4034fedb3d483274955503ca4a361e2');
INSERT INTO `student` VALUES ('20180727', '194', '吴雅玲', '90f98c0ea42c927c4b073038a1fbf401ffd4e2a1');
INSERT INTO `student` VALUES ('20180728', '194', '林蕙和', '8e6b8a73bce7324e2b6e4afa73ee4215b98e9432');
INSERT INTO `student` VALUES ('20180729', '194', '王均智', 'baa924ce1ee3617f30a87ca26b2aeb62911af478');
INSERT INTO `student` VALUES ('20180730', '194', '黄玉婷', '16a9efea4885a86a6c0e036b52e0b0bad6da1845');
INSERT INTO `student` VALUES ('20180731', '194', '王胜杰', '77895c1f680568edb1fe3d4e386593e6f40679f6');
INSERT INTO `student` VALUES ('20180732', '194', '黄惠祥', '9deb867b96b097fccf9bd932719fe347c49a2a7b');
INSERT INTO `student` VALUES ('20180733', '194', '林家青', 'bc3f9e234e98cfaebb57ded77079656b48f6840c');
INSERT INTO `student` VALUES ('20180734', '194', '赖维乐', '6229d318680435e210d96518f4fc6bf0390e3cac');
INSERT INTO `student` VALUES ('20180735', '194', '蔡翠希', 'a6b21a4281226e8a97c2e05517fbe546775efc6a');
INSERT INTO `student` VALUES ('20180736', '194', '蒋大鸿', '4b14fe7493932c29c0d1b85a3ba120bd22079c3e');
INSERT INTO `student` VALUES ('20180737', '194', '童百良', '4cae599309683b04925ec1cb7d79dfab04709af8');
INSERT INTO `student` VALUES ('20180738', '194', '刘克怡', '641e2c9fb629c63ff2e3222878abbe71b967acb8');
INSERT INTO `student` VALUES ('20180739', '194', '陈玉睿', '1c710b1ca4bc921803cf096a5b2bb48d55947e4d');
INSERT INTO `student` VALUES ('20180740', '194', '谢合海', '2e0ab5b38ac3a139b7527efc5eec2118105b82b0');
INSERT INTO `student` VALUES ('20180741', '194', '简江瑶', '23b23be9da2519c88f11c084310bcc0bf14417f8');
INSERT INTO `student` VALUES ('20180742', '194', '程琉婷', '02c8be94d9fa60afd0e8fab82a7f004105a90bee');
INSERT INTO `student` VALUES ('20180743', '194', '何怡如', 'f032e58930733b4d76fabb3398e75d86d881b245');
INSERT INTO `student` VALUES ('20180744', '194', '李雅雯', '193b3437a94374579772f3f1a8c8f08381218bf9');
INSERT INTO `student` VALUES ('20180745', '194', '钟雅雯', 'de8627f75ba1abcfafd00a0e75ad189105cfdc21');
INSERT INTO `student` VALUES ('20180746', '194', '于思秋', '9b3aa2709c85dba67b6f4901fbabc732f44cf074');
INSERT INTO `student` VALUES ('20180747', '194', '王裕仁', '5c1dc07026ceafcb704bdff1375815f30a769a13');
INSERT INTO `student` VALUES ('20180748', '194', '陈永秀', '6d40f903e9f072ed9ed21889e1520272247f6cc1');
INSERT INTO `student` VALUES ('20180749', '194', '陈恵如', '01055fedad58f1885e2646cf3a0012122b711da6');
INSERT INTO `student` VALUES ('20180750', '194', '黄美君', '404c735f21d00fee39a13210d54844f3cec069c7');
INSERT INTO `student` VALUES ('20180751', '194', '林盈秀', '758a25f7dd163311b02efd5de19535312f7c1225');
INSERT INTO `student` VALUES ('20180752', '194', '王姿雯', 'b7ecf1ca1c97492de831d17a3ab559d4a1f8b735');
INSERT INTO `student` VALUES ('20180753', '194', '王旻峰', 'c32a67a05e6b1c8b7a2b48059cdcd5007a4a0900');
INSERT INTO `student` VALUES ('20180754', '194', '郭淑卿', 'b246c7491a540d40da2bfe4e6780620f4f926797');
INSERT INTO `student` VALUES ('20180755', '194', '谢盈冰', '52342fa440fbbcdc12a30730096226018453ae15');
INSERT INTO `student` VALUES ('20180756', '194', '魏淑华', '8989f7bc2eb8e9ae09553acd93f997372f7add7b');
INSERT INTO `student` VALUES ('20180757', '194', '刘志宜', 'd64ce8d6017f0d3ab6d528cf5dfd616ae05c32b4');
INSERT INTO `student` VALUES ('20180758', '194', '张怡婷', '82a50612a57ad5c00b0df9bafbcd379d25c6fbda');
INSERT INTO `student` VALUES ('20180759', '194', '梁淑敏', 'dcdee608f07355c48e6f028cb5790c7c436fc3be');
INSERT INTO `student` VALUES ('20180760', '194', '王白木', '1382ac8c6624ca5424ef3baa3d79f3d9f051d913');
INSERT INTO `student` VALUES ('20180761', '194', '方劭中', '8d1218244d96823a1ecdf1b383e010d29b57a3cc');
INSERT INTO `student` VALUES ('20180762', '194', '田火劭', 'c99a2a26bd03c1536aa7684d3acb54914f099b3f');
INSERT INTO `student` VALUES ('20180763', '194', '叶佩正', 'e1de5f7134a427a6c9098ddecdf8e461eb8c8cda');
INSERT INTO `student` VALUES ('20180764', '194', '程巧欢', 'b5586099944014e589f483efe663318aa1979d56');
INSERT INTO `student` VALUES ('20180765', '194', '陈玮弘', 'e1f463f56b2a3203d08ed5a49e11a775cde98a50');
INSERT INTO `student` VALUES ('20180766', '194', '张毅琳', '581a8ed69cf5d505b989c438becd65e37c8de61e');
INSERT INTO `student` VALUES ('20180767', '194', '吴念筠', '81755a2845e39420c81902a3ce83dff1cfc782e7');
INSERT INTO `student` VALUES ('20180768', '194', '张美惠', 'ad2ad593b7a4db4d077dc9f94444092aad698ee9');
INSERT INTO `student` VALUES ('20180769', '194', '陈欣白', '98079d38abe094b7ecaaf37b3519525df0abb891');
INSERT INTO `student` VALUES ('20180770', '194', '李怡文', '5b5b3319a315a7bfac818b638ae5f0780fde9021');
INSERT INTO `student` VALUES ('20180771', '194', '曹珊贵', '5d0fb669fb61cd51405bd09c1ac7e36a7407de8d');
INSERT INTO `student` VALUES ('20180772', '194', '梁家豪', 'd04d5003325c314117f803a6ead6b45503e8dd8b');
INSERT INTO `student` VALUES ('20180773', '194', '洪月暄', '190c4a70068f9453e2320b650e94869a1306adb0');
INSERT INTO `student` VALUES ('20180774', '194', '李铭茹', '66c4d1ec6dadbb7073bb7c5132e479ca4d2b59cf');
INSERT INTO `student` VALUES ('20180775', '194', '金杰惠', 'ccd04939f25266ed88d9dbb3eb298866911b04f4');
INSERT INTO `student` VALUES ('20180776', '194', '杨冠霖', '0aed854dc1ed3c76a4caff5ed4057ff16817cf30');
INSERT INTO `student` VALUES ('20180777', '194', '吴明宜', 'fc7a734dba518f032608dfeb04f4eeb79f025aa7');
INSERT INTO `student` VALUES ('20180778', '194', '陆怡要', '3aef3636924191a3e18fabc850c496f7e4110691');
INSERT INTO `student` VALUES ('20180779', '194', '黄立启', '63573d008f93d619a8743d27c55d58dcaab1c28d');
INSERT INTO `student` VALUES ('20180780', '194', '林雅芸', '1dd4b9d8e432a99a58165a17dd67e5bd8791272e');
INSERT INTO `student` VALUES ('20180781', '194', '林佩毓', 'c7e47b848aa68e937064a4420912fd41492a96fd');
INSERT INTO `student` VALUES ('20180782', '194', '李宜珊', '2817850c98d05a2bfe8023ee026d996ef515a85d');
INSERT INTO `student` VALUES ('20180783', '194', '钱怡伶', '43095da636f8f89ffb3c77322c35f66b828ad2bb');
INSERT INTO `student` VALUES ('20180784', '194', '刘宗翰', 'aa5076f800ef52b2ed0f0b8d88bfc68f7fd6a314');
INSERT INTO `student` VALUES ('20180785', '194', '林台斌', '298f93b1b0efeaf41f0ce468d29abfd252985869');
INSERT INTO `student` VALUES ('20180786', '194', '杨杰均', '40bc268f88e6d1bbfcc03874d9ed50ec2889a711');
INSERT INTO `student` VALUES ('20180787', '194', '连育如', 'e00988f42f7fc5f14ec6a0e7905789110f23c5de');
INSERT INTO `student` VALUES ('20180788', '194', '杨奕名', '0fe36dcdec420a26d899a03ecd0f9bec4fa850fe');
INSERT INTO `student` VALUES ('20180789', '194', '郭玉婷', 'fc1200c7a7aa52109d762a9f005b149abef01479');
INSERT INTO `student` VALUES ('20180790', '194', '王翊谦', '4912f56aec6f0ac56bbb7fa9231e79891c48afc5');
INSERT INTO `student` VALUES ('20180791', '194', '彭圣杰', '7325068e8007fede0cfd8909e0ca401be6875a5c');
INSERT INTO `student` VALUES ('20180792', '194', '张琦', '96e388c0b3b7fd874b48621e850335a8f06ca58d');
INSERT INTO `student` VALUES ('20180793', '195', '邓芬', '6fe3dfe314684a658c1b19ca7a8e3abd29afe23e');
INSERT INTO `student` VALUES ('20180794', '195', '陈佳芳', '41990bc354116362c6e6e8aa088d4e703104e6f7');
INSERT INTO `student` VALUES ('20180795', '195', '吴秋良', '61b5df41f1006a3d0ead4e4e6a6a61cb32496959');
INSERT INTO `student` VALUES ('20180796', '195', '陈文', '732c0a1fc174dbd3f549df2e96a5dae45900b9d0');
INSERT INTO `student` VALUES ('20180797', '195', '蔡靖玮', '176908bf2a39eef53edf72b60e99e339da45a9ca');
INSERT INTO `student` VALUES ('20180798', '195', '林雅舜', '0c0266790a989c46da65349746bc530286bb46c5');
INSERT INTO `student` VALUES ('20180799', '195', '张真勇', '01c0c90bf6c9358e58c84ab8a89e34676a26b823');
INSERT INTO `student` VALUES ('20180800', '195', '邱益勇', '290a52e4dd6282ca78bedde4f4d85b44e532cf99');
INSERT INTO `student` VALUES ('20180801', '195', '林懿淳', '549843ddfef8fcf36afa56c6286f2689537c8b2c');
INSERT INTO `student` VALUES ('20180802', '195', '郭美慧', 'acb033af040717d5654d64ccbf68de6e89ef23f5');
INSERT INTO `student` VALUES ('20180803', '195', '蔡智强', '9d00089c4194a6c21c2d95f432a2777dac29d24e');
INSERT INTO `student` VALUES ('20180804', '195', '张智苹', '43a784ccb1556e9769a993465bbe5bfe24b397d4');
INSERT INTO `student` VALUES ('20180805', '195', '陈冰茹', 'f890d752d330caf426a52643f6510d6efd597f3e');
INSERT INTO `student` VALUES ('20180806', '195', '李思纬', '264bb3273d03cef72b6fbd7618bce7349989fa94');
INSERT INTO `student` VALUES ('20180807', '195', '郑馨仪', '425ac6a281919b17c4d550ebeb2a5a130e579c7f');
INSERT INTO `student` VALUES ('20180808', '195', '程明辉', '38afd2ec2f9db9276c61839b6a900df67a7c9544');
INSERT INTO `student` VALUES ('20180809', '195', '陈弘善', 'cd8b7a4b8bb9bbf442a9d50fa465fe0e9d868a13');
INSERT INTO `student` VALUES ('20180810', '195', '陈政勋', 'a1496d4ad0a359b6fe93d819e4a2141bd9d9ac35');
INSERT INTO `student` VALUES ('20180811', '195', '卢琬杰', '6f8246002c1c5967ffc5e0ec80f2d7b59a60b1e3');
INSERT INTO `student` VALUES ('20180812', '195', '黄柏青', '872a319ee7a24a0ea855777702e15aae09deb042');
INSERT INTO `student` VALUES ('20180813', '195', '刘佩儒', '90b9305857ade3ea2021a4dd2723ccd54b46cf57');
INSERT INTO `student` VALUES ('20180814', '195', '陈韦贞', 'c9264fc806cdb67dc2080db570871067a6134c2d');
INSERT INTO `student` VALUES ('20180815', '195', '许台法', 'd528edaa45e66e08a9ece98272130b42e77cef55');
INSERT INTO `student` VALUES ('20180816', '195', '陶志祥', 'f022da4e40566305c0c8f39fd8f4b83dd5368834');
INSERT INTO `student` VALUES ('20180817', '195', '吴俊宁', '2e946dff15fb8c09a1a17ae80c6b45f0d5814cd4');
INSERT INTO `student` VALUES ('20180818', '195', '李孟岳', '37a53dc01b25a87e9cb4d985a8516a070fd39667');
INSERT INTO `student` VALUES ('20180819', '195', '刘明宪', '6ef2c7d1d434b898fc74412b636387ecc7d44c40');
INSERT INTO `student` VALUES ('20180820', '195', '吴耀英', '4b68e45a767407ba32c8a08340a8ad86e654cfca');
INSERT INTO `student` VALUES ('20180821', '195', '陈思桦', 'fbbf192d8343f1afa97f7a91d44cac3057f6a46f');
INSERT INTO `student` VALUES ('20180822', '195', '井弘坤', 'f4904ffc386432fe314a91609597028323de8e7f');
INSERT INTO `student` VALUES ('20180823', '195', '黄明萍', 'bf67a68ae9d0403801d0a0474efc79997d5fb6f3');
INSERT INTO `student` VALUES ('20180824', '195', '陈姿颖', '5fbdc8ab88676c89b2762cdda82d60d30a615164');
INSERT INTO `student` VALUES ('20180825', '195', '张成欢', '5375ef76b6dc19bb987a8eab45f489e7abd6ccc8');
INSERT INTO `student` VALUES ('20180826', '195', '张燕佳', 'cdd30858be416853ee25cea930d52dfe31401311');
INSERT INTO `student` VALUES ('20180827', '195', '李雪鸿', '1d57ccdb172aa69de437d5a52d2029e4f6250db2');
INSERT INTO `student` VALUES ('20180828', '195', '叶志伟', '0da8cbc894c3e556a24253917cfb703f8422388f');
INSERT INTO `student` VALUES ('20180829', '195', '王石竹', '459b50197f19fa4ed59faf560dd179d732ef0335');
INSERT INTO `student` VALUES ('20180830', '195', '孙心桂', '2019219149608a3f188cafaabd3808aace3e3309');
INSERT INTO `student` VALUES ('20180831', '195', '舒大钩', '3741d59112eee8ae8d8c64eab52203d4e26fe541');
INSERT INTO `student` VALUES ('20180832', '195', '林秋萍', 'e6c790b5c2e4b1307265a91b47820af1b2aa02c3');
INSERT INTO `student` VALUES ('20180833', '196', '柯美惠', '7331dfb7fe13c8c4d5e68c8ee419edf1a1884911');
INSERT INTO `student` VALUES ('20180834', '196', '姜上宪', 'bcdb6b3045cff6247e2db382d5006d8fb8434230');
INSERT INTO `student` VALUES ('20180835', '196', '林欣淳', 'd449b25b8df4400b649cf69e0ed4900ad8e8f8f9');
INSERT INTO `student` VALUES ('20180836', '196', '郭雅娟', '84c5bfbbc8e02d076ad931ba613d180180e1af7c');
INSERT INTO `student` VALUES ('20180837', '196', '宋采信', '9b41f9c0d7bce732d9af75c3b13bd58e9ce2a1e1');
INSERT INTO `student` VALUES ('20180838', '196', '韩贞仪', '2dc292b22ff8108e482f774eb6872f3e6a7be786');
INSERT INTO `student` VALUES ('20180839', '196', '李育羽', '706a95706215cee24eedce10a14654c8763799cb');
INSERT INTO `student` VALUES ('20180840', '196', '冯玫泰', 'c1d2fb848010807be783ec66dd6ddfad6863dbe7');
INSERT INTO `student` VALUES ('20180841', '196', '林姿儒', 'dcb63a930713a07525ae07a149f1a2df911925e0');
INSERT INTO `student` VALUES ('20180842', '196', '蔡敏坤', '62362fbf882221470f099d8d0a119df93ce19831');
INSERT INTO `student` VALUES ('20180843', '196', '林惠玲', 'c02b74809aaccf4972b9bb7059fa28aa91a255a3');
INSERT INTO `student` VALUES ('20180844', '196', '陈义', 'c2fc6ebf83d192af1de8fb65d5778ca5fc90592e');
INSERT INTO `student` VALUES ('20180845', '196', '林书祯', '292c7ebb82651f1977f19458c30a3bee33c808d7');
INSERT INTO `student` VALUES ('20180846', '196', '黄政霖', '8d163d76c569f509002af1a489436be60492eb8e');
INSERT INTO `student` VALUES ('20180847', '196', '谢姿卿', 'd18401b1bb37c5d9297cf16fc43858b4fdb37825');
INSERT INTO `student` VALUES ('20180848', '196', '李爱轩', '0e3808238b738aafc13a2a62f36d2a49dec4e191');
INSERT INTO `student` VALUES ('20180849', '196', '陈秀纬', '967d1c50af49565e3ab37a33780edf8a1d2d43ea');
INSERT INTO `student` VALUES ('20180850', '196', '蔡思', '842066fdfe3fe1ad160fe790e41af09901100f39');
INSERT INTO `student` VALUES ('20180851', '196', '郑世杰', 'b1b986990332a28a0a8011eb538f1ded941bb5ad');
INSERT INTO `student` VALUES ('20180852', '196', '黄伟成', '2dcc3820e64b3d1a7866b22935c695fd6aa3980a');
INSERT INTO `student` VALUES ('20180853', '196', '陈怡君', '43d6eec5164077cafdcbd2c7bb5bc888e4e526ca');
INSERT INTO `student` VALUES ('20180854', '196', '林庭玮', 'cbc34d5f74b1c72aff8c37c780075f5f69e0f4a4');
INSERT INTO `student` VALUES ('20180855', '196', '钱瑞钰', 'ebcab2a931b194b46b7af052d17915e104a90428');
INSERT INTO `student` VALUES ('20180856', '196', '罗嘉慧', 'efe76debc08f498165df7f907b88ebc293d438e1');
INSERT INTO `student` VALUES ('20180857', '196', '李仲伦', 'c44201fe5bac6de29c443c0c27cc988299120d45');
INSERT INTO `student` VALUES ('20180858', '196', '曾家盈', 'fe39d97644dc1d9ca43e372a80def23eeee66f34');
INSERT INTO `student` VALUES ('20180859', '196', '曹雅萍', '812cd8837314e6595fcb0208c63461945db91d06');
INSERT INTO `student` VALUES ('20180860', '196', '黄佳青', '301377d6f91551c76bdeceb505896fd2d31b918e');
INSERT INTO `student` VALUES ('20180861', '196', '金淳恩', 'd5843c2634578decb7f59b5452225a8eda6cb8a4');
INSERT INTO `student` VALUES ('20180862', '196', '陈士豪', '5753ab09dc6327a1a842ace14c04a539f32e3a30');
INSERT INTO `student` VALUES ('20180863', '196', '茹耀靖', 'c2145e337ae6b84c33e35cf4b6fd3f3d516631a0');
INSERT INTO `student` VALUES ('20180864', '197', '陈展礼', 'de1592e729f8f17f431e04338d66ea9cbf60f10a');
INSERT INTO `student` VALUES ('20180865', '197', '杜家玮', '81d51c78e6380c53c0310e296eabbeef5ffaae5f');
INSERT INTO `student` VALUES ('20180866', '197', '李晋丰', '60ab3237001939bc10e6dea7db7c841aa3af78a5');
INSERT INTO `student` VALUES ('20180867', '197', '周晴意', '1b75f1a8ff3bff3ef7a72c6935c3d01a94da8969');
INSERT INTO `student` VALUES ('20180868', '197', '左智超', '0b93caee71a9d214d0bbbc5622ea29507e3b8a7a');
INSERT INTO `student` VALUES ('20180869', '197', '陈明安', '7aeed2e80f473370df40802ca57db2a540612fb0');
INSERT INTO `student` VALUES ('20180870', '197', '谢翊美', 'c43d770fba803a943a7f6130c1315faffe1b0981');
INSERT INTO `student` VALUES ('20180871', '197', '王淑贞', 'edc10c00d8e6e26af72eb3d0aa3f86c48d54cdc1');
INSERT INTO `student` VALUES ('20180872', '197', '韩威任', '389b4f6ee5bd60bebd9d0708da23ba8b4134620b');
INSERT INTO `student` VALUES ('20180873', '197', '刘淑岳', 'eab06fe04deb99232cb1b02d276577f3d78c6a1e');
INSERT INTO `student` VALUES ('20180874', '197', '骆沛柔', '7d9f2b80826508a602a2b4adb20e470d5af19529');
INSERT INTO `student` VALUES ('20180875', '197', '张韦雪', 'c08d9955148bc0199789922ca232a77b69003980');
INSERT INTO `student` VALUES ('20180876', '197', '吴慈山', 'f2edcbe307792dde01089478537248d17cba8620');
INSERT INTO `student` VALUES ('20180877', '197', '王子智', 'd24b133ea364c6e908e29d944d2adb8589f973eb');
INSERT INTO `student` VALUES ('20180878', '197', '陈思香', '02db8e85943ffb476112d800c3010e376f2799e3');
INSERT INTO `student` VALUES ('20180879', '197', '黄美玲', '339e2ebc99d2a81e7786a466b5cbb9f8b3b81377');
INSERT INTO `student` VALUES ('20180880', '197', '周雯轩', '0b5e7f0138ad72cf4f28d2ee0b0364e1071af9be');
INSERT INTO `student` VALUES ('20180881', '197', '王彦维', 'c425c670244a64c875ef504945726c6ce2f74b63');
INSERT INTO `student` VALUES ('20180882', '197', '杨惠佳', '042ccdc6d60fbc84d9c1b0396ab0a6de37e41766');
INSERT INTO `student` VALUES ('20180883', '197', '李干惠', 'fa988283d77ce82140f0d1d6899e142c0072793e');
INSERT INTO `student` VALUES ('20180884', '197', '郭刚男', '8cc981aa1ecd37ee3376cacc031a214e24416c28');
INSERT INTO `student` VALUES ('20180885', '197', '林伟翔', 'c5f2486dc8a9ff70c8047c5d500cf9530ba8c1d3');
INSERT INTO `student` VALUES ('20180886', '197', '张书松', 'f2d28ed87a287564c1ede7c7828e871bb90acf6c');
INSERT INTO `student` VALUES ('20180887', '197', '李昀柔', 'ca29faeab6a0e17f067743a18b778011a48b2a17');
INSERT INTO `student` VALUES ('20180888', '197', '钱慧敏', 'eaa67f3a93d0acb08d8a5e8ff9866f51983b3c3b');
INSERT INTO `student` VALUES ('20180889', '197', '黄蕙', '4d7adc253fb88e2a45a2eb91e43b6e0ff7614587');
INSERT INTO `student` VALUES ('20180890', '197', '陈彦达', '749bc367fd90880f2d6dbe578e98e14645b0b26d');
INSERT INTO `student` VALUES ('20180891', '197', '邓怡雯', 'a0308ad7144dc96e564746d6109ec1939e897137');
INSERT INTO `student` VALUES ('20180892', '197', '胡伟智', '162cdc2a8b567050eae25592eeedaf33464a7a76');
INSERT INTO `student` VALUES ('20180893', '197', '陈琪瑶', '20b550ed90307eb97a123e00807de98b8a7bf13b');
INSERT INTO `student` VALUES ('20180894', '197', '王成祯', '1ecaebc17c517485f0abe45d78a7bc38d58268ad');
INSERT INTO `student` VALUES ('20180895', '197', '袁辛茂', 'f1c6feb7a3622b32bac480cf859a255cfaa778b9');
INSERT INTO `student` VALUES ('20180896', '197', '丁淑辉', '4ef47a459efc0cd5b5f9b48f87dcd9277d97129b');
INSERT INTO `student` VALUES ('20180897', '197', '白柏青', '0bab1dd8bdb38481cdd144b3acb6368847c0c662');
INSERT INTO `student` VALUES ('20180898', '197', '谢佳瑞', '6b2e24cf8d9de573219178fdf7baa3a32db4c4c2');
INSERT INTO `student` VALUES ('20180899', '197', '蔡宗要', '49ca49195c1b0aa585c76d6fa558694c89a7cba1');
INSERT INTO `student` VALUES ('20180900', '197', '詹昭云', '28cc2209b234d9183848f1c6a8ff13e0311057b9');
INSERT INTO `student` VALUES ('20180901', '197', '林惠婷', 'a071f3cf900d868205b8cc4c7e6aa7885cac3643');
INSERT INTO `student` VALUES ('20180902', '197', '谢雅晴', '0e2a8d2c235e4c425c2afa27ca7a0d089e5116ef');
INSERT INTO `student` VALUES ('20180903', '197', '蔡军羽', '437aa7b54ef6800c19f152c9ddcfebee7dd315e9');
INSERT INTO `student` VALUES ('20180904', '197', '徐文宏', '6f2c73e47a4a7da5ed35dc3954c0ea3e2fe863a3');
INSERT INTO `student` VALUES ('20180905', '197', '林孟英', '71ef3ed0695341b63e469eea3478e82b3aab9a27');
INSERT INTO `student` VALUES ('20180906', '197', '蔡原秀', '624ec06de69083ea715768cae1166b0f194c7639');
INSERT INTO `student` VALUES ('20180907', '197', '谢亭君', 'bd7c809d7d47026e7390ba3c6b253d24efcbe8cf');
INSERT INTO `student` VALUES ('20180908', '197', '蒋泓美', '2262b29b0cc33c64b49508a2c98aec7ccc60c51d');
INSERT INTO `student` VALUES ('20180909', '197', '涂正伟', 'ed665fd661589a7a1e89af479e198fcea0048c15');
INSERT INTO `student` VALUES ('20180910', '197', '方君豪', 'c70dfb07dc67c9dd6a8bc01130acf68d1fbf035f');
INSERT INTO `student` VALUES ('20180911', '197', '李美君', 'f3751173cf413033da9676f3ac6086157005059c');
INSERT INTO `student` VALUES ('20180912', '197', '黄雅婷', '3f989fc069ba7bf9afc1fa53d31e8cb4210e246f');
INSERT INTO `student` VALUES ('20180913', '197', '林冠学', 'fa5b7e293127b3837c39f7fbd05598f32c8ce1c9');
INSERT INTO `student` VALUES ('20180914', '197', '朱玫秀', 'b70158055ed1d6180d8028abe679b0c239c372c5');
INSERT INTO `student` VALUES ('20180915', '197', '蔡咏欣', '95ba225d2fecda66129fea8e09e4ef3ef67967a2');
INSERT INTO `student` VALUES ('20180916', '197', '陈伯白', '5a4b369c668f56e4b7362c58f40cef5390b90822');
INSERT INTO `student` VALUES ('20180917', '197', '陈思一', 'bd358eb39360c15b66de4295f1a299ed46740267');
INSERT INTO `student` VALUES ('20180918', '197', '王诗平', '96086e4f73c9e38874b64c0b6f1777396309956e');
INSERT INTO `student` VALUES ('20180919', '197', '潘莹轩', '3c155cb18334d1656a1d5dbca9eaabb27c2dcd32');
INSERT INTO `student` VALUES ('20180920', '197', '林宛莹', 'c9a4b8932ab905578b42be4b50eee08fb6883a3f');
INSERT INTO `student` VALUES ('20180921', '197', '李志贤', '502845c58c2c863cc56309a21287940ae0f42aaf');
INSERT INTO `student` VALUES ('20180922', '197', '邱健江', '4707f92226a773ddf1b2602948b881004c8a96e9');
INSERT INTO `student` VALUES ('20180923', '197', '谢佳琳', '07127c678f054242aa8adff217db10ac8aee409d');
INSERT INTO `student` VALUES ('20180924', '197', '周勇映', '27e7efd0c42c796ed39618e9b5a4b05a9b2e0fb0');
INSERT INTO `student` VALUES ('20180925', '197', '黄明韦', '5994e39b009fc3e1a82400b36732a5b9ba86b9bf');
INSERT INTO `student` VALUES ('20180926', '197', '王宗芝', '89da3d8a3c24dbd3e5e96f7f3896866f5e5eb878');
INSERT INTO `student` VALUES ('20180927', '197', '薛木凡', '62e5be992581c471abb1a11a6f5057aa70309f79');
INSERT INTO `student` VALUES ('20180928', '197', '杨惠珍', '3eac69f45044ab34a31ceb69ec9db9dda561ee5d');
INSERT INTO `student` VALUES ('20180929', '197', '张冠伶', 'e29f7b5c0960d53d40bc673a6b2cccd378f24e4b');
INSERT INTO `student` VALUES ('20180930', '197', '吴慧合', '5cff99d9ee987e698a99ea820734b378ef524bff');
INSERT INTO `student` VALUES ('20180931', '197', '许孟涵', '93acc66a6e5f774385d481147f4c00e167992708');
INSERT INTO `student` VALUES ('20180932', '197', '陈彦学', 'a8833c7535d845800e2f2def1ca24a26e4c8a831');
INSERT INTO `student` VALUES ('20180933', '197', '邱俊淳', 'a51c55ccd92d606a8027eb583e6cba25eb786891');
INSERT INTO `student` VALUES ('20180934', '197', '李允郁', 'fc4bcf654beeff467f578848a0ac77b9e212366c');
INSERT INTO `student` VALUES ('20180935', '197', '杨升海', '991e279c936f9745f8efaedcf46a7e25c14bb8df');
INSERT INTO `student` VALUES ('20180936', '197', '张与信', '1a16327c0d874646ac918dada4ce6e12cbe77074');
INSERT INTO `student` VALUES ('20180937', '197', '周宏伟', '7884821233b445e6204ce5d4ba2dbb79d8c9cfa6');
INSERT INTO `student` VALUES ('20180938', '197', '高孟君', '392330c06545067ca3809362e16f2b8e6d210e68');
INSERT INTO `student` VALUES ('20180939', '197', '韩淑芬', '89f549b2a5341a05a7e4afeb364599158a03a47f');
INSERT INTO `student` VALUES ('20180940', '197', '张金善', '0f3c97b08484e459263448e551ae79f2d31ca102');
INSERT INTO `student` VALUES ('20180941', '197', '陈美君', 'f8e20fddd3e45ed2936ab88dd39d7ae2466b21ed');
INSERT INTO `student` VALUES ('20180942', '197', '刘依海', '999bda026be38397da36b3a974e7ba9f40275f69');
INSERT INTO `student` VALUES ('20180943', '197', '林宗绿', 'cce637a738cef6fac143931ad866d768e84f2260');
INSERT INTO `student` VALUES ('20180944', '197', '黄启尧', '5959ddf778480d6def414be823854d561c30923b');
INSERT INTO `student` VALUES ('20180945', '197', '赖益谦', '929545a027825daea55353fab18e4dd87fd8c581');
INSERT INTO `student` VALUES ('20180946', '197', '张士铭', 'c26ab3bbd8b137f99cd83c2c1c0963bcc1a35cad');
INSERT INTO `student` VALUES ('20180947', '197', '方语念', 'e5cb675577c0197c6f178ec03244a6e40ec0a49d');
INSERT INTO `student` VALUES ('20180948', '197', '韩俊宏', '0a6bd727548a5af89987f1aa4017003b32f96fd0');
INSERT INTO `student` VALUES ('20180949', '197', '柳韦伶', '83b84c4e157eee972abbaa81a99395c3b7c6d367');
INSERT INTO `student` VALUES ('20180950', '197', '陈立绮', 'b63c6a708fdbc915f27e637f1fb6bc411ffa0052');
INSERT INTO `student` VALUES ('20180951', '197', '周佳欣', '69fa6513b84b61771964c90b552608300fca5914');
INSERT INTO `student` VALUES ('20180952', '197', '林瑞惠', 'da5e0596682ba273067955b008fa4acc159bce0e');
INSERT INTO `student` VALUES ('20180953', '197', '蔡宛蓉', '9335809622570e8aeb98a74c24d3281e4191bf13');
INSERT INTO `student` VALUES ('20180954', '197', '刘思洁', 'b3be0e5932b8baa2c9dd9c33206c31b95f78be2f');
INSERT INTO `student` VALUES ('20180955', '197', '王俊纶', '42220fe138b215debde3a938972db4573aa36b63');
INSERT INTO `student` VALUES ('20180956', '197', '王郁书', '5b0e281496c19db095942ec9983d904312de50bc');
INSERT INTO `student` VALUES ('20180957', '197', '林建成', '192a0ec9b5d2ce313556e280b29940db5ef9fb07');
INSERT INTO `student` VALUES ('20180958', '197', '王思达', 'cde51585f2fe2beb601c24a05d2eaf66e765ec55');
INSERT INTO `student` VALUES ('20180959', '197', '吕玫嘉', 'bb3612a0cf3e7e69f1be97829008c1c0cf943363');
INSERT INTO `student` VALUES ('20180960', '197', '陈添杰', '5af8ec20d4b1198738df2967a01b0d7c52246b97');
INSERT INTO `student` VALUES ('20180961', '197', '许巧智', '1f37ad2bad2f9295271415eea34a6cb99a79575b');
INSERT INTO `student` VALUES ('20180962', '197', '白春茂', '89c48c47268eee4dcf7c4d1629c9876f49285cfb');
INSERT INTO `student` VALUES ('20180963', '197', '郭珊绿', '4b1a62d54f5d635ceffa0118244d63e07779e04a');
INSERT INTO `student` VALUES ('20180964', '197', '吴逸绿', 'f03ac204449806e98d4e390480277e6542c95161');
INSERT INTO `student` VALUES ('20180965', '197', '杨家桂', 'ab71032b46410c97eefb49af7d10d8a10796db6a');
INSERT INTO `student` VALUES ('20180966', '197', '钱宗坤', 'bdf59a109a30762380d851c187b7ec5256d89b72');
INSERT INTO `student` VALUES ('20180967', '197', '黄琬学', '7d5e6660e54fec3122bc54a9fc39dc5c9f1a17a7');
INSERT INTO `student` VALUES ('20180968', '197', '陈韵伟', 'b3bf2140cfa214f15ab2fa9fa0d4817cb7dca3ac');
INSERT INTO `student` VALUES ('20180969', '198', '张凯任', 'aa2dcf3d29d072a67b5602eb70a22b35ae79c3e4');
INSERT INTO `student` VALUES ('20180970', '198', '李俊宪', '636fd04ebe81c6118b43c88dba88b3af34ba4c12');
INSERT INTO `student` VALUES ('20180971', '198', '巫凯翔', 'a4fc566c789cd0998efce12dbd3513e79eb93bbc');
INSERT INTO `student` VALUES ('20180972', '198', '黄雅芳', '5a14ec71168ce0b15c0e9cece3865e308e28e32b');
INSERT INTO `student` VALUES ('20180973', '198', '黄佳琪', '12b15c8db6c703fe4c7f4f8b71ca4ead06cca8b5');
INSERT INTO `student` VALUES ('20180974', '198', '王怡君', '8383da94fbc3893a50deddfd249fa33c22a1d215');
INSERT INTO `student` VALUES ('20180975', '198', '杨侑伟', '7698330419d7539e743e9f4985411faf76e64261');
INSERT INTO `student` VALUES ('20180976', '198', '王瑞杰', 'fbdd85a95ef4b3ec95cdc5580b2883d2ad82f597');
INSERT INTO `student` VALUES ('20180977', '198', '郑铭淑', '46a83636b1307bc646f0de50a607839c3f19d300');
INSERT INTO `student` VALUES ('20180978', '198', '李美铭', 'acca5b51d1713598f4e5a9e2c571e22bffbc235f');
INSERT INTO `student` VALUES ('20180979', '198', '王介乔', '7dcd5ff96b80f1bb263084ecb01e7696484613fd');
INSERT INTO `student` VALUES ('20180980', '198', '周明生', 'cb6c53bcb82b2a866cdadf97967e79a974478a88');
INSERT INTO `student` VALUES ('20180981', '198', '王佑诚', '32f9e6523b5b6b4675045d799fd81b11645b3cfb');
INSERT INTO `student` VALUES ('20180982', '198', '李文华', '1047b56881438260286a8e7a57e07c53445ceb19');
INSERT INTO `student` VALUES ('20180983', '198', '曾丽芬', '0514ab1836089bf8a100d7009abb5c5a02ed9388');
INSERT INTO `student` VALUES ('20180984', '198', '张伶月', '388e77e8949de491d4cc79ff92ad3b0a4ba7831b');
INSERT INTO `student` VALUES ('20180985', '198', '王静怡', '9486dd60074058ff0fb315c5185d182479035c69');
INSERT INTO `student` VALUES ('20180986', '198', '戴佳慧', 'cfd97391bd487ee1a2763054678f99f0b9bc94af');
INSERT INTO `student` VALUES ('20180987', '198', '程博仪', '8abcda2dba9a5c5c674e659333828582122c5f56');
INSERT INTO `student` VALUES ('20180988', '198', '房皇帆', '1368d271ae6a831386917603bd1f80b959a5c7dd');
INSERT INTO `student` VALUES ('20180989', '198', '陈明信', '2eab55ee69163f8454c57d780d7e9dbba68f2b0d');
INSERT INTO `student` VALUES ('20180990', '198', '黄子发', '639d67af2a68eab848d5a1febd5f8d565abb85ba');
INSERT INTO `student` VALUES ('20180991', '198', '张圣福', 'e9c535583dbe9b33c317f674d1942accca79f1b3');
INSERT INTO `student` VALUES ('20180992', '198', '李佩君', 'fad3ea4094a1e0792528fd5419b68db5ce72e603');
INSERT INTO `student` VALUES ('20180993', '198', '刘郁婷', '2c82513e25c553dfece46c99b6462368eb7f1b40');
INSERT INTO `student` VALUES ('20180994', '198', '罗玮婷', 'f22fe10d168fce2f05483b4520bb3be16826a496');
INSERT INTO `student` VALUES ('20180995', '198', '陈盈轩', '42405d7bf8a6c5d1cbf57dd8a4411bdf0b188b58');
INSERT INTO `student` VALUES ('20180996', '198', '沈永萱', 'ae7b4b79bbda7972ec40d8cd085c7875087973cc');
INSERT INTO `student` VALUES ('20180997', '198', '黄琼亚', '4a839f86b122140fda5b48dc57e2f0fc170d0356');
INSERT INTO `student` VALUES ('20180998', '198', '王豪贵', 'f66b7dcd21696a4242e1ff93608c405741802c92');
INSERT INTO `student` VALUES ('20180999', '198', '吴佩芳', 'afc97ea131fd7e2695a98ef34013608f97f34e1d');
INSERT INTO `student` VALUES ('20181000', '181', '吴亦凡', 'e3cbba8883fe746c6e35783c9404b4bc0c7ee9eb');
INSERT INTO `student` VALUES ('20181001', '181', '毕雯珺', 'dd01903921ea24941c26a48f2cec24e0bb0e8cc7');
INSERT INTO `student` VALUES ('20181002', '181', '杨超越', 'a5b1d7e217aa227d5b2b8a84920780cf637960e2');
INSERT INTO `student` VALUES ('20181003', '181', '白敬亭', '9f6bf828c80134b8d3e07b058045fba6acd4e9ac');
INSERT INTO `student` VALUES ('20181004', '181', '罗思源', '70b8dcb93382715a55ce5f2a8356ef5636a2d2da');
INSERT INTO `student` VALUES ('20181005', '181', '杨敏铝', '0477d720adf7c715b04850723531a5fb1bc5334b');
INSERT INTO `student` VALUES ('20181006', '181', '邓小英', '8554fe9ee0ed24d97cc3b500a33d4320c0fcd5a3');
INSERT INTO `student` VALUES ('20181007', '181', '林嘉敏', '1ccacea16652f70da4bfc9232ee20176fe1dc596');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `TeaNo` char(8) NOT NULL,
  `TeaName` char(20) NOT NULL,
  `DepartNo` char(10) NOT NULL,
  `Pwd` char(254) DEFAULT NULL,
  PRIMARY KEY (`TeaNo`),
  KEY `DepartNo` (`TeaName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('20210001', '陈书华', '01', '356a192b7913b04c54574d18c28d46e6395428ab');
INSERT INTO `teacher` VALUES ('20210002', '李丽礼', '01', 'da4b9237bacccdf19c0760cab7aec4a8359010b0');
INSERT INTO `teacher` VALUES ('20210003', '许贵宜', '01', '77de68daecd823babbb58edb1c8e14d7106e83bb');
INSERT INTO `teacher` VALUES ('20210004', '蔡慧娟', '01', '1b6453892473a467d07372d45eb05abc2031647a');
INSERT INTO `teacher` VALUES ('20210005', '江丽娟', '01', 'ac3478d69a3c81fa62e60f5c3696165a4e5e6ac4');
INSERT INTO `teacher` VALUES ('20210006', '刘育冰', '01', 'c1dfd96eea8cc2b62785275bca38ac261256e278');
INSERT INTO `teacher` VALUES ('20210007', '何家', '01', '902ba3cda1883801594b6e1b452790cc53948fda');
INSERT INTO `teacher` VALUES ('20210008', '黄慧玲', '01', 'fe5dbbcea5ce7e2988b8c69bcfdfde8904aabc1f');
INSERT INTO `teacher` VALUES ('20210009', '王淑勇', '01', '0ade7c2cf97f75d009975f4d720d1fa6c19f4897');
INSERT INTO `teacher` VALUES ('20210010', '吴亦扬', '01', 'b1d5781111d84f7b3fe45a0852e59758cd7a87e5');
INSERT INTO `teacher` VALUES ('20210011', '吴佳书', '01', '17ba0791499db908433b80f37c5fbc89b870084b');
INSERT INTO `teacher` VALUES ('20210012', '祖冠珠', '01', '7b52009b64fd0a2a49e6d8a939753077792b0554');
INSERT INTO `teacher` VALUES ('20210013', '卢俊嘉', '02', 'bd307a3ec329e10a2cff8fb87480823da114f8f4');
INSERT INTO `teacher` VALUES ('20210014', '郭志铭', '02', 'fa35e192121eabf3dabf9f5ea6abdbcbc107ac3b');
INSERT INTO `teacher` VALUES ('20210015', '罗扬妃', '02', 'f1abd670358e036c31296e66b3b66c382ac00812');
INSERT INTO `teacher` VALUES ('20210016', '杨淑华', '02', '1574bddb75c78a6fd2251d61e2993b5146201319');
INSERT INTO `teacher` VALUES ('20210017', '黄好伟', '02', '0716d9708d321ffb6a00818614779e779925365c');
INSERT INTO `teacher` VALUES ('20210018', '孙维芬', '02', '9e6a55b6b4563e652a23be9d623ca5055c356940');
INSERT INTO `teacher` VALUES ('20210019', '叶宣洁', '02', 'b3f0c7f6bb763af1be91d9e74eabfeb199dc1f1f');
INSERT INTO `teacher` VALUES ('20210020', '陈信俐', '02', '91032ad7bbcb6cf72875e8e8207dcfba80173f7c');
INSERT INTO `teacher` VALUES ('20210021', '谢琬婷', '02', '472b07b9fcf2c2451e8781e944bf5f77cd8457c8');
INSERT INTO `teacher` VALUES ('20210022', '陈筱杰', '02', '12c6fc06c99a462375eeb3f43dfd832b08ca9e17');
INSERT INTO `teacher` VALUES ('20210023', '周隆季', '02', 'd435a6cdd786300dff204ee7c2ef942d3e9034e2');
INSERT INTO `teacher` VALUES ('20210024', '涂慧君', '02', '4d134bc072212ace2df385dae143139da74ec0ef');
INSERT INTO `teacher` VALUES ('20210025', '陈怡君', '02', 'f6e1126cedebf23e1463aee73f9df08783640400');
INSERT INTO `teacher` VALUES ('20210026', '赖韵英', '03', '887309d048beef83ad3eabf2a79a64a389ab1c9f');
INSERT INTO `teacher` VALUES ('20210027', '杜定鸿', '03', 'bc33ea4e26e5e1af1408321416956113a4658763');
INSERT INTO `teacher` VALUES ('20210028', '王淑梦', '03', '0a57cb53ba59c46fc4b692527a38a87c78d84028');
INSERT INTO `teacher` VALUES ('20210029', '吴伟侑', '03', '7719a1c782a1ba91c031a682a0a2f8658209adbf');
INSERT INTO `teacher` VALUES ('20210030', '萧芳仪', '03', '22d200f8670dbdb3e253a90eee5098477c95c23d');
INSERT INTO `teacher` VALUES ('20210031', '陈筠智', '03', '632667547e7cd3e0466547863e1207a8c0c0c549');
INSERT INTO `teacher` VALUES ('20210032', '侯百宜', '03', 'cb4e5208b4cd87268b208e49452ed6e89a68e0b8');
INSERT INTO `teacher` VALUES ('20210033', '王淑娟', '03', 'b6692ea5df920cad691c20319a6fffd7a4a766b8');
INSERT INTO `teacher` VALUES ('20210034', '陈欣江', '03', 'f1f836cb4ea6efb2a0b1b99f41ad8b103eff4b59');
INSERT INTO `teacher` VALUES ('20210035', '吴胜杰', '03', '972a67c48192728a34979d9a35164c1295401b71');
INSERT INTO `teacher` VALUES ('20210036', '黄宜君', '04', 'fc074d501302eb2b93e2554793fcaf50b3bf7291');
INSERT INTO `teacher` VALUES ('20210037', '罗智钧', '04', 'cb7a1d775e800fd1ee4049f7dca9e041eb9ba083');
INSERT INTO `teacher` VALUES ('20210038', '刘淑娟', '04', '5b384ce32d8cdef02bc3a139d4cac0a22bb029e8');
INSERT INTO `teacher` VALUES ('20210039', '李慈泉', '04', 'ca3512f4dfa95a03169c5a670a4c91a19b3077b4');
INSERT INTO `teacher` VALUES ('20210040', '林莉婷', '04', 'af3e133428b9e25c55bc59fe534248e6a0c0f17b');
INSERT INTO `teacher` VALUES ('20210041', '丁容定', '04', '761f22b2c1593d0bb87e0b606f990ba4974706de');
INSERT INTO `teacher` VALUES ('20210042', '吴建豪', '04', '92cfceb39d57d914ed8b14d0e37643de0797ae56');
INSERT INTO `teacher` VALUES ('20210043', '潘于恭', '04', '0286dd552c9bea9a69ecb3759e7b94777635514b');
INSERT INTO `teacher` VALUES ('20210044', '赖怡伶', '04', '98fbc42faedc02492397cb5962ea3a3ffc0a9243');
INSERT INTO `teacher` VALUES ('20210045', '詹佳颖', '04', 'fb644351560d8296fe6da332236b1f8d61b2828a');
INSERT INTO `teacher` VALUES ('20210046', '傅姿蓉', '04', 'fe2ef495a1152561572949784c16bf23abb28057');
INSERT INTO `teacher` VALUES ('20210047', '沈洁铭', '04', '827bfc458708f0b442009c9c9836f7e4b65557fb');
INSERT INTO `teacher` VALUES ('20210048', '蔡文雯', '05', '64e095fe763fc62418378753f9402623bea9e227');
INSERT INTO `teacher` VALUES ('20210049', '王凯婷', '05', '2e01e17467891f7c933dbaa00e1459d23db3fe4f');
INSERT INTO `teacher` VALUES ('20210050', '张咏修', '05', 'e1822db470e60d090affd0956d743cb0e7cdf113');
INSERT INTO `teacher` VALUES ('20210051', '辛雅萍', '05', 'b7eb6c689c037217079766fdb77c3bac3e51cb4c');
INSERT INTO `teacher` VALUES ('20210052', '袁贤欢', '05', 'a9334987ece78b6fe8bf130ef00b74847c1d3da6');
INSERT INTO `teacher` VALUES ('20210053', '柯冠良', '05', 'c5b76da3e608d34edb07244cd9b875ee86906328');
INSERT INTO `teacher` VALUES ('20210054', '潘静宜', '05', '80e28a51cbc26fa4bd34938c5e593b36146f5e0c');
INSERT INTO `teacher` VALUES ('20210055', '黄明哲', '05', '8effee409c625e1a2d8f5033631840e6ce1dcb64');
INSERT INTO `teacher` VALUES ('20210056', '程俊宪', '05', '54ceb91256e8190e474aa752a6e0650a2df5ba37');
INSERT INTO `teacher` VALUES ('20210057', '陈宗颖', '05', '9109c85a45b703f87f1413a405549a2cea9ab556');
INSERT INTO `teacher` VALUES ('20210058', '陈玮郁', '05', '667be543b02294b7624119adc3a725473df39885');
INSERT INTO `teacher` VALUES ('20210059', '吴佩琪', '06', '5a5b0f9b7d3f8fc84c3cef8fd8efaaa6c70d75ab');
INSERT INTO `teacher` VALUES ('20210060', '陈馨薇', '06', 'e6c3dd630428fd54834172b8fd2735fed9416da4');
INSERT INTO `teacher` VALUES ('20210061', '陈营虹', '06', '6c1e671f9af5b46d9c1a52067bdf0e53685674f7');
INSERT INTO `teacher` VALUES ('20210062', '谢雅惠', '06', '511a418e72591eb7e33f703f04c3fa16df6c90bd');
INSERT INTO `teacher` VALUES ('20210063', '杨雅康', '06', 'a17554a0d2b15a664c0e73900184544f19e70227');
INSERT INTO `teacher` VALUES ('20210064', '简志旺', '06', 'c66c65175fecc3103b3b587be9b5b230889c8628');
INSERT INTO `teacher` VALUES ('20210065', '吕木云', '06', '2a459380709e2fe4ac2dae5733c73225ff6cfee1');
INSERT INTO `teacher` VALUES ('20210066', '宋湘婷', '06', '59129aacfb6cebbe2c52f30ef3424209f7252e82');
INSERT INTO `teacher` VALUES ('20210067', '张玮俊', '06', '4d89d294cd4ca9f2ca57dc24a53ffb3ef5303122');
INSERT INTO `teacher` VALUES ('20210068', '王姿吟', '06', 'b4c96d80854dd27e76d8cc9e21960eebda52e962');
INSERT INTO `teacher` VALUES ('20210069', '郑伟芳', '06', 'a72b20062ec2c47ab2ceb97ac1bee818f8b6c6cb');
INSERT INTO `teacher` VALUES ('20210070', '王文杰', '06', 'b7103ca278a75cad8f7d065acda0c2e80da0b7dc');
INSERT INTO `teacher` VALUES ('20210071', '王芸茜', '07', 'd02560dd9d7db4467627745bd6701e809ffca6e3');
INSERT INTO `teacher` VALUES ('20210072', '黄柏幸', '07', 'c097638f92de80ba8d6c696b26e6e601a5f61eb7');
INSERT INTO `teacher` VALUES ('20210073', '罗芸纶', '07', '35e995c107a71caeb833bb3b79f9f54781b33fa1');
INSERT INTO `teacher` VALUES ('20210074', '曾欣怡', '07', '1f1362ea41d1bc65be321c0a378a20159f9a26d0');
INSERT INTO `teacher` VALUES ('20210075', '陆怡萱', '07', '450ddec8dd206c2e2ab1aeeaa90e85e51753b8b7');
INSERT INTO `teacher` VALUES ('20210076', '黄干慈', '07', 'd54ad009d179ae346683cfc3603979bc99339ef7');
INSERT INTO `teacher` VALUES ('20210077', '袁静如', '07', 'd321d6f7ccf98b51540ec9d933f20898af3bd71e');
INSERT INTO `teacher` VALUES ('20210078', '张昆元', '07', 'eb4ac3033e8ab3591e0fcefa8c26ce3fd36d5a0f');
INSERT INTO `teacher` VALUES ('20210079', '陈采勇', '07', 'b74f5ee9461495ba5ca4c72a7108a23904c27a05');
INSERT INTO `teacher` VALUES ('20210080', '马荣真', '07', 'b888b29826bb53dc531437e723738383d8339b56');
INSERT INTO `teacher` VALUES ('20210081', '刘湘舜', '07', '1d513c0bcbe33b2e7440e5e14d0b22ef95c9d673');
INSERT INTO `teacher` VALUES ('20210082', '曹智强', '07', '76546f9a641ede2beab506b96df1688d889e629a');
INSERT INTO `teacher` VALUES ('20210083', '许雅玲', '07', '7d7116e23efef7292cad5e6f033d9a962708228c');
INSERT INTO `teacher` VALUES ('20210084', '王彦儒', '08', 'be461a0cd1fda052a69c3fd94f8cf5f6f86afa34');
INSERT INTO `teacher` VALUES ('20210085', '林国芸', '08', '1352246e33277e9d3c9090a434fa72cfa6536ae2');
INSERT INTO `teacher` VALUES ('20210086', '陈雅慧', '08', '3c26dffc8a2e8804dfe2c8a1195cfaa5ef6d0014');
INSERT INTO `teacher` VALUES ('20210087', '钱群秋', '08', 'e62d7f1eb43d87c202d2f164ba61297e71be80f4');
INSERT INTO `teacher` VALUES ('20210088', '游思好', '08', 'b37f6ddcefad7e8657837d3177f9ef2462f98acf');
INSERT INTO `teacher` VALUES ('20210089', '庾雅婷', '08', '16b06bd9b738835e2d134fe8d596e9ab0086a985');
INSERT INTO `teacher` VALUES ('20210090', '洪协慧', '08', '2d0c8af807ef45ac17cafb2973d866ba8f38caa9');
INSERT INTO `teacher` VALUES ('20210091', '林宜', '08', '4cd66dfabbd964f8c6c4414b07cdb45dae692e19');
INSERT INTO `teacher` VALUES ('20210092', '简淑芬', '08', '8ee51caaa2c2f4ee2e5b4b7ef5a89db7df1068d7');
INSERT INTO `teacher` VALUES ('20210093', '李文彬', '08', '08a35293e09f508494096c1c1b3819edb9df50db');
INSERT INTO `teacher` VALUES ('20210094', '何义秀', '08', '215bb47da8fac3342b858ac3db09b033c6c46e0b');
INSERT INTO `teacher` VALUES ('20210095', '游石如', '09', '8e63fd3e77796b102589b1ba1e4441c7982e4132');
INSERT INTO `teacher` VALUES ('20210096', '林家明', '09', '6fb84aed32facd1299ee1e77c8fd2b1a6352669e');
INSERT INTO `teacher` VALUES ('20210097', '杨晓燕', '09', '812ed4562d3211363a7b813aa9cd2cf042b63bb2');
INSERT INTO `teacher` VALUES ('20210098', '周泽通', '09', '31bd9b9f5f7b338e41b56183a2f3008b541d7c84');
INSERT INTO `teacher` VALUES ('20210099', '林建宁', '09', '9a79be611e0267e1d943da0737c6c51be67865a0');
INSERT INTO `teacher` VALUES ('20210100', '张坤燕', '09', '310b86e0b62b828562fc91c7be5380a992b2786a');

-- ----------------------------
-- View structure for coursetable
-- ----------------------------
DROP VIEW IF EXISTS `coursetable`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `coursetable` AS SELECT StuNo, course.CouNo,CouName,Classroom,time1,time2,time3
from course join stucou
on course.CouNo=stucou.CouNo ;

-- ----------------------------
-- View structure for statistic
-- ----------------------------
DROP VIEW IF EXISTS `statistic`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `statistic` AS select CouNo,max(score) as maxscore,
min(score) as minscore ,
count(*) as stunum , 
sum(case when score>=60 then 1 else 0 end) as passnum ,
avg(score) as avgscore,
count(case when score between 90 and 100 then 1 end) as over90,
count(case when score between 80 and 89 then 1 end)  as over80,
count(case when score between 70 and 79 then 1 end)  as over70, 
count(case when score between 60 and 69 then 1 end)  as over60, 
count(case when score between 50 and 59 then 1 end)  as over50, 
count(case when score between 40 and 49 then 1 end)  as over40, 
count(case when score between 30 and 39 then 1 end)  as over30, 
count(case when score between 20 and 29 then 1 end)  as over20, 
count(case when score between 10 and 19 then 1 end)  as over10,  
count(case when score between 0 and 9 then 1 end)  as over0 
from stugrade GROUP BY CouNo ;

-- ----------------------------
-- View structure for stugrade
-- ----------------------------
DROP VIEW IF EXISTS `stugrade`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `stugrade` AS select student.StuNo,student.StuName,student.ClassNo,score.score,score.CouNo,course.CouName
from student join score 
on student.StuNo=score.StuNo 
join course
on course.CouNo=score.CouNo 
order by score.CouNo,student.StuNo ;
