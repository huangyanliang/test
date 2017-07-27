/* This file is created by MySQLReback 2017-07-27 18:02:23 */
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
 INSERT INTO `bh_aboutus` VALUES ('1','1','关于我们',null,'20170725/5976fd52c4db3.jpg','海康威视是以视频为核心的物联网解决方案和数据运营服务提供商，面向全球提供安防、可视化管理与大数据服务。在视频监控行业之外，海康威视基于视频技术，将业务延伸到智能家居、工业自动化和汽车电子等行业，为持续发展打开新的空间','<div>\r\n</div>\r\n<div class=\"nbrbody\">\r\n	<p style=\"text-indent:2em;\" align=\"center\">\r\n		<img title=\"海康威视.jpg\" src=\"http://www.hikvision.com/ueditor/net/upload/2015-06-17/791cc637-0470-4d64-b22c-4bc516c9b5b6.jpg\" /> \r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		<br />\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		海康威视是以视频为核心的物联网解决方案和数据运营服务提供商，面向全球提供安防、可视化管理与大数据服务。\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		海康威视全球员工2万人（截止2016年底），其中研发人员超9300人，研发投入占企业销售额的7-8%，绝对数额占据业内前茅。海康威视是博士后科研工作站单位，在国内设有五大研发中心，在海外建立蒙特利尔研发中心和硅谷研究所，海康威视拥有视音频编解码、视频图像处理、视音频数据存储等核心技术，及云计算、大数据、深度学习等前瞻技术，针对公安、交通、司法、文教卫、金融、能源和智能楼宇等众多行业提供专业的细分产品、IVM智能可视化管理解决方案和大数据服务。在视频监控行业之外，海康威视基于视频技术，将业务延伸到智能家居、工业自动化和汽车电子等行业，为持续发展打开新的空间。\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		海康威视在中国大陆35个城市设立分公司及售后服务站，在境外，设立香港、荷兰、南非、印度、迪拜、美国、加拿大、巴西、俄罗斯、新加坡、意大利、澳大利亚、法国、西班牙、波兰、英国、韩国、哥伦比亚、哈萨克斯坦和土耳其等28个销售公司。海康威视产品和解决方案应用在150多个国家和地区，在G20杭州峰会、北京奥运会、上海世博会、美国费城平安社区、韩国首尔平安城市、巴西世界杯场馆、意大利米兰国际机场等重大安保项目中发挥了极其重要的作用。\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		海康威视是全球视频监控数字化、网络化、高清智能化的见证者、践行者和重要推动者。连续六年（2011-2016）蝉联iHS全球视频监控市场占有率第1位，硬盘录像机、网络硬盘录像机、监控摄像机第1位<a href=\"http://www.hikvision.com/cn/about_8.html#1\"><sup>1</sup></a>；连年入选“国家重点软件企业” <a href=\"http://www.hikvision.com/cn/about_8.html#2\"><sup>2</sup></a>、“中国软件收入前百家企业”<a href=\"http://www.hikvision.com/cn/about_8.html#3\"><sup>3</sup></a>、A&amp;S《安全自动化》“中国安防十大民族品牌”、CPS 《中国公共安全》“中国安防百强”（位列榜首）；2016年,A&amp;S《安全自动化》公布的“全球安防50强”榜单中，位列全球第一位。\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		2010年5月，海康威视在深圳证券交易所--中小企业板上市，股票代码：002415，长期位居中小板市值前3位。基于创新的管理模式，良好的经营业绩，公司先后荣获“2016CCTV中国十佳上市公司”<a href=\"http://www.hikvision.com/cn/about_8.html#4\"><sup>4</sup></a>、“中国中小板上市公司价值十强”<a href=\"http://www.hikvision.com/cn/about_8.html#5\"><sup>5</sup></a>、“2016年A股上市公司未来价值排行以及A股最佳上市公司”榜首<a href=\"http://www.hikvision.com/cn/about_8.html#6\"><sup>6</sup></a>、“第六届中国上市公司口碑榜最佳公司治理实践奖”<a href=\"http://www.hikvision.com/cn/about_8.html#7\"><sup>7</sup></a>、“中国中小板上市公司投资者关系最佳董事会”<a href=\"http://www.hikvision.com/cn/about_8.html#8\"><sup>8</sup></a>等重要荣誉。\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		海康威视秉承“专业、厚实、诚信”的经营理念，将始终以 “新视觉，新世界”为使命，将“成就客户、价值为本、诚信务实、追求卓越”核心价值观内化为行动准则，以“成为一家受人尊敬的世界级企业”为愿景，不断发展视频技术，服务人类。\r\n	</p>\r\n	<hr />\r\n	<p>\r\n		<a name=\"1\"></a> <sup>1</sup><span style=\"font-family:楷体, 楷体_GB2312, SimKai;font-size:12px;\">iHS是世界著名的三大咨询调查公司之一，官方网站https://www.ihs.com/。</span> \r\n	</p>\r\n	<p>\r\n		<a name=\"2\"></a><sup>2</sup><span style=\"font-family:楷体, 楷体_GB2312, SimKai;font-size:12px;\">“国家重点软件企业”名单由国家发展改革委、工业和信息化部、商务部、国家税务总局等联合公布。</span> \r\n	</p>\r\n	<p>\r\n		<a name=\"3\"></a><sup>3</sup><span style=\"font-family:楷体, 楷体_GB2312, SimKai;font-size:12px;\">“中国软件收入前百家企业”由工业和信息化部发布。</span> \r\n	</p>\r\n	<p>\r\n		<a name=\"4\"></a><sup>4</sup><span style=\"font-family:楷体, 楷体_GB2312, SimKai;font-size:12px;\"> 2016年12月12日，2016央视财经论坛暨中国上市公司峰会上正式发布了“2016CCTV中国十佳上市公司”榜单，海康威视位列其中。</span> \r\n	</p>\r\n	<p>\r\n		<a name=\"5\"></a><sup>5</sup><span style=\"font-family:楷体, 楷体_GB2312, SimKai;font-size:12px;\"> 2016年9月，第十届中国上市公司价值评选，海康威视荣获“中国中小板上市公司价值五十强前十强”。</span> \r\n	</p>\r\n	<p>\r\n		<a name=\"6\"></a><sup>6</sup><span style=\"font-family:楷体, 楷体_GB2312, SimKai;font-size:12px;\"> 2016年11月，第三届“2016 A股上市公司未来成长价值排行榜暨行业先进性排序”，海康威视荣登2016年A股上市公司未来价值排行以及A股最佳上市公司榜首。</span> \r\n	</p>\r\n	<p>\r\n		<a name=\"7\"></a><sup>7</sup><span style=\"font-family:楷体, 楷体_GB2312, SimKai;font-size:12px;\"> 2016 年 11 月，由每日经济新闻主办“第六届中国上市公司领袖峰会”上颁发“中国上市公司口碑榜”九大奖项，海康威视获颁 2016“最佳公司治理实践奖”。</span> \r\n	</p>\r\n	<p>\r\n		<a name=\"8\"></a><sup>8</sup><span style=\"font-family:楷体, 楷体_GB2312, SimKai;font-size:12px;\"> 2016年4月，海康威视荣获证券时报、中国基金报颁发的“中国上市公司投资者关系天马奖——中国中小板上市公司投资者关系最佳董事会”。</span> \r\n	</p>\r\n</div>',null,'1','1','2017-07-27 15:36:55',null,null,null);/* MySQLReback Separation */
 /* 插入数据 `bh_aboutus` */
 INSERT INTO `bh_aboutus` VALUES ('2','1','服务支持',null,null,null,'服务支持',null,'1','3','2017-07-27 16:16:10',null,null,null),('3','1','联系我们',null,null,null,'<div class=\"lxwm\">\r\n	<img src=\"http://www.hikvision.com/cn/images/lxwmpic1.jpg\" width=\"927\" height=\"200\" /> \r\n</div>\r\n<div class=\"lxwm1\">\r\n	<br />\r\n	<div class=\"lxwm4\">\r\n		<p>\r\n			<span style=\"line-height:30px;font-family:arial, helvetica, sans-serif;color:#7F7F7F;font-size:12px;\"> 电话：0571-88075998 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;技术服务微信：海康威视客户服务</span> \r\n		</p>\r\n		<p>\r\n			<span style=\"line-height:30px;font-family:arial, helvetica, sans-serif;color:#7F7F7F;font-size:12px;\"> 邮箱：market@hikvision.com &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;技术服务电话：400-700-5998</span> \r\n		</p>\r\n		<p>\r\n			<span style=\"line-height:30px;font-family:arial, helvetica, sans-serif;color:#7F7F7F;font-size:12px;\"> 传真：0571-88805843 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;技术服务邮箱：400@hikvision.com</span> \r\n		</p>\r\n		<p>\r\n			<span style=\"line-height:30px;font-family:arial, helvetica, sans-serif;color:#7F7F7F;font-size:12px;\"> 邮编：310051 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 官方通讯地址：杭州市滨江区阡陌路555号</span><span style=\"line-height:30px;font-family:arial, helvetica, sans-serif;font-size:12px;\"> </span> \r\n		</p>\r\n		<p>\r\n			<span style=\"line-height:30px;font-family:arial, helvetica, sans-serif;font-size:12px;\"></span> \r\n		</p>\r\n		<p>\r\n			<span style=\"line-height:30px;font-family:arial, helvetica, sans-serif;font-size:12px;\"></span> \r\n		</p>\r\n	</div>\r\n</div>',null,'1','2','2017-07-26 10:31:43',null,null,null);/* MySQLReback Separation */
 /* 创建表结构 `bh_adminrecord`  */
 DROP TABLE IF EXISTS `bh_adminrecord`;/* MySQLReback Separation */ CREATE TABLE `bh_adminrecord` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user` char(50) NOT NULL COMMENT '//管理员用户名',
  `ip` char(35) NOT NULL COMMENT '//登录IP',
  `date` datetime DEFAULT NULL COMMENT '//登录时间',
  PRIMARY KEY (`Id`),
  FULLTEXT KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_adminrecord` */
 INSERT INTO `bh_adminrecord` VALUES ('1','admin','0.0.0.0','2017-07-26 16:51:03'),('2','admin','0.0.0.0','2017-07-27 14:06:59'),('3','admin','0.0.0.0','2017-07-27 16:15:50'),('4','admin','0.0.0.0','2017-07-27 18:01:36');/* MySQLReback Separation */
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
 INSERT INTO `bh_adminuser` VALUES ('1','admin','55554fcd9acafd20c678cb89cdd38175','769812','admin','admin@163.com',null,'177','0.0.0.0','2017-07-27 18:01:35','2015-05-25 17:54:12');/* MySQLReback Separation */
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_caseshow` */
 INSERT INTO `bh_caseshow` VALUES ('1','1','成功案例',null,'1','#000000','13','0',null,null,null,null,'0','0','0','20170727/5979a660dacff.jpg','成功案例成功案例成功案例成功案例成功案例成功案例成功案例','成功案例成功案例成功案例成功案例成功案例成功案例成功案例成功案例成功案例',null,'1','0','2017-07-27 16:38:08',null,null,null);/* MySQLReback Separation */
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_casetype` */
 INSERT INTO `bh_casetype` VALUES ('1','1',null,'0','成功案例分类1',null,null,'0','1','2017-07-26 16:53:49'),('2','1',null,'0','成功案例分类2',null,null,'1','1','2017-07-26 16:54:07');/* MySQLReback Separation */
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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_information` */
 INSERT INTO `bh_information` VALUES ('1','1','2017中国电子信息百强海康威视排名15，较去年上升4名',null,'1','#e33d3d','0','1','百恒网络','百恒网络',null,null,'33','1','0','20170726/597841021c11b.jpg','突出主营业务，优化资源结构；实现科技创新，发展高新材料；强化管理素质，健全内部机制；吸纳培','<p>\r\n	7月21日，在工业和信息化部的指导下，2017年中国电子信息百强企业发布暨智能终端产业高峰论坛在贵州遵义召开，会上发布了“2017年（第三十一届）中国电子信息百强企业”。海康威视位列15，较2016年上升4位，这是公司继2008\r\n 年首次参评以来，连续十年入选中国电子信息百强榜单。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img title=\"2017中国电子信息百强.jpg\" src=\"http://www.hikvision.com/ueditor/net/upload/2017-07-25/570681af-5086-40f3-8e20-2f873ce19f65.jpg\" /> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	2017中国电子信息百强企业的评选，是根据2016年电子信息产业统计年报数据，通过主营业务收入、市场占有率、技术创新力、品牌影响力、企业社会责任等综合指标评价出来的。2016年海康威视实现营业总收入319.24亿元，同比增长26.32%；净利润74.22亿元，同比增长26.46%；整体毛利率为41.58%，同比提高1.48%，盈利能力不断提升。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	2016年是安防行业暗流涌动的一年，技术创新推动了产业的智能化浪潮。海康威视通过技术创新持续推出优秀的新产品，通过持续改善不断提升产品性能，通过对用户需求的深刻理解优化实践，通过满足用户不断提高的产品应用需求和服务诉求给用户带来价值，从而获得自身的发展壮大。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	公司2015年推出的基于GPU和深度学习技术的“猎鹰”视频结构化服务器和“刀锋”车辆图片结构化服务器，在2016年获得了市场的认可。2016年，公司推出了基于GPU/VPU和深度学习技术的“深眸”系列智能摄像机、“超脑”系列NVR、“神捕”系列智能交通产品、“脸谱”人脸分析服务器等深度智能产品，并在解决方案中整合应用。在幸运地抓住视频监控数字化、网络化的机遇之后，公司将会再次抓住视频监控智能化——AI机遇期，持续发力为客户创造更大价值。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>',null,'1','1','2017-07-26 15:13:37','Ning new carbon Feng Tian FengXin county industrial park in jiangxi province','Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:14px;line-height:21px;background-color:#F8F8F8;\">Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture</span>');/* MySQLReback Separation */
 /* 插入数据 `bh_information` */
 INSERT INTO `bh_information` VALUES ('2','1','2017中国电子信息百强海康威视排名15，较去年上升4名',null,'3','#e33d3d','0','1','百恒网络','百恒网络',null,null,'32','0','0','20170726/597841021c11b.jpg','突出主营业务，优化资源结构；实现科技创新，发展高新材料；强化管理素质，健全内部机制；吸纳培','<p>\r\n	7月21日，在工业和信息化部的指导下，2017年中国电子信息百强企业发布暨智能终端产业高峰论坛在贵州遵义召开，会上发布了“2017年（第三十一届）中国电子信息百强企业”。海康威视位列15，较2016年上升4位，这是公司继2008\r\n 年首次参评以来，连续十年入选中国电子信息百强榜单。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img title=\"2017中国电子信息百强.jpg\" src=\"http://www.hikvision.com/ueditor/net/upload/2017-07-25/570681af-5086-40f3-8e20-2f873ce19f65.jpg\" /> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	2017中国电子信息百强企业的评选，是根据2016年电子信息产业统计年报数据，通过主营业务收入、市场占有率、技术创新力、品牌影响力、企业社会责任等综合指标评价出来的。2016年海康威视实现营业总收入319.24亿元，同比增长26.32%；净利润74.22亿元，同比增长26.46%；整体毛利率为41.58%，同比提高1.48%，盈利能力不断提升。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	2016年是安防行业暗流涌动的一年，技术创新推动了产业的智能化浪潮。海康威视通过技术创新持续推出优秀的新产品，通过持续改善不断提升产品性能，通过对用户需求的深刻理解优化实践，通过满足用户不断提高的产品应用需求和服务诉求给用户带来价值，从而获得自身的发展壮大。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	公司2015年推出的基于GPU和深度学习技术的“猎鹰”视频结构化服务器和“刀锋”车辆图片结构化服务器，在2016年获得了市场的认可。2016年，公司推出了基于GPU/VPU和深度学习技术的“深眸”系列智能摄像机、“超脑”系列NVR、“神捕”系列智能交通产品、“脸谱”人脸分析服务器等深度智能产品，并在解决方案中整合应用。在幸运地抓住视频监控数字化、网络化的机遇之后，公司将会再次抓住视频监控智能化——AI机遇期，持续发力为客户创造更大价值。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>',null,'1','1','2017-07-26 15:13:37','Ning new carbon Feng Tian FengXin county industrial park in jiangxi province','Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:14px;line-height:21px;background-color:#F8F8F8;\">Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture</span>');/* MySQLReback Separation */
 /* 插入数据 `bh_information` */
 INSERT INTO `bh_information` VALUES ('3','1','2017中国电子信息百强海康威视排名15，较去年上升4名',null,'1','#e33d3d','0','1','百恒网络','百恒网络',null,null,'32','0','0','20170726/597841021c11b.jpg','突出主营业务，优化资源结构；实现科技创新，发展高新材料；强化管理素质，健全内部机制；吸纳培','<p>\r\n	7月21日，在工业和信息化部的指导下，2017年中国电子信息百强企业发布暨智能终端产业高峰论坛在贵州遵义召开，会上发布了“2017年（第三十一届）中国电子信息百强企业”。海康威视位列15，较2016年上升4位，这是公司继2008\r\n 年首次参评以来，连续十年入选中国电子信息百强榜单。\r\n	<p style=\"text-align:center;\">\r\n		<img title=\"2017中国电子信息百强.jpg\" src=\"http://www.hikvision.com/ueditor/net/upload/2017-07-25/570681af-5086-40f3-8e20-2f873ce19f65.jpg\" />\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		&nbsp;2017中国电子信息百强企业的评选，是根据2016年电子信息产业统计年报数据，通过主营业务收入、市场占有率、技术创新力、品牌影响力、企业社会责任等综合指标评价出来的。2016年海康威视实现营业总收入319.24亿元，同比增长26.32%；净利润74.22亿元，同比增长26.46%；整体毛利率为41.58%，同比提高1.48%，盈利能力不断提升。\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		&nbsp;2016年是安防行业暗流涌动的一年，技术创新推动了产业的智能化浪潮。海康威视通过技术创新持续推出优秀的新产品，通过持续改善不断提升产品性能，通过对用户需求的深刻理解优化实践，通过满足用户不断提高的产品应用需求和服务诉求给用户带来价值，从而获得自身的发展壮大。\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		&nbsp;公司2015年推出的基于GPU和深度学习技术的“猎鹰”视频结构化服务器和“刀锋”车辆图片结构化服务器，在2016年获得了市场的认可。2016年，公司推出了基于GPU/VPU和深度学习技术的“深眸”系列智能摄像机、“超脑”系列NVR、“神捕”系列智能交通产品、“脸谱”人脸分析服务器等深度智能产品，并在解决方案中整合应用。在幸运地抓住视频监控数字化、网络化的机遇之后，公司将会再次抓住视频监控智能化——AI机遇期，持续发力为客户创造更大价值。\r\n	</p>\r\n</p>',null,'1','1','2017-07-26 15:13:37','Ning new carbon Feng Tian FengXin county industrial park in jiangxi province','Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:14px;line-height:21px;background-color:#F8F8F8;\">Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture</span>');/* MySQLReback Separation */
 /* 插入数据 `bh_information` */
 INSERT INTO `bh_information` VALUES ('4','1','2017中国电子信息百强海康威视排名15，较去年上升4名',null,'1','#e33d3d','0','1','百恒网络','百恒网络',null,null,'32','0','0','20170726/597841021c11b.jpg','突出主营业务，优化资源结构；实现科技创新，发展高新材料；强化管理素质，健全内部机制；吸纳培','<p>\r\n	7月21日，在工业和信息化部的指导下，2017年中国电子信息百强企业发布暨智能终端产业高峰论坛在贵州遵义召开，会上发布了“2017年（第三十一届）中国电子信息百强企业”。海康威视位列15，较2016年上升4位，这是公司继2008\r\n 年首次参评以来，连续十年入选中国电子信息百强榜单。\r\n	<p style=\"text-align:center;\">\r\n		<img title=\"2017中国电子信息百强.jpg\" src=\"http://www.hikvision.com/ueditor/net/upload/2017-07-25/570681af-5086-40f3-8e20-2f873ce19f65.jpg\" />\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		&nbsp;2017中国电子信息百强企业的评选，是根据2016年电子信息产业统计年报数据，通过主营业务收入、市场占有率、技术创新力、品牌影响力、企业社会责任等综合指标评价出来的。2016年海康威视实现营业总收入319.24亿元，同比增长26.32%；净利润74.22亿元，同比增长26.46%；整体毛利率为41.58%，同比提高1.48%，盈利能力不断提升。\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		&nbsp;2016年是安防行业暗流涌动的一年，技术创新推动了产业的智能化浪潮。海康威视通过技术创新持续推出优秀的新产品，通过持续改善不断提升产品性能，通过对用户需求的深刻理解优化实践，通过满足用户不断提高的产品应用需求和服务诉求给用户带来价值，从而获得自身的发展壮大。\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		&nbsp;公司2015年推出的基于GPU和深度学习技术的“猎鹰”视频结构化服务器和“刀锋”车辆图片结构化服务器，在2016年获得了市场的认可。2016年，公司推出了基于GPU/VPU和深度学习技术的“深眸”系列智能摄像机、“超脑”系列NVR、“神捕”系列智能交通产品、“脸谱”人脸分析服务器等深度智能产品，并在解决方案中整合应用。在幸运地抓住视频监控数字化、网络化的机遇之后，公司将会再次抓住视频监控智能化——AI机遇期，持续发力为客户创造更大价值。\r\n	</p>\r\n</p>',null,'1','1','2017-07-26 15:13:37','Ning new carbon Feng Tian FengXin county industrial park in jiangxi province','Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:14px;line-height:21px;background-color:#F8F8F8;\">Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture</span>');/* MySQLReback Separation */
 /* 插入数据 `bh_information` */
 INSERT INTO `bh_information` VALUES ('5','1','2017中国电子信息百强海康威视排名15，较去年上升4名',null,'1','#e33d3d','0','1','百恒网络','百恒网络',null,null,'32','0','0','20170726/597841021c11b.jpg','突出主营业务，优化资源结构；实现科技创新，发展高新材料；强化管理素质，健全内部机制；吸纳培','<p>\r\n	7月21日，在工业和信息化部的指导下，2017年中国电子信息百强企业发布暨智能终端产业高峰论坛在贵州遵义召开，会上发布了“2017年（第三十一届）中国电子信息百强企业”。海康威视位列15，较2016年上升4位，这是公司继2008\r\n 年首次参评以来，连续十年入选中国电子信息百强榜单。\r\n	<p style=\"text-align:center;\">\r\n		<img title=\"2017中国电子信息百强.jpg\" src=\"http://www.hikvision.com/ueditor/net/upload/2017-07-25/570681af-5086-40f3-8e20-2f873ce19f65.jpg\" />\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		&nbsp;2017中国电子信息百强企业的评选，是根据2016年电子信息产业统计年报数据，通过主营业务收入、市场占有率、技术创新力、品牌影响力、企业社会责任等综合指标评价出来的。2016年海康威视实现营业总收入319.24亿元，同比增长26.32%；净利润74.22亿元，同比增长26.46%；整体毛利率为41.58%，同比提高1.48%，盈利能力不断提升。\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		&nbsp;2016年是安防行业暗流涌动的一年，技术创新推动了产业的智能化浪潮。海康威视通过技术创新持续推出优秀的新产品，通过持续改善不断提升产品性能，通过对用户需求的深刻理解优化实践，通过满足用户不断提高的产品应用需求和服务诉求给用户带来价值，从而获得自身的发展壮大。\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		&nbsp;公司2015年推出的基于GPU和深度学习技术的“猎鹰”视频结构化服务器和“刀锋”车辆图片结构化服务器，在2016年获得了市场的认可。2016年，公司推出了基于GPU/VPU和深度学习技术的“深眸”系列智能摄像机、“超脑”系列NVR、“神捕”系列智能交通产品、“脸谱”人脸分析服务器等深度智能产品，并在解决方案中整合应用。在幸运地抓住视频监控数字化、网络化的机遇之后，公司将会再次抓住视频监控智能化——AI机遇期，持续发力为客户创造更大价值。\r\n	</p>\r\n</p>',null,'1','1','2017-07-26 15:13:37','Ning new carbon Feng Tian FengXin county industrial park in jiangxi province','Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:14px;line-height:21px;background-color:#F8F8F8;\">Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture</span>');/* MySQLReback Separation */
 /* 插入数据 `bh_information` */
 INSERT INTO `bh_information` VALUES ('6','1','2017中国电子信息百强海康威视排名15，较去年上升4名',null,'1','#e33d3d','0','1','百恒网络','百恒网络',null,null,'32','0','0','20170726/597841021c11b.jpg','突出主营业务，优化资源结构；实现科技创新，发展高新材料；强化管理素质，健全内部机制；吸纳培','<p>\r\n	7月21日，在工业和信息化部的指导下，2017年中国电子信息百强企业发布暨智能终端产业高峰论坛在贵州遵义召开，会上发布了“2017年（第三十一届）中国电子信息百强企业”。海康威视位列15，较2016年上升4位，这是公司继2008\r\n 年首次参评以来，连续十年入选中国电子信息百强榜单。\r\n	<p style=\"text-align:center;\">\r\n		<img title=\"2017中国电子信息百强.jpg\" src=\"http://www.hikvision.com/ueditor/net/upload/2017-07-25/570681af-5086-40f3-8e20-2f873ce19f65.jpg\" />\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		&nbsp;2017中国电子信息百强企业的评选，是根据2016年电子信息产业统计年报数据，通过主营业务收入、市场占有率、技术创新力、品牌影响力、企业社会责任等综合指标评价出来的。2016年海康威视实现营业总收入319.24亿元，同比增长26.32%；净利润74.22亿元，同比增长26.46%；整体毛利率为41.58%，同比提高1.48%，盈利能力不断提升。\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		&nbsp;2016年是安防行业暗流涌动的一年，技术创新推动了产业的智能化浪潮。海康威视通过技术创新持续推出优秀的新产品，通过持续改善不断提升产品性能，通过对用户需求的深刻理解优化实践，通过满足用户不断提高的产品应用需求和服务诉求给用户带来价值，从而获得自身的发展壮大。\r\n	</p>\r\n	<p style=\"text-indent:2em;\">\r\n		&nbsp;公司2015年推出的基于GPU和深度学习技术的“猎鹰”视频结构化服务器和“刀锋”车辆图片结构化服务器，在2016年获得了市场的认可。2016年，公司推出了基于GPU/VPU和深度学习技术的“深眸”系列智能摄像机、“超脑”系列NVR、“神捕”系列智能交通产品、“脸谱”人脸分析服务器等深度智能产品，并在解决方案中整合应用。在幸运地抓住视频监控数字化、网络化的机遇之后，公司将会再次抓住视频监控智能化——AI机遇期，持续发力为客户创造更大价值。\r\n	</p>\r\n</p>',null,'1','1','2017-07-26 15:13:37','Ning new carbon Feng Tian FengXin county industrial park in jiangxi province','Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:14px;line-height:21px;background-color:#F8F8F8;\">Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture</span>');/* MySQLReback Separation */
 /* 插入数据 `bh_information` */
 INSERT INTO `bh_information` VALUES ('7','1','2017中国电子信息百强海康威视排名15，较去年上升4名',null,'3','#e33d3d','0','1','百恒网络','百恒网络',null,null,'32','0','0','20170726/597841021c11b.jpg','突出主营业务，优化资源结构；实现科技创新，发展高新材料；强化管理素质，健全内部机制；吸纳培','<p>\r\n	7月21日，在工业和信息化部的指导下，2017年中国电子信息百强企业发布暨智能终端产业高峰论坛在贵州遵义召开，会上发布了“2017年（第三十一届）中国电子信息百强企业”。海康威视位列15，较2016年上升4位，这是公司继2008\r\n 年首次参评以来，连续十年入选中国电子信息百强榜单。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img title=\"2017中国电子信息百强.jpg\" src=\"http://www.hikvision.com/ueditor/net/upload/2017-07-25/570681af-5086-40f3-8e20-2f873ce19f65.jpg\" /> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	2017中国电子信息百强企业的评选，是根据2016年电子信息产业统计年报数据，通过主营业务收入、市场占有率、技术创新力、品牌影响力、企业社会责任等综合指标评价出来的。2016年海康威视实现营业总收入319.24亿元，同比增长26.32%；净利润74.22亿元，同比增长26.46%；整体毛利率为41.58%，同比提高1.48%，盈利能力不断提升。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	2016年是安防行业暗流涌动的一年，技术创新推动了产业的智能化浪潮。海康威视通过技术创新持续推出优秀的新产品，通过持续改善不断提升产品性能，通过对用户需求的深刻理解优化实践，通过满足用户不断提高的产品应用需求和服务诉求给用户带来价值，从而获得自身的发展壮大。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	公司2015年推出的基于GPU和深度学习技术的“猎鹰”视频结构化服务器和“刀锋”车辆图片结构化服务器，在2016年获得了市场的认可。2016年，公司推出了基于GPU/VPU和深度学习技术的“深眸”系列智能摄像机、“超脑”系列NVR、“神捕”系列智能交通产品、“脸谱”人脸分析服务器等深度智能产品，并在解决方案中整合应用。在幸运地抓住视频监控数字化、网络化的机遇之后，公司将会再次抓住视频监控智能化——AI机遇期，持续发力为客户创造更大价值。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>',null,'1','1','2017-07-26 15:13:37','Ning new carbon Feng Tian FengXin county industrial park in jiangxi province','Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:14px;line-height:21px;background-color:#F8F8F8;\">Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture</span>');/* MySQLReback Separation */
 /* 插入数据 `bh_information` */
 INSERT INTO `bh_information` VALUES ('8','1','2017中国电子信息百强海康威视排名15，较去年上升4名',null,'2','#e33d3d','0','1','百恒网络','百恒网络',null,null,'32','0','0','20170726/597841021c11b.jpg','突出主营业务，优化资源结构；实现科技创新，发展高新材料；强化管理素质，健全内部机制；吸纳培','<p>\r\n	7月21日，在工业和信息化部的指导下，2017年中国电子信息百强企业发布暨智能终端产业高峰论坛在贵州遵义召开，会上发布了“2017年（第三十一届）中国电子信息百强企业”。海康威视位列15，较2016年上升4位，这是公司继2008\r\n 年首次参评以来，连续十年入选中国电子信息百强榜单。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img title=\"2017中国电子信息百强.jpg\" src=\"http://www.hikvision.com/ueditor/net/upload/2017-07-25/570681af-5086-40f3-8e20-2f873ce19f65.jpg\" /> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	2017中国电子信息百强企业的评选，是根据2016年电子信息产业统计年报数据，通过主营业务收入、市场占有率、技术创新力、品牌影响力、企业社会责任等综合指标评价出来的。2016年海康威视实现营业总收入319.24亿元，同比增长26.32%；净利润74.22亿元，同比增长26.46%；整体毛利率为41.58%，同比提高1.48%，盈利能力不断提升。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	2016年是安防行业暗流涌动的一年，技术创新推动了产业的智能化浪潮。海康威视通过技术创新持续推出优秀的新产品，通过持续改善不断提升产品性能，通过对用户需求的深刻理解优化实践，通过满足用户不断提高的产品应用需求和服务诉求给用户带来价值，从而获得自身的发展壮大。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	公司2015年推出的基于GPU和深度学习技术的“猎鹰”视频结构化服务器和“刀锋”车辆图片结构化服务器，在2016年获得了市场的认可。2016年，公司推出了基于GPU/VPU和深度学习技术的“深眸”系列智能摄像机、“超脑”系列NVR、“神捕”系列智能交通产品、“脸谱”人脸分析服务器等深度智能产品，并在解决方案中整合应用。在幸运地抓住视频监控数字化、网络化的机遇之后，公司将会再次抓住视频监控智能化——AI机遇期，持续发力为客户创造更大价值。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>',null,'1','1','2017-07-26 15:13:37','Ning new carbon Feng Tian FengXin county industrial park in jiangxi province','Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:14px;line-height:21px;background-color:#F8F8F8;\">Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture</span>');/* MySQLReback Separation */
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
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
 INSERT INTO `bh_proshow` VALUES ('1','1','相关产品名称 1',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20170725/597702c5c8050.jpg','相关产品的简单叙述及一些功能性用途等等的大概介绍.','相关产品的简单叙述及一些功能性用途等等的大概介绍.',null,'1','0','2017-07-25 16:37:34','1 related product name','Related products are described briefly and some introduction about functional purposes, and so on.','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;\">Related products are described briefly and some introduction about functional purposes, and so on.</span>'),('2','1','相关产品名称 2',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20170725/597702e83d22f.jpg','相关产品的简单叙述及一些功能性用途等等的大概介绍.','相关产品的简单叙述及一些功能性用途等等的大概介绍.',null,'1','0','2017-07-25 16:37:48','2 related product name','Related products are described briefly and some introduction about functional purposes, and so on.','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;\">Related products are described briefly and some introduction about functional purposes, and so on.</span>'),('3','1','相关产品名称 3',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20170725/597702fa55557.jpg','相关产品的简单叙述及一些功能性用途等等的大概介绍.','相关产品的简单叙述及一些功能性用途等等的大概介绍.',null,'1','0','2017-07-25 16:38:03','3 related product name','Related products are described briefly and some introduction about functional purposes, and so on.','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;\">Related products are described briefly and some introduction about functional purposes, and so on.</span>'),('4','1','相关产品名称 4',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20170725/597703880edd0.jpg','相关产品的简单叙述及一些功能性用途等等的大概介绍.','相关产品的简单叙述及一些功能性用途等等的大概介绍.',null,'1','0','2017-07-25 16:38:34','4 related product name','Related products are described briefly and some introduction about functional purposes, and so on.','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;\">Related products are described briefly and some introduction about functional purposes, and so on.</span>'),('5','1','相关产品名称5',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20170725/597703b3c9c73.jpg','相关产品的简单叙述及一些功能性用途等等的大概介绍.','相关产品的简单叙述及一些功能性用途等等的大概介绍.',null,'1','0','2017-07-25 16:39:18','5 related product name','Related products are described briefly and some introduction about functional purposes, and so on.','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;\">Related products are described briefly and some introduction about functional purposes, and so on.</span>');/* MySQLReback Separation */
 /* 插入数据 `bh_proshow` */
 INSERT INTO `bh_proshow` VALUES ('6','1','相关产品名称 1',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20170725/59770339c004a.jpg','相关产品的简单叙述及一些功能性用途等等的大概介绍.','<strong>产品简介</strong><br />\r\n&nbsp;&nbsp;&nbsp;<span style=\"font-family:arial,helvetica,sans-serif;font-size:12px;\">DS-D2046NL-B液晶显示单元，采用SAMSUNG进口原装超窄边面板,屏幕之间拼缝仅仅为5.3mm。超高亮度，500cd/m²，直下式LED背光源，显示单元亮度更加均匀，无边界暗影现象。工业级设计，使用寿命远高于普通家用液晶显示单元，可长达60000小时。屏幕内置拼接控制器，可将同源信号实现屏幕的自拼接。选用的LCD液晶显示单元具有丰富的接口，可接收DVI，VGA,\r\n HDMI, YPbPr等各种信号。支持多种控制方式。</span>\r\n<p>\r\n	<span style=\"font-family:宋体;color:#555555;font-size:12px;\"></span>\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	<strong>订货型号<br />\r\n</strong>DS-D2046NL-B<br />\r\n<br />\r\n<strong>功能特性</strong>\r\n</p>\r\n<p>\r\n	<span style=\"font-family:arial,helvetica,sans-serif;font-size:12px;\"><span style=\"font-family:Wingdings;font-size:12px;\">l<span>&nbsp; </span></span>直下式LED背光源，显示单元亮度更加均匀，无边界暗影现象；<br />\r\n<span style=\"font-family:Wingdings;font-size:12px;\">l<span>&nbsp; </span></span>物理分辨率高达1920*1080；<br />\r\n<span style=\"font-family:Wingdings;font-size:12px;\">l<span>&nbsp; </span></span>极高的显示分辨率，画面细腻，色彩丰富；<br />\r\n<span style=\"font-family:Wingdings;font-size:12px;\">l<span>&nbsp; </span></span>高清晰度、高亮度、高色域；<br />\r\n<span style=\"font-family:Wingdings;font-size:12px;\">l<span>&nbsp; </span></span>视角可达178°，趋近于水平；<br />\r\n<span style=\"font-family:Wingdings;font-size:12px;\">l<span>&nbsp; </span></span>显示面积大、体积小、重量轻；<br />\r\n<span style=\"font-family:Wingdings;font-size:12px;\">l<span>&nbsp; </span></span>更长的显示寿命；<br />\r\n<span style=\"font-family:Wingdings;font-size:12px;\">l<span>&nbsp; </span></span>多种选择拼接方式，能适应各种使用场所；<br />\r\n<span style=\"font-family:Wingdings;font-size:12px;\">l<span>&nbsp; </span></span>超薄窄边设计；<br />\r\n<span style=\"font-family:Wingdings;font-size:12px;\">l<span>&nbsp; </span></span>稳定运行寿命超长，维护成本低，可24小时持续工作；<br />\r\n<span style=\"font-family:Wingdings;font-size:12px;\">l<span>&nbsp; </span></span>挂架、支架、机柜等多种安装方式供用户选择；<br />\r\n<span style=\"font-family:Wingdings;font-size:12px;\">l<span>&nbsp; </span></span>金属外壳，防辐射、防磁场、防强电场干扰；<br />\r\n<span style=\"font-family:Wingdings;font-size:12px;\">l<span>&nbsp; </span></span>工作湿度：<span style=\"font-family:arial,helvetica,sans-serif;font-size:12px;\">10%~90%</span>，在恶劣环境下仍能正常使用。</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-family:arial,helvetica,sans-serif;font-size:12px;\"></span>&nbsp;\r\n</p>\r\n<p>\r\n	<span style=\"font-family:arial,helvetica,sans-serif;font-size:12px;\">&nbsp;</span>\r\n</p>\r\n<p>\r\n	<strong>物理接口</strong>\r\n</p>\r\n<p>\r\n	<span style=\"font-family:arial,helvetica,sans-serif;font-size:12px;\">DS-D2046NL-B<span style=\"font-family:宋体;font-size:12px;\">标配接口图</span></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:12px;\">&nbsp;</span>\r\n</p>\r\n<p>\r\n	<img title=\"46NL-B接口图.jpg\" src=\"http://www.hikvision.com/ueditor/net/upload/2016-06-08/c03cf958-9f4d-4032-8d9f-604e0c1d0edf.jpg\" />\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	<strong>端口说明</strong>\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<table cellspacing=\"0\" cellpadding=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"background:#bfbfbf;\" width=\"99\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;background:lightgrey none repeat scroll 0% 0%;color:black;font-size:12px;\">定义</span>\r\n				</p>\r\n			</td>\r\n			<td style=\"background:#bfbfbf;\" width=\"396\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;background:lightgrey none repeat scroll 0% 0%;color:black;font-size:12px;\">备注</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:transparent;\" width=\"105\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;color:black;font-size:12px;\">POWER LED</span>\r\n				</p>\r\n			</td>\r\n			<td style=\"background-color:transparent;\" width=\"402\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;color:black;font-size:12px;\">电源指示灯，红色待机，绿色工作，橙色冷却风扇工作</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:transparent;\" width=\"100\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;color:black;font-size:12px;\">HDMI</span>\r\n				</p>\r\n			</td>\r\n			<td style=\"background-color:transparent;\" width=\"402\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"color:black;font-size:12px;\">HDMI输入</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:transparent;\" width=\"100\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;font-size:12px;\">DVI-IN</span>\r\n				</p>\r\n			</td>\r\n			<td style=\"background-color:transparent;\" width=\"402\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;font-size:12px;\">此接口为 DVI-I 输入接口，只有数字信号</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:transparent;\" width=\"100\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;font-size:12px;\">DVI-OUT</span>\r\n				</p>\r\n			</td>\r\n			<td style=\"background-color:transparent;\" width=\"402\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;font-size:12px;\">此接口为 DVI-I 输出接口，只有数字信号，可选择将HDMI或DVI输入信号环接输出</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:transparent;\" width=\"100\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;font-size:12px;\">VGA-IN</span>\r\n				</p>\r\n			</td>\r\n			<td style=\"background-color:transparent;\" width=\"402\">\r\n				<p>\r\n					<span style=\"font-size:12px;\">VGA模拟信号输入</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:transparent;\" width=\"100\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;font-size:12px;\">VGA-OUT</span>\r\n				</p>\r\n			</td>\r\n			<td style=\"background-color:transparent;\" width=\"402\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-size:12px;\">VGA模拟信号环通输出</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:transparent;\" width=\"100\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;color:black;font-size:12px;\">Y,Pb,Pr</span>\r\n				</p>\r\n			</td>\r\n			<td style=\"background-color:transparent;\" width=\"402\">\r\n				<p>\r\n					<span style=\"color:black;font-size:12px;\">YPbPr信号输入,BNC接口</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:transparent;\" width=\"100\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;color:black;font-size:12px;\">VIDEO-IN</span>\r\n				</p>\r\n			</td>\r\n			<td style=\"background-color:transparent;\" width=\"402\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"color:black;font-size:12px;\">AV 信号输入，BNC 接口</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:transparent;\" width=\"100\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;color:black;font-size:12px;\">VIDEO-OUT</span>\r\n				</p>\r\n			</td>\r\n			<td style=\"background-color:transparent;\" width=\"402\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"color:black;font-size:12px;\">AV 信号环通输出，BNC 接口</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:transparent;\" width=\"100\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;color:black;font-size:12px;\">USB</span>\r\n				</p>\r\n			</td>\r\n			<td style=\"background-color:transparent;\" width=\"402\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"color:black;font-size:12px;\">USB 口，用于软件升级</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:transparent;\" width=\"100\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;color:black;font-size:12px;\">RS232 IN</span>\r\n				</p>\r\n			</td>\r\n			<td style=\"background-color:transparent;\" width=\"402\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;color:black;font-size:12px;\">串口输入</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:transparent;\" width=\"100\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;color:black;font-size:12px;\">RS232 OUT</span>\r\n				</p>\r\n			</td>\r\n			<td style=\"background-color:transparent;\" width=\"402\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;color:black;font-size:12px;\">串口环通输出</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:transparent;\" width=\"100\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;color:black;font-size:12px;\">IR JACK </span>\r\n				</p>\r\n			</td>\r\n			<td style=\"background-color:transparent;\" width=\"402\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;color:black;font-size:12px;\">外接遥控器，3.5mm 立体声音频座</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background-color:transparent;\" width=\"100\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"font-family:arial,helvetica,sans-serif;color:black;font-size:12px;\">ID SW</span>\r\n				</p>\r\n			</td>\r\n			<td style=\"background-color:transparent;\" width=\"402\">\r\n				<p style=\"text-align:left;\">\r\n					<span style=\"color:black;font-size:12px;\">ID 地址编码器。前四位为垂直坐标 BCD 码，后四位为水平坐标 BCD 码</span>\r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>',null,'1','0','2017-07-25 16:39:35','1 related product name','Related products are described briefly and some introduction about functional purposes, and so on.','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;\">Related products are described briefly and some introduction about functional purposes, and so on.</span>');/* MySQLReback Separation */
 /* 插入数据 `bh_proshow` */
 INSERT INTO `bh_proshow` VALUES ('7','1','相关产品名称 2',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20170725/597703fe6ce79.jpg','相关产品的简单叙述及一些功能性用途等等的大概介绍.','相关产品的简单叙述及一些功能性用途等等的大概介绍.',null,'1','0','2017-07-25 16:40:32','2 related product name','Related products are described briefly and some introduction about functional purposes, and so on.','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;\">Related products are described briefly and some introduction about functional purposes, and so on.</span>'),('8','1','相关产品名称 3',null,'1','#000000','0','0',null,null,null,null,'0','0','0','20170725/597703e7032b4.jpg','相关产品的简单叙述及一些功能性用途等等的大概介绍.','相关产品的简单叙述及一些功能性用途等等的大概介绍.',null,'1','0','2017-07-25 16:40:10','3 related product name','Related products are described briefly and some introduction about functional purposes, and so on.','<span style=\"color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;\">Related products are described briefly and some introduction about functional purposes, and so on.</span>');/* MySQLReback Separation */
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `bh_protype` */
 INSERT INTO `bh_protype` VALUES ('1','1',null,'0','产品类别','High purity graphite',null,'0','1','2017-07-26 14:51:10'),('2','1',null,'0','产品类别2',null,null,'1','1','2017-07-26 14:52:35');/* MySQLReback Separation */
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
 INSERT INTO `bh_systemconfig` VALUES ('1','股份有限公司','股份有限公司',null,null,'股份有限公司',null,'在那遥远的地方','Jiang Xi Ning xin materials co., LTD','Jiang Xi Ning xin materials co., LTD','Jiang Xi Ning xin materials co., LTD','Jiang Xi Ning xin materials co., LTD','Feng Tian FengXin county industrial park in jiangxi province','1688@sina.com','0795-1234567  /  7654321',null,null,'0795-1234567',null,'粤ICP备88888888号-1','0',null,'您的IP将禁用一段时间。','0','网站项目维护中...',null,null,null,'smtp.163.com','25',null,null,'cao|艹|草',null,null,'1','8','5',null,'23mlg.com','20','#999999','7','0','0','0','0',null,'1','1','15','0000-00-00 00:00:00');/* MySQLReback Separation */