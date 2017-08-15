/* This file is created by MySQLReback 2017-08-15 16:56:28 */
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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_aboutus` */
 INSERT INTO `bh_aboutus` VALUES ('1','1','企业文化',null,'20170814/5991411ad1fde.jpg','深海瑞格科技公司专注于商业显示领域的软硬件的研发、生产和销售。公司研发分布于深圳、成都和绵阳三地；公司生产基地位于深圳福永旭竞昌工业园。\r\n  主要产品线\r\n广告发布：信息发布系统、发布终端\r\n拼接墙：拼接单元、拼接主板\r\n教育：教育系统软件、教育机主板','企业愿景：<br />\r\n致力于成为中国智慧零售行业最优秀的专用显示设备供应商!<br />\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	企业使命：\r\n</p>\r\n为社会：致力于保障人们安全及信息沟通的效率与品质<br />\r\n为客户：以卓越优质的显示解决方案，高质量的产品为客户创造价值<br />\r\n<p>\r\n	为员工：提供广阔的发展空间展示自我的平台\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n质量方针，为客户创造价值：<br />\r\n卓越先进的技术<br />\r\n优质安全的产品<br />\r\n<p>\r\n	诚信快捷的服务\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n服务宗旨：<br />\r\n以应用场景为中心，为用户提供满意服务体验。<br />',null,'1','1','2017-08-14 14:20:13',null,null,null),('11','1','招贤纳士',null,null,null,null,null,'1','3','2017-08-14 14:05:27',null,null,null),('12','1','公司简介',null,'20170814/59914023006ab.png','深海瑞格科技公司专注于商业显示领域的软硬件的研发、生产和销售。公司研发分布于深圳、成都和绵阳三地；公司生产基地位于深圳福永旭竞昌工业园。\r\n  主要产品线\r\n广告发布：信息发布系统、发布终端\r\n拼接墙：拼接单元、拼接主板\r\n教育：教育系统软件、教育机主板','深海瑞格科技公司专注于商业显示领域的软硬件的研发、生产和销售。公司研发分布于深圳、成都和绵阳三地；公司生产基地位于深圳福永旭竞昌工业园。<br />\r\n&nbsp; 主要产品线<br />\r\n广告发布：信息发布系统、发布终端<br />\r\n拼接墙：拼接单元、拼接主板<br />\r\n教育：教育系统软件、教育机主板&nbsp; <br />',null,'1','0','2017-08-14 14:16:36',null,null,null),('2','1','资质荣誉',null,null,null,'<p>\r\n	<br />\r\n</p>',null,'1','2','2017-08-14 14:04:54',null,null,null),('3','1','联系我们',null,null,null,'<div class=\"lxwm\">\r\n	<img src=\"http://www.hikvision.com/cn/images/lxwmpic1.jpg\" width=\"927\" height=\"200\" /> \r\n</div>\r\n<div class=\"lxwm1\">\r\n	<br />\r\n	<div class=\"lxwm4\">\r\n		<p>\r\n			<span style=\"line-height:30px;font-family:arial, helvetica, sans-serif;color:#7F7F7F;font-size:12px;\"> 电话：0755-85252860 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;技术服务微信：深海瑞格客户服务</span> \r\n		</p>\r\n		<p>\r\n			<span style=\"line-height:30px;font-family:arial, helvetica, sans-serif;color:#7F7F7F;font-size:12px;\"> 邮箱：market@<span style=\"color:#7F7F7F;font-family:arial, helvetica, sans-serif;\">searegal.com &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span> 技术服务电话：400-888-8888</span> \r\n		</p>\r\n		<p>\r\n			<span style=\"line-height:30px;font-family:arial, helvetica, sans-serif;color:#7F7F7F;font-size:12px;\"> 传真：<span style=\"color:#7F7F7F;font-family:arial, helvetica, sans-serif;\">0755-85252860 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span> 技术服务邮箱：400@searegal.com</span> \r\n		</p>\r\n		<p>\r\n			<span style=\"line-height:30px;font-family:arial, helvetica, sans-serif;color:#7F7F7F;font-size:12px;\"> 邮编：518000 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;官方通讯地址：广东深圳市宝安区福永蚝业路39号旭竟昌工业区B6栋2楼</span><span style=\"line-height:30px;font-family:arial, helvetica, sans-serif;font-size:12px;\"></span> \r\n		</p>\r\n		<p>\r\n			<span style=\"line-height:30px;font-family:arial, helvetica, sans-serif;font-size:12px;\"></span> \r\n		</p>\r\n		<p>\r\n			<span style=\"line-height:30px;font-family:arial, helvetica, sans-serif;font-size:12px;\"></span> \r\n		</p>\r\n	</div>\r\n</div>',null,'1','4','2017-08-09 10:00:56',null,null,null);/* MySQLReback Separation */
 /* 创建表结构 `bh_adminrecord`  */
 DROP TABLE IF EXISTS `bh_adminrecord`;/* MySQLReback Separation */ CREATE TABLE `bh_adminrecord` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user` char(50) NOT NULL COMMENT '//管理员用户名',
  `ip` char(35) NOT NULL COMMENT '//登录IP',
  `date` datetime DEFAULT NULL COMMENT '//登录时间',
  PRIMARY KEY (`Id`),
  FULLTEXT KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_adminrecord` */
 INSERT INTO `bh_adminrecord` VALUES ('1','admin','0.0.0.0','2017-07-26 16:51:03'),('2','admin','0.0.0.0','2017-07-27 14:06:59'),('3','admin','0.0.0.0','2017-07-27 16:15:50'),('4','admin','0.0.0.0','2017-07-27 18:01:36'),('5','admin','0.0.0.0','2017-07-28 10:34:59'),('6','admin','0.0.0.0','2017-07-28 17:57:17'),('7','admin','0.0.0.0','2017-07-31 09:39:47'),('8','admin','0.0.0.0','2017-07-31 16:05:16'),('9','admin','0.0.0.0','2017-07-31 16:43:21'),('10','admin','0.0.0.0','2017-08-01 10:30:11'),('11','admin','0.0.0.0','2017-08-01 14:08:43'),('12','admin','0.0.0.0','2017-08-01 16:10:52'),('13','admin','121.34.146.197','2017-08-03 14:01:38'),('14','admin','118.81.54.188','2017-08-03 14:02:59'),('15','admin','121.34.146.197','2017-08-03 14:23:44'),('16','admin','118.81.54.188','2017-08-03 16:04:07'),('17','admin','121.34.144.245','2017-08-09 09:24:06'),('18','admin','121.34.144.245','2017-08-09 09:49:35'),('19','admin','121.34.146.214','2017-08-09 10:30:57'),('20','admin','121.34.146.214','2017-08-09 10:56:49'),('21','admin','121.34.146.214','2017-08-09 11:05:06'),('22','admin','121.34.144.245','2017-08-09 11:07:22'),('23','admin','121.34.144.245','2017-08-09 11:08:56'),('24','admin','121.34.144.245','2017-08-09 11:17:26'),('25','admin','121.34.146.214','2017-08-09 11:21:20'),('26','admin','121.34.146.214','2017-08-09 11:42:56'),('27','admin','121.34.144.245','2017-08-09 13:41:17'),('28','admin','121.34.146.214','2017-08-09 14:49:08'),('29','admin','121.34.144.245','2017-08-09 16:04:40'),('30','admin','121.34.146.214','2017-08-09 16:37:07'),('31','admin','121.34.146.214','2017-08-09 16:53:44'),('32','admin','121.34.146.214','2017-08-09 17:01:36'),('33','admin','113.88.66.1','2017-08-14 13:34:40'),('34','admin','113.88.66.1','2017-08-14 13:42:53'),('35','admin','113.88.66.1','2017-08-14 14:49:50'),('36','admin','113.102.161.26','2017-08-15 15:42:16'),('37','admin','113.102.161.26','2017-08-15 15:53:24'),('38','admin','0.0.0.0','2017-08-15 15:58:49');/* MySQLReback Separation */
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
 INSERT INTO `bh_adminuser` VALUES ('1','admin','4f4c9bff24b0f2c03923d9119439d965','573627','admin','admin@163.com',null,'211','0.0.0.0','2017-08-15 15:58:49','2015-05-25 17:54:12');/* MySQLReback Separation */
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_advantage` */
 INSERT INTO `bh_advantage` VALUES ('1','1','软件开发',null,'20170801/598035bed455d.jpg','软件开发软件开发软件开发软件开发软件开发软件开发','软件开发软件开发软件开发软件开发软件开发软件开发软件开发',null,'1','1','2017-08-01 16:03:19','Regional advantage','Ning new carbon Feng Tian FengXin in jiangxi province, county industrial park, convenient transportation, the new industrial park','Ning new carbon Feng Tian FengXin in jiangxi province, county industrial park, convenient transportation, the new industrial park'),('6','1','硬件定制',null,null,null,null,null,'1','0','2017-08-09 09:51:09',null,null,null),('7','1','技术交流',null,null,null,null,null,'1','2','2017-08-14 14:02:14',null,null,null),('8','1','下载中心',null,null,null,null,null,'1','3','2017-08-14 14:02:25',null,null,null),('9','1','售后服务',null,null,null,null,null,'1','4','2017-08-14 14:03:29',null,null,null);/* MySQLReback Separation */
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_advdata` */
 INSERT INTO `bh_advdata` VALUES ('1','会议系统','20170809/598a8da71cb66.jpg','1920','400','0','1','###','会议系统','1','0','2017-08-09 12:20:55'),('7','电子站牌','20170809/598a8d0609540.jpg','1920','400','0','1','###','电子站牌','1','0','2017-08-09 12:18:15'),('6','商场导购','20170809/598a87637b83d.jpg','1920','400','0','1','###','商场导购','1','0','2017-08-09 11:54:19'),('5','新零售','20170809/598a8e0908d76.jpg','1920','400','0','1','###','新零售','1','0','2017-08-09 12:22:34');/* MySQLReback Separation */
 /* 创建表结构 `bh_caseshow`  */
 DROP TABLE IF EXISTS `bh_caseshow`;/* MySQLReback Separation */ CREATE TABLE `bh_caseshow` (
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `bh_casetype`  */
 DROP TABLE IF EXISTS `bh_casetype`;/* MySQLReback Separation */ CREATE TABLE `bh_casetype` (
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_casetype` */
 INSERT INTO `bh_casetype` VALUES ('1','1',null,'0','连锁零售',null,null,'2','1','2017-08-14 13:57:11'),('2','1',null,'0','金融',null,null,'1','1','2017-08-14 13:58:16'),('3','1',null,'0','指挥监控',null,null,'5','1','2017-08-14 13:58:06'),('4','1',null,'0','公共交通',null,null,'4','1','2017-08-14 13:58:28'),('5','1',null,'0','会议办公',null,null,'3','1','2017-08-14 14:24:08'),('6','1',null,'0','传媒',null,null,'0','1','2017-08-14 13:59:09');/* MySQLReback Separation */
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_information` */
 INSERT INTO `bh_information` VALUES ('9','1','网站建设中，敬请期待！',null,'3','#000000','13','0',null,null,null,null,'5','1','0',null,null,null,null,'1','0','2017-08-09 16:44:44',null,null,null);/* MySQLReback Separation */
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_inftype` */
 INSERT INTO `bh_inftype` VALUES ('1','1',null,'1','公司新闻','Company news',null,'1','1','2015-12-16 14:28:33'),('2','1',null,'0','行业动态','Industry dynamic',null,'2','1','2015-12-16 14:28:53'),('3','1',null,'0','最新公告',null,null,'3','1','2017-07-27 14:07:48');/* MySQLReback Separation */
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_message` */
 INSERT INTO `bh_message` VALUES ('1','0','网站问题',null,'1内容太少；\r\n2案例谨慎一点\r\n3tv去掉','0','王海兵',null,'alan.wang@searegal.com','18028770133',null,'2017-08-10 16:53:42',null,null);/* MySQLReback Separation */
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
 /* 创建表结构 `bh_program`  */
 DROP TABLE IF EXISTS `bh_program`;/* MySQLReback Separation */ CREATE TABLE `bh_program` (
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_program` */
 INSERT INTO `bh_program` VALUES ('9','1','商场互动导购系统',null,'1','#000000','0','0',null,null,'新零售，购物中心，导购，互动查询，促销',null,'0','1','0','20170809/598a81b6e567a.png','多媒体互动导购系统为了方便广大消费者而提供一个能让他们更好地了解商场各个信息的互动窗口，包括：商场形象展示、楼层平面展示、商户分布、商户分类检索、商户介绍、活动信息、会员章程、积分查询等信息，可进行手指触摸浏览的一套人机互动的智能系统。多媒体互动导购系统建设，是公司打造智能化、体验式、信息化购物环境的重要保证。','<p class=\"MsoNormal\" style=\"text-indent:24pt;margin-left:17.95pt;\">\r\n	购物中心有效整合了百货、专柜、专卖店、超市、影城、美食广场等业态，向消费者提供综合性服务的商业集合体。购物中心运作的核心是通过为租户、顾客提供便捷、统一、高质的服务，以吸引租户、吸引顾客，以提升购物中心的品质与竞争力，从而为提升租金、扩大盈利奠定坚实基础！\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24pt;margin-left:17.95pt;\">\r\n	多媒体互动导购系统为了方便广大消费者而提供一个能让他们更好地了解商场各个信息的互动窗口，包括：商场形象展示、楼层平面展示、商户分布、商户分类检索、商户介绍、活动信息、会员章程、积分查询等信息，可进行手指触摸浏览的一套人机互动的智能系统。多媒体互动导购系统建设，是公司打造智能化、体验式、信息化购物环境的重要保证。\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:center;text-indent:24pt;margin-left:17.95pt;\">\r\n	<img alt=\"\" src=\"/shrg/public/kindedit/attached/image/20170809/20170809013027_33510.png\" /> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24pt;margin-left:17.95pt;\">\r\n	<b>应用分析</b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24pt;margin-left:17.95pt;\">\r\n	<h2>\r\n		<b></b> \r\n	</h2>\r\n	<h3>\r\n		1<span>、多媒体广告平台</span> \r\n	</h3>\r\n	<p class=\"MsoNormal\">\r\n		<span>在商场合适地点设置数字标牌，如</span>“电梯口、货架区、收银台”等将不同的区域店的显示屏分组，播放不同的内容店内的特价促销、新品活动、节庆活动、会员折扣等，可以透过多媒体广告平台，组成不同的产品海报、宣传视频，强力刺激消费者的目光，提升购物欲。\r\n	</p>\r\n	<p align=\"center\" class=\"MsoNormal\" style=\"text-align:center;\">\r\n		<br />\r\n	</p>\r\n	<h3>\r\n		2<span>、导购信息、配套服务信息发布</span> \r\n	</h3>\r\n	<p class=\"MsoNormal\">\r\n		<span>在服务区、主要通道设置互动导购机，对商场内</span>楼层平面展示、商户分布、商户分类检索等。\r\n	</p>\r\n	<p class=\"MsoNormal\">\r\n		<br />\r\n	</p>\r\n	<p class=\"MsoNormal\">\r\n		<h2>\r\n			<b>互动导购系统</b><b></b> \r\n		</h2>\r\n		<p style=\"text-align:center;\">\r\n			<b><img alt=\"\" src=\"/shrg/public/kindedit/attached/image/20170809/20170809013042_19077.png\" /><br />\r\n</b> \r\n		</p>\r\n		<h3>\r\n			1<span>、功能板块</span> \r\n		</h3>\r\n		<p class=\"MsoNormal\">\r\n			<b> </b><b>1.</b><b>1 </b><b>智能地图</b><b></b> \r\n		</p>\r\n		<p class=\"15\" style=\"text-indent:27.1pt;margin-left:17.95pt;\">\r\n			<b>立体地图：</b><span>商场地理布局采用</span>3D立体空间展示，360度自由旋转，商场地理位置展示更加直观。可跳转楼层查询。现已升级至3.0版本的全新地图模块。\r\n		</p>\r\n		<p class=\"15\" style=\"text-indent:24.1pt;margin-left:21pt;\">\r\n			<b>智能查询：</b>可分别根据楼层、商家首字母、业态、自定义关键字四种方式来搜索目标品牌，查询方式多样，查询结果快速显示。\r\n		</p>\r\n		<p class=\"15\" style=\"text-indent:24.1pt;margin-left:21pt;\">\r\n			<b><span>商家布局</span>: </b><span>地图显示商场各层商家位置和</span>LOGO，商家布局一目了然。点击品牌LOGO即可了解到商家的图文介绍，也可查询从当前位置前往该商家的线路指引。\r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"text-indent:27.1pt;margin-left:17.95pt;\">\r\n			<b>常用功能查询：</b><span>了解用户使用需求，注重用户体验，设置常用功能便捷查询，客户使用即可立即获取线路指引</span>,例如收银台、卫生间、电梯间等常用设施。\r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"text-indent:42.15pt;\">\r\n			<b>真多点触控操作</b>：地图可放大、缩小、拖动，可实现同时识别十点以上技术开发。多点触控技术开发可增强用户体验，增加用户使用兴趣。\r\n		</p>\r\n		<p align=\"center\" class=\"MsoNormal\" style=\"text-align:center;\">\r\n			<br />\r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			<b> 1.</b><b>2</b><b> </b><b>智能线路</b><b></b> \r\n		</p>\r\n		<p class=\"15\" style=\"text-indent:27pt;margin-left:17.95pt;\">\r\n			(1）通过精准的数据算法，软件准确地查询到当前用户位置到目标地点的线路，指引用户前往目标地点。可进行全商场任意目标地点的查询。\r\n		</p>\r\n		<p class=\"15\" style=\"text-indent:27pt;margin-left:17.95pt;\">\r\n			(2）定制多条对比参考路线，可指定绕行重要地点或临时回避地点路线，实用性强，且可考虑收费设定。\r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			<b> 1.</b><b>3</b><b> </b><b>商家品牌</b><b></b> \r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"text-indent:30pt;\">\r\n			<span>相关品牌</span>LOGO排列、图文介绍\r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"text-indent:30pt;\">\r\n			相关品牌位置线路指引\r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"text-indent:30pt;\">\r\n			商家新品展示\r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"text-indent:30pt;\">\r\n			新近商家展示、介绍\r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			<br />\r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			1.4 <b>最新活动</b><b></b> \r\n		</p>\r\n		<p class=\"15\" style=\"text-indent:0pt;margin-left:21pt;\">\r\n			商场活动动态图文展示\r\n		</p>\r\n		<p class=\"15\" style=\"text-indent:0pt;margin-left:21pt;\">\r\n			商家促销活动列表查询、图片展示、线路指引\r\n		</p>\r\n		<p align=\"center\" class=\"MsoNormal\" style=\"text-align:center;\">\r\n			<br />\r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			<b> 1.</b><b>5</b><b> </b><b>会员系统</b><b></b> \r\n		</p>\r\n		<p class=\"15\">\r\n			会员制度细则介绍、卡面展示\r\n		</p>\r\n		<p class=\"15\">\r\n			支持手机登录（短信验证）、刷卡登录\r\n		</p>\r\n		<p class=\"15\">\r\n			自助查询会员积分等信息\r\n		</p>\r\n		<p class=\"15\">\r\n			会员礼品展示、兑换\r\n		</p>\r\n		<p align=\"center\" class=\"MsoNormal\" style=\"text-align:center;\">\r\n			<br />\r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"text-indent:24.05pt;\">\r\n			<b>1.</b><b>6</b><b> </b><b>广告屏保</b><b></b> \r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"text-indent:24.05pt;\">\r\n			无人点击时屏保图片自动播放，在商场内形成一道亮丽的风景，屏保图片为各种宣传图片或商场活动图片。\r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"text-indent:24.05pt;\">\r\n			点击触发后自动退出屏保状态。\r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			<b> 1.</b><b>7</b><b> </b><b>电影查询</b><b></b> \r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			<span>影城介绍</span> \r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			最新电影的图文介绍展示\r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			影院放映时间表查询\r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			在线订位\r\n		</p>\r\n		<p align=\"center\" class=\"MsoNormal\" style=\"text-align:center;\">\r\n			<br />\r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			<b> 1.</b><b>8</b><b> </b><b>商场介绍</b><b></b> \r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			商场图文介绍展示\r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			商场周边交通图文展示\r\n		</p>\r\n		<p align=\"center\" class=\"MsoNormal\" style=\"text-align:center;\">\r\n			<br />\r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"text-indent:24.05pt;\">\r\n			<b>1.</b><b>9</b><b> </b><b>后台统计</b>：\r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"text-indent:24.05pt;\">\r\n			顾客的操作数据均可在后台详细展现，包括点击的页面、停留时间、关注的品牌，形成有价值的数据报表，供运营方分析。\r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"text-indent:24.05pt;\">\r\n			<b>1.</b><b>10</b><b> </b><b>系统后台管理</b><b></b> \r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"text-indent:24.05pt;\">\r\n			(1）商铺地图、系统楼层地图、数据、图片更新及修改；\r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"text-indent:24.05pt;\">\r\n			(2）<span>系统所需图片素材上传</span>/删除；\r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"text-indent:24.05pt;\">\r\n			(3）后台管理权限的设置和分配；\r\n		</p>\r\n		<h3>\r\n			2<span>、定制功能板块</span> \r\n		</h3>\r\n		<p class=\"MsoNormal\">\r\n			<b> 2.</b><b>1</b><b> </b><b>餐位排号系统</b><b></b> \r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"text-indent:24.6pt;\">\r\n			餐饮店家的餐位排号系统，可与已有的排号系统的数据进行对接，也可单独开发。\r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			<b> 2.</b><b>2</b><b> </b><b>视频呼叫服务</b><b></b> \r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"text-indent:24.6pt;\">\r\n			通过摄像头与麦克锋，顾客可与客服人员直接进行视频通话，以提供相关服务。\r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			<b> 2.</b><b>3</b><b> </b><b>反向寻车系统</b><b></b> \r\n		</p>\r\n		<p class=\"MsoNormal\" style=\"text-indent:24pt;\">\r\n			顾客根据停车位的编号，查到从当前位置如何走到指定停车位的路线。\r\n		</p>\r\n		<p class=\"MsoNormal\">\r\n			<b> 2.4 其它特色定制</b><b></b> \r\n		</p>\r\n		<p align=\"center\" class=\"MsoNormal\" style=\"text-align:center;\">\r\n			<span>【微信公众号二次开发】、【</span>APP定制开发】、【美食推荐】、\r\n		</p>\r\n		<p align=\"center\" class=\"MsoNormal\" style=\"text-align:center;\">\r\n			【手机信息发送】、【信用卡打折信息】、【集团云平台】……\r\n		</p>\r\n		<p>\r\n			<br />\r\n		</p>\r\n		<p>\r\n			<br />\r\n		</p>',null,'1','0','2017-08-09 09:32:43',null,null,null);/* MySQLReback Separation */
 /* 创建表结构 `bh_programtype`  */
 DROP TABLE IF EXISTS `bh_programtype`;/* MySQLReback Separation */ CREATE TABLE `bh_programtype` (
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_programtype` */
 INSERT INTO `bh_programtype` VALUES ('1','1',null,'0','新零售','High purity graphite',null,'0','1','2017-08-03 15:13:52'),('2','1',null,'0','智慧交通',null,null,'2','1','2017-08-03 15:42:46'),('3','1',null,'0','人工智能',null,null,'1','1','2017-08-03 15:44:45'),('4','1',null,'0','办公',null,null,'3','1','2017-08-03 15:41:45'),('5','1',null,'0','金融',null,null,'4','1','2017-08-03 15:43:17');/* MySQLReback Separation */
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_proshow` */
 INSERT INTO `bh_proshow` VALUES ('9','1','自助点餐终端',null,'3','#000000','0','0',null,null,null,null,'0','1','0','20170809/598a82b56b750.jpg','32寸自助点餐终端',null,null,'1','0','2017-08-09 09:35:08',null,null,null),('10','1','触摸一体机',null,'3','#000000','0','0',null,null,null,null,'0','1','0','20170809/598a82a393503.jpg','电容触摸一体机',null,null,'1','0','2017-08-09 09:36:29',null,null,null),('11','1','卖场价格信息牌',null,'1','#000000','0','0',null,null,null,null,'0','1','0','20170809/598a82ad506d3.jpg','商用液晶显示屏',null,null,'1','0','2017-08-09 09:37:44',null,null,null),('12','1','户外广告机',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20170809/598a8222e6fc3.jpg','户外三防液晶广告屏',null,null,'1','0','2017-08-09 09:38:34',null,null,null),('13','1','触摸查询台',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20170809/598a81ddd58f8.png','43寸触摸查询一体机',null,null,'1','0','2017-08-09 09:39:23',null,null,null),('14','1','32寸液晶水牌',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20170809/598aa39e2b682.png','适应尺寸：32寸\r\n落地安装',null,null,'1','0','2017-08-09 11:34:47',null,null,null),('15','1','壁挂液晶广告机',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20170809/598aa229cb5c7.jpg','适应尺寸：22、32、43、49、55\r\n横竖式可调壁挂安装',null,null,'1','0','2017-08-09 13:44:17',null,null,null),('16','1','壁挂数字标牌',null,'1','#000000','13','0',null,null,null,null,'0','1','0','20170809/598aa14a49833.jpg','适应尺寸：32、43\r\n直角竖式壁挂安装',null,null,'1','0','2017-08-09 13:45:42',null,null,null),('17','1','落地液晶广告机',null,'1','#000000','13','0',null,null,null,null,'0','1','0','20170809/598aa1ea3e435.jpg','适应尺寸：43、49、55、65\r\n落地立式安装',null,null,'1','0','2017-08-09 13:48:16',null,null,null),('18','1','触摸查询广告机',null,'1','#000000','13','0',null,null,null,null,'0','0','0','20170809/598aa2796418b.jpg','适应尺寸：43、55\r\n支持壁挂与卧式安装',null,null,'1','0','2017-08-09 13:50:54',null,null,null),('19','1','立式触摸广告机',null,'1','#000000','13','0',null,null,null,null,'0','0','0','20170809/598aa2f32366b.jpg','适应尺寸：43、49、55\r\n落地立式安装',null,null,'1','0','2017-08-09 13:52:26',null,null,null),('20','1','SR-L46SD03',null,'2','#000000','13','0',null,null,null,null,'0','0','0','20170809/598ac22ebc211.png','尺寸： 46寸\r\n拼缝：3.5mm\r\n亮度：500cd/㎡',null,null,'1','0','2017-08-09 16:10:35',null,null,null),('21','1','SR-L46SD04',null,'2','#000000','13','0',null,null,null,null,'0','0','0','20170809/598ac3929a3c6.png','尺寸： 46寸\r\n拼缝：5.5mm\r\n亮度：500cd/㎡',null,null,'1','0','2017-08-09 16:11:03',null,null,null),('22','1','SR-L49LD02',null,'2','#000000','13','0',null,null,null,null,'0','0','0','20170809/598ac3da1fe60.png','尺寸： 49寸\r\n拼缝：3.5mm\r\n亮度：500cd/㎡',null,null,'1','0','2017-08-09 16:12:32',null,null,null),('23','1','SR-L55BD03',null,'2','#000000','13','0',null,null,null,null,'0','0','0','20170809/598ac438e9db2.png','尺寸： 55寸\r\n拼缝：3.5mm\r\n亮度：500cd/㎡',null,null,'1','0','2017-08-09 16:13:46',null,null,null),('24','1','SR-L55BD04',null,'2','#000000','13','0',null,null,null,null,'0','0','0','20170809/598ac45936927.png','尺寸： 55寸\r\n拼缝：5.3mm\r\n亮度：500cd/㎡',null,null,'1','0','2017-08-09 16:14:19',null,null,null),('25','1','43寸液晶水牌',null,'1','#000000','13','0',null,null,null,null,'0','1','0','20170809/598ac4efe083c.png','适应尺寸：43寸\r\n落地立式',null,null,'1','0','2017-08-09 16:17:06',null,null,null),('26','1','32寸液晶电视',null,'6','#000000','13','0',null,null,null,null,'0','0','0','20170809/598ac62a42c3f.png','操作系统	Android\r\n处理器	ARM Cortex-A7\r\nCPU	双核1.0GHz\r\n内存	DDR 512G\r\n内置存储器	NAND FLASH 4G',null,null,'1','0','2017-08-09 16:22:38',null,null,null),('27','1','43寸液晶电视',null,'6','#000000','13','0',null,null,null,null,'0','0','0','20170809/598ac6a65f92e.png','操作系统	Android\r\n处理器	ARM Cortex-A7\r\nCPU	双核1.0GHz\r\n内存	DDR 512G\r\n内置存储器	NAND FLASH 4G',null,null,'1','0','2017-08-09 16:24:30',null,null,null),('28','1','安卓播放盒',null,'4','#000000','0','0',null,null,null,null,'0','0','0','20170809/598ac78f73e54.png','处理器	A33四核 Cortex™-A7 主频1.2\r\n内存	512MB（最大支持1GB）\r\n内置存储器	EMMC 8GB (最大支持16GB)',null,null,'1','0','2017-08-09 16:25:40',null,null,null),('29','1','50寸液晶电视',null,'6','#000000','13','0',null,null,null,null,'0','0','0','20170809/598ac801c18a7.png','操作系统	Android\r\n处理器	ARM Cortex-A7\r\nCPU	双核1.0GHz\r\n内存	DDR 512G\r\n内置存储器	NAND FLASH 4G',null,null,'1','0','2017-08-09 16:29:56',null,null,null);/* MySQLReback Separation */
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_protype` */
 INSERT INTO `bh_protype` VALUES ('1','1',null,'0','广告机','High purity graphite',null,'1','1','2017-08-03 16:04:34'),('2','1',null,'0','拼接屏',null,null,'1','1','2017-08-03 16:09:15'),('3','1',null,'0','定制显示',null,null,'2','1','2017-08-03 16:11:42'),('4','1',null,'0','高清播放盒',null,null,'3','1','2017-08-14 14:08:59'),('5','1',null,'0','多媒体发布系统',null,null,'4','1','2017-08-03 15:40:38'),('6','1',null,'0','商用电视',null,null,'0','1','2017-08-14 14:08:00'),('7','1',null,'0','触摸一体机',null,null,'0','1','2017-08-14 14:08:38');/* MySQLReback Separation */
 /* 创建表结构 `bh_systemconfig`  */
 DROP TABLE IF EXISTS `bh_systemconfig`;/* MySQLReback Separation */ CREATE TABLE `bh_systemconfig` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `metatitle` char(250) DEFAULT NULL COMMENT '//title',
  `metades` char(250) DEFAULT NULL COMMENT '//网站描述',
  `metakey` char(250) DEFAULT NULL COMMENT '//关键词',
  `logo` char(50) DEFAULT NULL COMMENT '//logo路径',
  `companyname` char(200) DEFAULT NULL COMMENT '//公司名称',
  `companyurl` char(150) DEFAULT NULL COMMENT '//公司链接',
  `slogan` varchar(200) DEFAULT NULL COMMENT '公司标语',
  `address` char(250) DEFAULT NULL COMMENT '//公司地址',
  `en_metatitle` varchar(255) DEFAULT NULL,
  `en_metades` varchar(500) DEFAULT NULL,
  `en_metakey` varchar(255) DEFAULT NULL,
  `en_companyname` varchar(255) DEFAULT NULL,
  `en_address` varchar(255) DEFAULT NULL,
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
  `mailpass` char(50) DEFAULT NULL COMMENT '//邮箱密码',
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
 INSERT INTO `bh_systemconfig` VALUES ('1','新零售系统整体方案提供商','深圳市深海瑞格科技有限公司',null,null,'深圳市深海瑞格科技有限公司',null,'新零售系统整体方案提供商','深圳市宝安区福永蚝业路39号旭竟昌工业区B6栋2楼',null,null,null,null,null,'market@searegal.com','0755-85252860',null,null,'0755-85252860',null,'粤ICP备88888888号-1','0',null,'您的IP将禁用一段时间。','0','网站项目维护中...',null,null,null,'smtp.163.com','25',null,null,'cao|艹|草',null,null,'0','8','5',null,'23mlg.com','20','#999999','7','0','0','0','0',null,'1','1','15','0000-00-00 00:00:00');/* MySQLReback Separation */