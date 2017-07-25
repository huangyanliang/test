/* This file is created by MySQLReback 2017-07-25 16:41:04 */
 /* 创建表结构 `bh_aboutus`  */
 DROP TABLE IF EXISTS `bh_aboutus`;/* MySQLReback Separation */ CREATE TABLE `bh_aboutus` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sty` int(4) NOT NULL DEFAULT '1' COMMENT '//预留属性(sty)',
  `topic` char(200) NOT NULL COMMENT '//标题',
  `domain` char(20) DEFAULT NULL COMMENT '//个性域名',
  `pic` varchar(100) DEFAULT NULL COMMENT '//图片',
  `intro` varchar(255) DEFAULT NULL COMMENT '//简介内容',
  `content` text COMMENT '//内容',
  `linkurl` varchar(200) DEFAULT NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示栏目',
  `ord` int(11) DEFAULT '0' COMMENT '//排序',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  `en_topic` char(200) DEFAULT NULL,
  `en_intro` varchar(255) DEFAULT NULL,
  `en_content` text,
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`),
  KEY `domain` (`domain`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_aboutus` */
 INSERT INTO `bh_aboutus` VALUES ('1','1','关于我们',null,'20170725/5976fd52c4db3.jpg','关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我','关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们',null,'1','1','2017-07-25 16:12:47',null,null,null),('2','1','服务优势',null,null,null,'服务优势',null,'1','0','2017-07-25 15:43:26',null,null,null),('3','1','联系我们',null,null,null,'联系我们',null,'1','2','2017-07-25 15:43:09',null,null,null);/* MySQLReback Separation */
 /* 创建表结构 `bh_adminrecord`  */
 DROP TABLE IF EXISTS `bh_adminrecord`;/* MySQLReback Separation */ CREATE TABLE `bh_adminrecord` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user` char(50) NOT NULL COMMENT '//管理员用户名',
  `ip` char(35) NOT NULL COMMENT '//登录IP',
  `date` datetime DEFAULT NULL COMMENT '//登录时间',
  PRIMARY KEY (`Id`),
  FULLTEXT KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=244 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_adminrecord` */
 INSERT INTO `bh_adminrecord` VALUES ('157','admin','127.0.0.1','2015-10-26 08:15:24'),('158','admin','127.0.0.1','2015-10-26 09:38:09'),('159','admin','127.0.0.1','2015-10-26 10:17:25'),('160','admin','127.0.0.1','2015-10-26 10:19:37'),('161','admin','127.0.0.1','2015-10-26 10:45:40'),('162','admin','127.0.0.1','2015-10-26 11:12:16'),('163','admin','127.0.0.1','2015-10-26 14:08:52'),('164','admin','127.0.0.1','2015-10-27 08:01:06'),('165','admin','0.0.0.0','2015-10-27 08:51:50'),('166','admin','127.0.0.1','2015-10-27 09:34:37'),('167','admin','127.0.0.1','2015-10-27 12:29:41'),('168','admin','127.0.0.1','2015-10-27 14:30:13'),('169','admin','127.0.0.1','2015-10-28 08:24:10'),('170','admin','127.0.0.1','2015-10-28 11:04:45'),('171','admin','127.0.0.1','2015-10-28 11:38:53'),('172','wang','127.0.0.1','2015-10-28 12:45:57'),('173','admin','127.0.0.1','2015-10-28 13:17:34'),('174','admin','127.0.0.1','2015-10-28 15:16:51'),('175','admin','127.0.0.1','2015-10-28 17:19:43'),('176','admin','127.0.0.1','2015-10-28 19:21:31'),('177','admin','127.0.0.1','2015-10-29 07:52:00'),('178','admin','127.0.0.1','2015-10-29 08:27:36'),('179','admin','127.0.0.1','2015-10-29 11:21:35'),('180','admin','127.0.0.1','2015-10-29 13:54:27'),('181','admin','127.0.0.1','2015-10-29 14:06:11'),('182','admin','127.0.0.1','2015-10-29 16:08:28'),('183','admin','127.0.0.1','2015-10-30 08:16:11'),('184','admin','127.0.0.1','2015-10-30 08:58:30'),('185','admin','127.0.0.1','2015-10-30 16:12:03'),('186','admin','127.0.0.1','2015-10-30 19:01:33'),('187','admin','127.0.0.1','2015-10-31 16:31:38'),('188','admin','127.0.0.1','2015-10-31 18:12:48'),('189','admin','127.0.0.1','2015-11-02 13:21:05'),('190','admin','127.0.0.1','2015-11-02 14:39:00'),('191','admin','127.0.0.1','2015-11-02 18:40:06'),('192','admin','127.0.0.1','2015-11-05 12:14:54'),('193','admin','127.0.0.1','2015-11-05 18:37:49'),('194','admin','127.0.0.1','2015-11-09 18:20:23'),('195','admin','127.0.0.1','2015-11-10 18:56:04'),('196','admin','127.0.0.1','2015-11-11 08:55:00'),('197','admin','127.0.0.1','2015-11-11 17:54:05'),('198','admin','127.0.0.1','2015-11-12 08:30:30'),('199','admin','127.0.0.1','2015-11-12 12:09:10'),('200','admin','127.0.0.1','2015-11-13 18:27:20'),('201','admin','127.0.0.1','2015-11-13 18:29:45'),('202','admin','127.0.0.1','2015-11-14 13:06:57'),('203','admin','127.0.0.1','2015-11-16 08:15:36'),('204','admin','127.0.0.1','2015-11-16 16:46:47'),('205','admin','127.0.0.1','2015-11-18 14:15:15'),('206','admin','127.0.0.1','2015-11-18 18:55:11'),('207','admin','127.0.0.1','2015-11-19 09:44:41'),('208','admin','127.0.0.1','2015-11-19 18:41:00'),('209','admin','127.0.0.1','2015-11-20 10:39:26'),('210','admin','127.0.0.1','2015-11-20 17:29:31'),('211','admin','127.0.0.1','2015-11-21 14:45:13'),('212','admin','127.0.0.1','2015-11-23 13:22:33'),('213','admin','127.0.0.1','2015-11-24 16:14:04'),('214','admin','127.0.0.1','2015-11-25 16:23:26'),('215','admin','127.0.0.1','2015-11-25 19:59:55'),('216','admin','127.0.0.1','2015-11-25 20:45:42'),('217','admin','127.0.0.1','2015-11-25 21:12:53'),('218','admin','127.0.0.1','2015-11-25 22:07:52'),('219','admin','127.0.0.1','2015-11-26 10:27:50'),('220','admin','127.0.0.1','2015-12-10 09:04:37'),('221','admin','127.0.0.1','2015-12-10 14:55:12'),('222','admin','127.0.0.1','2015-12-10 17:51:09'),('223','admin','127.0.0.1','2015-12-11 08:25:19'),('224','admin','127.0.0.1','2015-12-11 11:41:22'),('225','admin','127.0.0.1','2015-12-11 17:04:37'),('226','admin','127.0.0.1','2015-12-11 20:05:49'),('227','admin','127.0.0.1','2015-12-12 09:20:36'),('228','admin','127.0.0.1','2015-12-12 14:41:34'),('229','admin','127.0.0.1','2015-12-16 08:46:44'),('230','admin','127.0.0.1','2015-12-16 10:50:48'),('231','admin','127.0.0.1','2015-12-16 14:24:42'),('232','admin','127.0.0.1','2015-12-21 08:27:33'),('233','admin','127.0.0.1','2015-12-21 10:35:43'),('234','admin','127.0.0.1','2015-12-21 16:03:07'),('235','admin','127.0.0.1','2015-12-22 09:12:21'),('236','admin','127.0.0.1','2015-12-22 13:55:10'),('237','admin','127.0.0.1','2015-12-22 16:43:45'),('238','admin','0.0.0.0','2017-04-17 17:52:31'),('239','admin','0.0.0.0','2017-04-18 14:13:43'),('240','admin','0.0.0.0','2017-07-25 10:46:23'),('241','admin','0.0.0.0','2017-07-25 13:58:00'),('242','admin','0.0.0.0','2017-07-25 14:28:20'),('243','admin','0.0.0.0','2017-07-25 16:34:02');/* MySQLReback Separation */
 /* 创建表结构 `bh_adminuser`  */
 DROP TABLE IF EXISTS `bh_adminuser`;/* MySQLReback Separation */ CREATE TABLE `bh_adminuser` (
  `Id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` char(25) DEFAULT NULL COMMENT '//登录名称',
  `userpass` char(42) DEFAULT NULL COMMENT '//登录密码',
  `randcode` char(6) NOT NULL DEFAULT '654321' COMMENT '//随机码',
  `realname` char(30) DEFAULT NULL COMMENT '//管理员名称',
  `email` char(50) DEFAULT NULL COMMENT '//后台邮箱',
  `auth` char(100) DEFAULT NULL COMMENT '//后台权限',
  `count` int(10) DEFAULT '0' COMMENT '//累计登录次数',
  `last_ip` char(30) DEFAULT NULL COMMENT '//最后登录Ip',
  `last_time` datetime DEFAULT NULL COMMENT '//最后登录时间',
  `reg_time` datetime DEFAULT NULL COMMENT '//注册时间',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_adminuser` */
 INSERT INTO `bh_adminuser` VALUES ('1','admin','c8e8bbaf1ef8d4b2baa6aca8ac4d99b7','022220','admin','admin@163.com',null,'171','0.0.0.0','2017-07-25 16:34:02','2015-05-25 17:54:12');/* MySQLReback Separation */
 /* 创建表结构 `bh_advantage`  */
 DROP TABLE IF EXISTS `bh_advantage`;/* MySQLReback Separation */ CREATE TABLE `bh_advantage` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sty` int(4) NOT NULL DEFAULT '1' COMMENT '//预留属性(sty)',
  `topic` char(200) NOT NULL COMMENT '//标题',
  `domain` char(20) DEFAULT NULL COMMENT '//个性域名',
  `pic` varchar(100) DEFAULT NULL COMMENT '//图片',
  `intro` varchar(255) DEFAULT NULL COMMENT '//简介内容',
  `content` text COMMENT '//内容',
  `linkurl` varchar(200) DEFAULT NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示栏目',
  `ord` int(11) DEFAULT '0' COMMENT '//排序',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  `en_topic` char(200) DEFAULT NULL,
  `en_intro` varchar(255) DEFAULT NULL,
  `en_content` text,
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`),
  KEY `domain` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_advantage` */
 INSERT INTO `bh_advantage` VALUES ('1','1','区域优势',null,null,'宁新碳素位于江西省奉新县冯田工业园区，交通便利，目前工业园区新','宁新碳素位于江西省奉新县冯田工业园区，交通便利，目前工业园区新',null,'1','1','2015-12-16 15:19:54','Regional advantage','Ning new carbon Feng Tian FengXin in jiangxi province, county industrial park, convenient transportation, the new industrial park','Ning new carbon Feng Tian FengXin in jiangxi province, county industrial park, convenient transportation, the new industrial park'),('2','1','团队优势',null,null,'公司管理团队由具备多年管理经验的人士组成，涵盖研发、生产、市场','公司管理团队由具备多年管理经验的人士组成，涵盖研发、生产、市场',null,'1','2','2015-12-16 15:21:14','Team advantage','Company management team with many years of management experience, covering research, development, production and market','Company management team with many years of management experience, covering research, development, production and market'),('3','1','质量优势',null,null,'宁新碳素始终把产品质量放在第一位，通过近几年工艺改进调整，产品质','宁新碳素始终把产品质量放在第一位，通过近几年工艺改进调整，产品质',null,'1','3','2015-12-16 15:22:21','Quality advantage','Ning new carbon always put quality as the first, through the technology improvement in recent years, the product quality','Ning new carbon always put quality as the first, through the technology improvement in recent years, the product quality'),('4','1','营销优势',null,null,'本厂产品拥有稳定可靠的客户群，随着产品质量的提高，产品认知度继续','本厂产品拥有稳定可靠的客户群，随着产品质量的提高，产品认知度继续',null,'1','4','2015-12-16 15:23:21','Marketing advantage','Our products have a stable customer base, with the improvement of product quality, product awareness to continue','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;\">Our products have a stable customer base, with the improvement of product quality, product awareness to continue</span>'),('5','1','研发优势',null,null,'公司遵循“学习，创新，诚信，共赢”的企业核心价值观，追求不断进步','公司遵循“学习，创新，诚信，共赢”的企业核心价值观，追求不断进步',null,'1','5','2015-12-16 15:24:27','R&amp;D advantage','Companies adhere to the \\&quot;learning, innovation, integrity, win-win\\&quot; corporate core values, the pursuit of progress','Companies adhere to the \"learning, innovation, integrity, win-win\" corporate core values, the pursuit of progress');/* MySQLReback Separation */
 /* 创建表结构 `bh_advdata`  */
 DROP TABLE IF EXISTS `bh_advdata`;/* MySQLReback Separation */ CREATE TABLE `bh_advdata` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `topic` char(200) DEFAULT NULL COMMENT '//标题',
  `pic` char(150) DEFAULT NULL COMMENT '//图片路径',
  `picwidth` int(11) NOT NULL DEFAULT '0' COMMENT '//广告宽度',
  `picheight` int(11) NOT NULL DEFAULT '0' COMMENT '//广告高度',
  `ctag` int(10) DEFAULT '0' COMMENT '//广告分类，数据保留',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示',
  `linkurl` char(250) DEFAULT '###' COMMENT '//链接地址',
  `remark` char(50) DEFAULT NULL COMMENT '//广告备注',
  `hit` int(11) DEFAULT '1' COMMENT '//点击率',
  `ord` int(10) NOT NULL DEFAULT '0' COMMENT '//广告排序',
  `date` datetime DEFAULT NULL COMMENT '//广告发布时间',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_advdata` */
 INSERT INTO `bh_advdata` VALUES ('1','首页大图','20151210/5668e341837f4.jpg','1920','455','0','1','###','首页广告','1','0','2015-12-10 10:28:49'),('2','首页大图','20151210/5668e341837f4.jpg','1920','455','0','1','###','首页广告','1','0','2015-12-10 10:28:49'),('3','首页大图','20151210/5668e341837f4.jpg','1920','455','0','1','###','首页广告','1','0','2015-12-10 10:28:49'),('4','首页大图','20151210/5668e341837f4.jpg','1920','455','0','1','###','首页广告','1','0','2015-12-10 10:28:49');/* MySQLReback Separation */
 /* 创建表结构 `bh_information`  */
 DROP TABLE IF EXISTS `bh_information`;/* MySQLReback Separation */ CREATE TABLE `bh_information` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sty` int(4) NOT NULL DEFAULT '0' COMMENT '//预留属性(sty)',
  `topic` char(200) DEFAULT NULL COMMENT '//新闻标题',
  `tag` varchar(150) DEFAULT NULL COMMENT '//TAG标签',
  `inftype` int(11) NOT NULL DEFAULT '0' COMMENT '//新闻分类ID',
  `topiccolor` char(20) DEFAULT NULL COMMENT '//显示颜色',
  `topicsize` char(20) DEFAULT NULL COMMENT '//标题显示大小',
  `isstrong` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否加粗',
  `source` char(20) DEFAULT NULL COMMENT '//来源',
  `author` char(20) DEFAULT NULL COMMENT '//作者',
  `keyword` varchar(250) DEFAULT NULL COMMENT '//关键词',
  `metades` varchar(250) DEFAULT NULL COMMENT '//描述',
  `hit` int(11) NOT NULL DEFAULT '0' COMMENT '//新闻点击率',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否置顶',
  `ishot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否热门新闻',
  `pic` varchar(100) DEFAULT NULL COMMENT '//新闻配图',
  `intro` varchar(250) DEFAULT NULL COMMENT '//新闻简介',
  `content` text COMMENT '//新闻内容',
  `linkurl` varchar(250) DEFAULT NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示',
  `ord` int(11) NOT NULL DEFAULT '0' COMMENT '//排序 默认发布日期，第二按这个排序',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  `en_topic` char(200) DEFAULT NULL,
  `en_intro` varchar(255) DEFAULT NULL,
  `en_content` text,
  PRIMARY KEY (`Id`),
  KEY `inftype` (`inftype`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_information` */
 INSERT INTO `bh_information` VALUES ('1','1','宁新碳素位于江西省奉新县冯田工业园区',null,'1','#e33d3d','0','1','百恒网络','百恒网络',null,null,'17','0','0','20170418/58f5b3b1a4569.gif','突出主营业务，优化资源结构；实现科技创新，发展高新材料；强化管理素质，健全内部机制；吸纳培','<p>\r\n	突出主营业务，优化资源结构；实现科技创新，发展高新材料；强化管理素质，健全内部机制；吸纳培\r\n</p>',null,'1','1','2015-10-28 17:25:07','Ning new carbon Feng Tian FengXin county industrial park in jiangxi province','Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:14px;line-height:21px;background-color:#F8F8F8;\">Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture</span>'),('2','1','开发区拟筹建110变电站，毗邻公司，结合公司',null,'1','#e33d3d','0','1','百恒网络','百恒网络',null,null,'9','0','0','20151216/567112dca26b4.jpg','在专家们看来，“喝凉水都长肉”绝对不是一句戏言，有的人只吃青菜萝卜，但血压、血脂、血糖却降','<p>\r\n	在专家们看来，“喝凉水都长肉”绝对不是一句戏言，有的人只吃青菜萝卜，但血压、血脂、血糖却降\r\n</p>',null,'1','1','2015-10-28 17:25:07','Development zone to set up 110 substations, adjacent to the company, combined with the company','In experts point of view, \\&quot;drink cold water all meat\\&quot; is definitely not a joke, some people only eat vegetables radish, but fall blood pressure, blood lipid, blood sugar','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:14px;line-height:21px;background-color:#F8F8F8;\">In experts point of view, \"drink cold water all meat\" is definitely not a joke, some people only eat vegetables radish, but fall blood pressure, blood lipid, blood sugar</span>'),('3','1','伴随新三板推进工作，2015年投资300万',null,'1','#e33d3d','0','1','百恒网络','百恒网络',null,null,'1','0','0','20151216/567113541d524.jpg','在专家们看来，“喝凉水都长肉”绝对不是一句戏言，有的人只吃青菜萝卜，但血压、血脂、血糖却降.','<p>\r\n	在专家们看来，“喝凉水都长肉”绝对不是一句戏言，有的人只吃青菜萝卜，但血压、血脂、血糖却降.\r\n</p>',null,'1','1','2015-10-28 17:25:07','Along with the new three board to promote work, 3 million investment in 2015','In experts point of view, \\&quot;drink cold water all meat\\&quot; is definitely not a joke, some people only eat vegetables radish, but fall blood pressure, blood lipid, blood sugar.','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:14px;line-height:21px;background-color:#F8F8F8;\">In experts point of view, \"drink cold water all meat\" is definitely not a joke, some people only eat vegetables radish, but fall blood pressure, blood lipid, blood sugar.</span>'),('4','1','公司一直致力于石墨高导热材料研发生产',null,'1','#e33d3d','0','1','百恒网络','百恒网络',null,null,'6','0','0','20151216/5671151675e2c.jpg','突出主营业务，优化资源结构；实现科技创新，发展高新材料；强化管理素质，健全内部机制；吸纳培','<p>\r\n	突出主营业务，优化资源结构；实现科技创新，发展高新材料；强化管理素质，健全内部机制；吸纳培\r\n</p>',null,'1','1','2015-10-28 17:25:07','The company has been committed to graphite of high thermal conductive materials research and development production','Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture','Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture');/* MySQLReback Separation */
 /* 创建表结构 `bh_inftype`  */
 DROP TABLE IF EXISTS `bh_inftype`;/* MySQLReback Separation */ CREATE TABLE `bh_inftype` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sty` int(4) NOT NULL DEFAULT '0' COMMENT '//预留属性(sty)',
  `domain` char(20) DEFAULT NULL COMMENT '//个性域名',
  `showtype` int(1) NOT NULL DEFAULT '0' COMMENT '//显示方式',
  `topic` char(150) DEFAULT NULL COMMENT '//类别标题',
  `en_topic` char(200) DEFAULT NULL,
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `ord` int(11) DEFAULT '0' COMMENT '//新闻类排序',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '//是否显示',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`),
  KEY `domain` (`domain`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_inftype` */
 INSERT INTO `bh_inftype` VALUES ('1','1',null,'1','公司新闻','Company news',null,'1','1','2015-12-16 14:28:33'),('2','1',null,'0','行业动态','Industry dynamic',null,'2','1','2015-12-16 14:28:53');/* MySQLReback Separation */
 /* 创建表结构 `bh_links`  */
 DROP TABLE IF EXISTS `bh_links`;/* MySQLReback Separation */ CREATE TABLE `bh_links` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `topic` char(50) NOT NULL COMMENT '//标题',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `linkurl` char(200) DEFAULT NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示栏目',
  `ord` int(11) DEFAULT '0' COMMENT '//排序',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `bh_message`  */
 DROP TABLE IF EXISTS `bh_message`;/* MySQLReback Separation */ CREATE TABLE `bh_message` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sty` int(4) NOT NULL DEFAULT '0' COMMENT '//留言类型(保留)',
  `topic` char(200) DEFAULT '如内容' COMMENT '//留言主题',
  `address` varchar(250) DEFAULT NULL COMMENT '//联系地址',
  `content` text COMMENT '//留言内容',
  `enabled` tinyint(1) DEFAULT '0' COMMENT '//是否处理',
  `user` char(20) DEFAULT NULL COMMENT '//留言名称',
  `tel` char(35) DEFAULT NULL COMMENT '//联系电话',
  `email` char(50) DEFAULT NULL COMMENT '//联系email',
  `phone` char(35) DEFAULT NULL COMMENT '//联系手机',
  `ip` char(20) DEFAULT NULL COMMENT '//留言人IP',
  `date` datetime DEFAULT NULL COMMENT '//留言时间',
  `recontent` text COMMENT '//回复内容',
  `redate` datetime DEFAULT NULL COMMENT '//回复时间',
  PRIMARY KEY (`Id`),
  KEY `type` (`sty`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_message` */
 INSERT INTO `bh_message` VALUES ('1','0','如内容','大声道','大舍大得','1','王TEST','5656555','wangs@163.com','18779131903','127.0.0.1','2015-10-28 00:00:00',null,'2015-10-30 09:00:58');/* MySQLReback Separation */
 /* 创建表结构 `bh_picshow`  */
 DROP TABLE IF EXISTS `bh_picshow`;/* MySQLReback Separation */ CREATE TABLE `bh_picshow` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sty` int(4) NOT NULL DEFAULT '1' COMMENT '//预留属性(sty)',
  `topic` char(200) NOT NULL COMMENT '//标题',
  `domain` char(20) DEFAULT NULL COMMENT '//个性域名',
  `pic` varchar(100) DEFAULT NULL COMMENT '//图片',
  `intro` varchar(255) DEFAULT NULL COMMENT '//简介内容',
  `content` text COMMENT '//内容',
  `linkurl` varchar(200) DEFAULT NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示栏目',
  `ord` int(11) DEFAULT '0' COMMENT '//排序',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  `en_topic` char(200) DEFAULT NULL,
  `en_intro` varchar(255) DEFAULT NULL,
  `en_content` text,
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`),
  KEY `domain` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_picshow` */
 INSERT INTO `bh_picshow` VALUES ('1','1','图片',null,'20151222/5678eb6e6b1f5.jpg',null,null,null,'1','0','2015-12-22 14:19:29','image',null,null),('2','1','图片',null,'20151222/5678eb8e5e240.jpg',null,null,null,'1','0','2015-12-22 14:20:00','image',null,null),('3','1','图片',null,'20151222/5678eb8e5e240.jpg',null,null,null,'1','0','2015-12-22 14:20:00','image',null,null);/* MySQLReback Separation */
 /* 创建表结构 `bh_proshow`  */
 DROP TABLE IF EXISTS `bh_proshow`;/* MySQLReback Separation */ CREATE TABLE `bh_proshow` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sty` int(4) NOT NULL DEFAULT '0' COMMENT '//预留属性(sty)',
  `topic` char(200) DEFAULT NULL COMMENT '//新闻标题',
  `tag` varchar(150) DEFAULT NULL COMMENT '//TAG标签',
  `inftype` int(11) NOT NULL DEFAULT '0' COMMENT '//新闻分类ID',
  `topiccolor` char(20) DEFAULT NULL COMMENT '//显示颜色',
  `topicsize` char(20) DEFAULT NULL COMMENT '//标题显示大小',
  `isstrong` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否加粗',
  `source` char(20) DEFAULT NULL COMMENT '//来源',
  `author` char(20) DEFAULT NULL COMMENT '//作者',
  `keyword` varchar(250) DEFAULT NULL COMMENT '//关键词',
  `metades` varchar(250) DEFAULT NULL COMMENT '//描述',
  `hit` int(11) NOT NULL DEFAULT '0' COMMENT '//新闻点击率',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否置顶',
  `ishot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否热门新闻',
  `pic` varchar(100) DEFAULT NULL COMMENT '//新闻配图',
  `intro` varchar(250) DEFAULT NULL COMMENT '//新闻简介',
  `content` text COMMENT '//新闻内容',
  `linkurl` varchar(250) DEFAULT NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示',
  `ord` int(11) NOT NULL DEFAULT '0' COMMENT '//排序 默认发布日期，第二按这个排序',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  `en_topic` char(200) DEFAULT NULL,
  `en_intro` varchar(255) DEFAULT NULL,
  `en_content` text,
  PRIMARY KEY (`Id`),
  KEY `inftype` (`inftype`),
  KEY `sty` (`sty`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_proshow` */
 INSERT INTO `bh_proshow` VALUES ('1','1','相关产品名称 1',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20170725/597702c5c8050.jpg','相关产品的简单叙述及一些功能性用途等等的大概介绍.','相关产品的简单叙述及一些功能性用途等等的大概介绍.',null,'1','0','2017-07-25 16:37:34','1 related product name','Related products are described briefly and some introduction about functional purposes, and so on.','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;\">Related products are described briefly and some introduction about functional purposes, and so on.</span>'),('2','1','相关产品名称 2',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20170725/597702e83d22f.jpg','相关产品的简单叙述及一些功能性用途等等的大概介绍.','相关产品的简单叙述及一些功能性用途等等的大概介绍.',null,'1','0','2017-07-25 16:37:48','2 related product name','Related products are described briefly and some introduction about functional purposes, and so on.','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;\">Related products are described briefly and some introduction about functional purposes, and so on.</span>'),('3','1','相关产品名称 3',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20170725/597702fa55557.jpg','相关产品的简单叙述及一些功能性用途等等的大概介绍.','相关产品的简单叙述及一些功能性用途等等的大概介绍.',null,'1','0','2017-07-25 16:38:03','3 related product name','Related products are described briefly and some introduction about functional purposes, and so on.','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;\">Related products are described briefly and some introduction about functional purposes, and so on.</span>'),('4','1','相关产品名称 4',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20170725/597703880edd0.jpg','相关产品的简单叙述及一些功能性用途等等的大概介绍.','相关产品的简单叙述及一些功能性用途等等的大概介绍.',null,'1','0','2017-07-25 16:38:34','4 related product name','Related products are described briefly and some introduction about functional purposes, and so on.','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;\">Related products are described briefly and some introduction about functional purposes, and so on.</span>'),('5','1','相关产品名称5',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20170725/597703b3c9c73.jpg','相关产品的简单叙述及一些功能性用途等等的大概介绍.','相关产品的简单叙述及一些功能性用途等等的大概介绍.',null,'1','0','2017-07-25 16:39:18','5 related product name','Related products are described briefly and some introduction about functional purposes, and so on.','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;\">Related products are described briefly and some introduction about functional purposes, and so on.</span>'),('6','1','相关产品名称 1',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20170725/59770339c004a.jpg','相关产品的简单叙述及一些功能性用途等等的大概介绍.','相关产品的简单叙述及一些功能性用途等等的大概介绍.',null,'1','0','2017-07-25 16:39:35','1 related product name','Related products are described briefly and some introduction about functional purposes, and so on.','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;\">Related products are described briefly and some introduction about functional purposes, and so on.</span>'),('7','1','相关产品名称 2',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20170725/597703fe6ce79.jpg','相关产品的简单叙述及一些功能性用途等等的大概介绍.','相关产品的简单叙述及一些功能性用途等等的大概介绍.',null,'1','0','2017-07-25 16:40:32','2 related product name','Related products are described briefly and some introduction about functional purposes, and so on.','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;\">Related products are described briefly and some introduction about functional purposes, and so on.</span>');/* MySQLReback Separation */
 /* 插入数据 `bh_proshow` */
 INSERT INTO `bh_proshow` VALUES ('8','1','相关产品名称 3',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20170725/597703e7032b4.jpg','相关产品的简单叙述及一些功能性用途等等的大概介绍.','相关产品的简单叙述及一些功能性用途等等的大概介绍.',null,'1','0','2017-07-25 16:40:10','3 related product name','Related products are described briefly and some introduction about functional purposes, and so on.','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;\">Related products are described briefly and some introduction about functional purposes, and so on.</span>');/* MySQLReback Separation */
 /* 插入数据 `bh_proshow` */
 INSERT INTO `bh_proshow` VALUES ('9','1','相关产品名称 4',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20151221/56775242562c7.jpg','相关产品的简单叙述及一些功能性用途等等的大概介绍.','相关产品的简单叙述及一些功能性用途等等的大概介绍.',null,'1','0','2015-12-21 08:59:21','4 related product name','Related products are described briefly and some introduction about functional purposes, and so on.','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;\">Related products are described briefly and some introduction about functional purposes, and so on.</span>'),('10','1','相关产品名称5',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20151221/567752832d933.jpg','相关产品的简单叙述及一些功能性用途等等的大概介绍.','相关产品的简单叙述及一些功能性用途等等的大概介绍.',null,'1','0','2015-12-21 08:59:21','5 related product name','Related products are described briefly and some introduction about functional purposes, and so on.','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;\">Related products are described briefly and some introduction about functional purposes, and so on.</span>');/* MySQLReback Separation */
 /* 创建表结构 `bh_protype`  */
 DROP TABLE IF EXISTS `bh_protype`;/* MySQLReback Separation */ CREATE TABLE `bh_protype` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sty` int(4) NOT NULL DEFAULT '0' COMMENT '//预留属性(sty)',
  `domain` char(20) DEFAULT NULL COMMENT '//个性域名',
  `showtype` int(1) NOT NULL DEFAULT '0' COMMENT '//显示方式',
  `topic` char(150) DEFAULT NULL COMMENT '//类别标题',
  `en_topic` char(200) DEFAULT NULL,
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `ord` int(11) DEFAULT '0' COMMENT '//新闻类排序',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '//是否显示',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`),
  KEY `domain` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_protype` */
 INSERT INTO `bh_protype` VALUES ('1','1',null,'0','高纯石墨','High purity graphite',null,'0','1','2015-12-21 08:56:11');/* MySQLReback Separation */
 /* 创建表结构 `bh_systemconfig`  */
 DROP TABLE IF EXISTS `bh_systemconfig`;/* MySQLReback Separation */ CREATE TABLE `bh_systemconfig` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `metatitle` char(250) DEFAULT NULL COMMENT '//title',
  `metades` char(250) DEFAULT NULL COMMENT '//网站描述',
  `metakey` char(250) DEFAULT NULL COMMENT '//关键词',
  `logo` char(50) DEFAULT NULL COMMENT '//logo路径',
  `companyname` char(200) DEFAULT NULL COMMENT '//公司名称',
  `companyurl` char(150) DEFAULT NULL COMMENT '//公司链接',
  `address` char(250) DEFAULT NULL COMMENT '//公司地址',
  `en_metatitle` varchar(255) NOT NULL,
  `en_metades` varchar(500) NOT NULL,
  `en_metakey` varchar(255) NOT NULL,
  `en_companyname` varchar(255) NOT NULL,
  `en_address` varchar(255) NOT NULL,
  `email` char(50) DEFAULT NULL COMMENT '//企业邮箱',
  `tel` char(50) DEFAULT NULL COMMENT '//企业电话',
  `contact` char(100) DEFAULT NULL COMMENT '//联系人',
  `mobile` char(20) DEFAULT NULL COMMENT '//手机号码',
  `fax` char(30) DEFAULT NULL COMMENT '//传真',
  `qq` char(20) DEFAULT NULL COMMENT '//qq号码',
  `icpnote` char(50) DEFAULT NULL COMMENT '//icp备案号',
  `c_reg` tinyint(1) DEFAULT '0' COMMENT '//关闭注册',
  `shieldip` text COMMENT '//需要屏蔽的IP',
  `iptips` char(200) DEFAULT NULL COMMENT '//过滤IP提示语',
  `c_site` tinyint(1) DEFAULT '0' COMMENT '//关闭项目',
  `c_text` char(250) DEFAULT '升级中……' COMMENT '//关闭说明',
  `sys_parameter` text COMMENT '//系统参数',
  `sys_code` text COMMENT '//第三方代码（ex:百度）',
  `sys_notice` varchar(250) DEFAULT NULL COMMENT '//通知，紧急通知',
  `mailsmtp` char(50) CHARACTER SET ucs2 NOT NULL COMMENT '//邮件Smtp',
  `mailport` char(10) CHARACTER SET ucs2 NOT NULL DEFAULT '25' COMMENT '//邮件端口',
  `mailname` char(50) DEFAULT NULL COMMENT '//邮箱名称',
  `mailpass` char(50) NOT NULL COMMENT '//邮箱密码',
  `wordfilter` text COMMENT '//词汇过滤',
  `regread` text COMMENT '//注册须知',
  `copy_info` varchar(200) DEFAULT NULL COMMENT '//页尾版权信息',
  `iswater` smallint(1) NOT NULL DEFAULT '0' COMMENT '//是否开启水印功能',
  `fontpos` smallint(1) NOT NULL DEFAULT '9' COMMENT '//水印位置',
  `waterpos` smallint(1) NOT NULL DEFAULT '9' COMMENT '//水印位置',
  `waterpic` char(50) DEFAULT NULL COMMENT '//水印图片',
  `fonttext` char(50) DEFAULT NULL COMMENT '//文字水印',
  `fontsize` int(4) NOT NULL DEFAULT '20' COMMENT '//文字大小',
  `fontcolor` char(50) NOT NULL DEFAULT '#ffffff' COMMENT '//文字颜色',
  `facetype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//facetype',
  `rotation` int(4) NOT NULL DEFAULT '0' COMMENT '//旋转',
  `wateralpha` smallint(1) NOT NULL DEFAULT '100' COMMENT '//alpha值',
  `waterwidth` int(11) NOT NULL DEFAULT '0' COMMENT '//触发宽度',
  `waterheight` int(11) DEFAULT '0' COMMENT '//触发高度',
  `filesuffix` varchar(500) DEFAULT NULL COMMENT '//允许上传的非图片的后缀',
  `islog` smallint(1) NOT NULL DEFAULT '0' COMMENT '//开启日志功能',
  `isclear` smallint(1) NOT NULL DEFAULT '0' COMMENT '//开启日志清理',
  `adminpage` int(4) NOT NULL DEFAULT '0' COMMENT '//配置分页值',
  `date` datetime DEFAULT NULL COMMENT '//更新日期',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_systemconfig` */
 INSERT INTO `bh_systemconfig` VALUES ('1','股份有限公司','股份有限公司',null,null,'股份有限公司',null,'在那遥远的地方','Jiang Xi Ning xin materials co., LTD','Jiang Xi Ning xin materials co., LTD','Jiang Xi Ning xin materials co., LTD','Jiang Xi Ning xin materials co., LTD','Feng Tian FengXin county industrial park in jiangxi province','1688@sina.com','0795-4505288  /  4505299',null,null,'0795-4509033',null,'赣ICP备88888888号-1','0',null,'您的IP将禁用一段时间。','0','网站项目维护中...',null,null,null,'smtp.163.com','25',null,null,'cao|艹|草',null,null,'0','8','9',null,null,'8','#ffffff','7','0','25','0','0',null,'1','1','15','0000-00-00 00:00:00');/* MySQLReback Separation */