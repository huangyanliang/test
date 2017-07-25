-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- 主机: 127.0.0.1
-- 生成日期: 2016 �?04 �?08 �?17:52
-- 服务器版本: 5.0.37
-- PHP 版本: 5.5.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `xcl`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `bh_aboutus`
-- 

CREATE TABLE `bh_aboutus` (
  `Id` int(11) NOT NULL auto_increment,
  `sty` int(4) NOT NULL default '1' COMMENT '//预留属性(sty)',
  `topic` char(200) NOT NULL COMMENT '//标题',
  `domain` char(20) default NULL COMMENT '//个性域名',
  `pic` varchar(100) default NULL COMMENT '//图片',
  `intro` varchar(255) default NULL COMMENT '//简介内容',
  `content` text COMMENT '//内容',
  `linkurl` varchar(200) default NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL default '1' COMMENT '//是否显示栏目',
  `ord` int(11) default '0' COMMENT '//排序',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  `en_topic` char(200) default NULL,
  `en_intro` varchar(255) default NULL,
  `en_content` text,
  PRIMARY KEY  (`Id`),
  KEY `sty` (`sty`),
  KEY `domain` (`domain`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- 导出表中的数据 `bh_aboutus`
-- 

INSERT INTO `bh_aboutus` VALUES (1, 1, '关于我们', '', '20151221/5677b24f78749.jpg', '江西宁新新材料股份有限公司是一家专业生产高纯石墨的企业，总投资7000万元，地面积 80\r\n余亩，周边山清水秀，紧邻宋应星公园，内外环境十分优雅，是名符其实的花园工厂。企业坐\r\n落于江西省奉新县工业区，距省会南昌仅60公里，比邻江西九江码头，紧靠320国道， “天工\r\n大道”，交通十分便利。江西宁新新材料股份有限公司拥有整套高纯石墨材料生产线，产品规\r\n格齐全，公司产品符合冶金行业标准，年生产能力达3000吨。', '江西宁新新材料股份有限公司是一家专业生产高纯石墨的企业，总投资7000万元，地面积 80\r\n余亩，周边山清水秀，紧邻宋应星公园，内外环境十分优雅，是名符其实的花园工厂。企业坐\r\n落于江西省奉新县工业区，距省会南昌仅60公里，比邻江西九江码头，紧靠320国道， “天工\r\n大道”，交通十分便利。江西宁新新材料股份有限公司拥有整套高纯石墨材料生产线，产品规\r\n格齐全，公司产品符合冶金行业标准，年生产能力达3000吨。', NULL, 1, 1, '2015-12-21 16:03:31', 'about us', 'Jiang Xining new materials co., LTD. Is an enterprise specializing in the production of high purity graphite, with a total investment of 70 million yuan, covers an area of 80\r\nMu, the surrounding picturesque scenery, near sung ying-hsing park, inside and', '<p class="tgt" style="font-size:14px;color:#2B2B2B;font-family:arial, sans-serif;background-color:#F8F8F8;">\r\n	Jiang Xining new materials co., LTD. Is an enterprise specializing in the production of high purity graphite, with a total investment of 70 million yuan, covers an area of 80 <span style="line-height:1.5;">Mu, the surrounding picturesque scenery, near sung ying-hsing park, inside and outside environment is very elegant, is the veritable garden factory. Companies to sit </span><span style="line-height:1.5;">Fall in jiangxi province FengXin county industrial area, only 60 kilometers from the provincial capital, nanchang, near neighbour jiangxi jiujiang port, close to 320 national road, "characterized by </span><span style="line-height:1.5;">Avenue ", the traffic is very convenient. Jiang Xining new new materials co., LTD. Has a complete set of production line, high purity graphite material product rules </span><span style="line-height:1.5;">Case is complete, the company product conforms to the metallurgical industry standards, annual production capacity of 3000 tons.</span> \r\n</p>');
INSERT INTO `bh_aboutus` VALUES (2, 1, '联系我们', '', '', '', '·联系方式\r\n名称：南昌百恒网络科技有限公司\r\n地址：南昌市青山湖区国威路刘堡公寓1栋2单元2楼(国威路与国康路交界处)\r\n邮编：330006\r\n业务咨询：400-680-9298 0791-88117053，技术支持及售后：13576954230 15079002975', NULL, 1, 2, '2015-12-16 10:30:38', 'contact us', '', 'contact us');
INSERT INTO `bh_aboutus` VALUES (3, 1, '石墨用途', '', '', '', '石墨用途', NULL, 1, 3, '2015-12-16 10:33:03', 'Graphite USES', '', 'Graphite USES');
INSERT INTO `bh_aboutus` VALUES (4, 1, '人才招聘', '', '', '', '人才招聘', NULL, 1, 4, '2015-12-16 10:36:42', 'Recruitment', '', 'Recruitment');

-- --------------------------------------------------------

-- 
-- 表的结构 `bh_adminrecord`
-- 

CREATE TABLE `bh_adminrecord` (
  `Id` int(11) NOT NULL auto_increment,
  `user` char(50) NOT NULL COMMENT '//管理员用户名',
  `ip` char(35) NOT NULL COMMENT '//登录IP',
  `date` datetime default NULL COMMENT '//登录时间',
  PRIMARY KEY  (`Id`),
  FULLTEXT KEY `user` (`user`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=238 ;

-- 
-- 导出表中的数据 `bh_adminrecord`
-- 

INSERT INTO `bh_adminrecord` VALUES (157, 'admin', '127.0.0.1', '2015-10-26 08:15:24');
INSERT INTO `bh_adminrecord` VALUES (158, 'admin', '127.0.0.1', '2015-10-26 09:38:09');
INSERT INTO `bh_adminrecord` VALUES (159, 'admin', '127.0.0.1', '2015-10-26 10:17:25');
INSERT INTO `bh_adminrecord` VALUES (160, 'admin', '127.0.0.1', '2015-10-26 10:19:37');
INSERT INTO `bh_adminrecord` VALUES (161, 'admin', '127.0.0.1', '2015-10-26 10:45:40');
INSERT INTO `bh_adminrecord` VALUES (162, 'admin', '127.0.0.1', '2015-10-26 11:12:16');
INSERT INTO `bh_adminrecord` VALUES (163, 'admin', '127.0.0.1', '2015-10-26 14:08:52');
INSERT INTO `bh_adminrecord` VALUES (164, 'admin', '127.0.0.1', '2015-10-27 08:01:06');
INSERT INTO `bh_adminrecord` VALUES (165, 'admin', '0.0.0.0', '2015-10-27 08:51:50');
INSERT INTO `bh_adminrecord` VALUES (166, 'admin', '127.0.0.1', '2015-10-27 09:34:37');
INSERT INTO `bh_adminrecord` VALUES (167, 'admin', '127.0.0.1', '2015-10-27 12:29:41');
INSERT INTO `bh_adminrecord` VALUES (168, 'admin', '127.0.0.1', '2015-10-27 14:30:13');
INSERT INTO `bh_adminrecord` VALUES (169, 'admin', '127.0.0.1', '2015-10-28 08:24:10');
INSERT INTO `bh_adminrecord` VALUES (170, 'admin', '127.0.0.1', '2015-10-28 11:04:45');
INSERT INTO `bh_adminrecord` VALUES (171, 'admin', '127.0.0.1', '2015-10-28 11:38:53');
INSERT INTO `bh_adminrecord` VALUES (172, 'wang', '127.0.0.1', '2015-10-28 12:45:57');
INSERT INTO `bh_adminrecord` VALUES (173, 'admin', '127.0.0.1', '2015-10-28 13:17:34');
INSERT INTO `bh_adminrecord` VALUES (174, 'admin', '127.0.0.1', '2015-10-28 15:16:51');
INSERT INTO `bh_adminrecord` VALUES (175, 'admin', '127.0.0.1', '2015-10-28 17:19:43');
INSERT INTO `bh_adminrecord` VALUES (176, 'admin', '127.0.0.1', '2015-10-28 19:21:31');
INSERT INTO `bh_adminrecord` VALUES (177, 'admin', '127.0.0.1', '2015-10-29 07:52:00');
INSERT INTO `bh_adminrecord` VALUES (178, 'admin', '127.0.0.1', '2015-10-29 08:27:36');
INSERT INTO `bh_adminrecord` VALUES (179, 'admin', '127.0.0.1', '2015-10-29 11:21:35');
INSERT INTO `bh_adminrecord` VALUES (180, 'admin', '127.0.0.1', '2015-10-29 13:54:27');
INSERT INTO `bh_adminrecord` VALUES (181, 'admin', '127.0.0.1', '2015-10-29 14:06:11');
INSERT INTO `bh_adminrecord` VALUES (182, 'admin', '127.0.0.1', '2015-10-29 16:08:28');
INSERT INTO `bh_adminrecord` VALUES (183, 'admin', '127.0.0.1', '2015-10-30 08:16:11');
INSERT INTO `bh_adminrecord` VALUES (184, 'admin', '127.0.0.1', '2015-10-30 08:58:30');
INSERT INTO `bh_adminrecord` VALUES (185, 'admin', '127.0.0.1', '2015-10-30 16:12:03');
INSERT INTO `bh_adminrecord` VALUES (186, 'admin', '127.0.0.1', '2015-10-30 19:01:33');
INSERT INTO `bh_adminrecord` VALUES (187, 'admin', '127.0.0.1', '2015-10-31 16:31:38');
INSERT INTO `bh_adminrecord` VALUES (188, 'admin', '127.0.0.1', '2015-10-31 18:12:48');
INSERT INTO `bh_adminrecord` VALUES (189, 'admin', '127.0.0.1', '2015-11-02 13:21:05');
INSERT INTO `bh_adminrecord` VALUES (190, 'admin', '127.0.0.1', '2015-11-02 14:39:00');
INSERT INTO `bh_adminrecord` VALUES (191, 'admin', '127.0.0.1', '2015-11-02 18:40:06');
INSERT INTO `bh_adminrecord` VALUES (192, 'admin', '127.0.0.1', '2015-11-05 12:14:54');
INSERT INTO `bh_adminrecord` VALUES (193, 'admin', '127.0.0.1', '2015-11-05 18:37:49');
INSERT INTO `bh_adminrecord` VALUES (194, 'admin', '127.0.0.1', '2015-11-09 18:20:23');
INSERT INTO `bh_adminrecord` VALUES (195, 'admin', '127.0.0.1', '2015-11-10 18:56:04');
INSERT INTO `bh_adminrecord` VALUES (196, 'admin', '127.0.0.1', '2015-11-11 08:55:00');
INSERT INTO `bh_adminrecord` VALUES (197, 'admin', '127.0.0.1', '2015-11-11 17:54:05');
INSERT INTO `bh_adminrecord` VALUES (198, 'admin', '127.0.0.1', '2015-11-12 08:30:30');
INSERT INTO `bh_adminrecord` VALUES (199, 'admin', '127.0.0.1', '2015-11-12 12:09:10');
INSERT INTO `bh_adminrecord` VALUES (200, 'admin', '127.0.0.1', '2015-11-13 18:27:20');
INSERT INTO `bh_adminrecord` VALUES (201, 'admin', '127.0.0.1', '2015-11-13 18:29:45');
INSERT INTO `bh_adminrecord` VALUES (202, 'admin', '127.0.0.1', '2015-11-14 13:06:57');
INSERT INTO `bh_adminrecord` VALUES (203, 'admin', '127.0.0.1', '2015-11-16 08:15:36');
INSERT INTO `bh_adminrecord` VALUES (204, 'admin', '127.0.0.1', '2015-11-16 16:46:47');
INSERT INTO `bh_adminrecord` VALUES (205, 'admin', '127.0.0.1', '2015-11-18 14:15:15');
INSERT INTO `bh_adminrecord` VALUES (206, 'admin', '127.0.0.1', '2015-11-18 18:55:11');
INSERT INTO `bh_adminrecord` VALUES (207, 'admin', '127.0.0.1', '2015-11-19 09:44:41');
INSERT INTO `bh_adminrecord` VALUES (208, 'admin', '127.0.0.1', '2015-11-19 18:41:00');
INSERT INTO `bh_adminrecord` VALUES (209, 'admin', '127.0.0.1', '2015-11-20 10:39:26');
INSERT INTO `bh_adminrecord` VALUES (210, 'admin', '127.0.0.1', '2015-11-20 17:29:31');
INSERT INTO `bh_adminrecord` VALUES (211, 'admin', '127.0.0.1', '2015-11-21 14:45:13');
INSERT INTO `bh_adminrecord` VALUES (212, 'admin', '127.0.0.1', '2015-11-23 13:22:33');
INSERT INTO `bh_adminrecord` VALUES (213, 'admin', '127.0.0.1', '2015-11-24 16:14:04');
INSERT INTO `bh_adminrecord` VALUES (214, 'admin', '127.0.0.1', '2015-11-25 16:23:26');
INSERT INTO `bh_adminrecord` VALUES (215, 'admin', '127.0.0.1', '2015-11-25 19:59:55');
INSERT INTO `bh_adminrecord` VALUES (216, 'admin', '127.0.0.1', '2015-11-25 20:45:42');
INSERT INTO `bh_adminrecord` VALUES (217, 'admin', '127.0.0.1', '2015-11-25 21:12:53');
INSERT INTO `bh_adminrecord` VALUES (218, 'admin', '127.0.0.1', '2015-11-25 22:07:52');
INSERT INTO `bh_adminrecord` VALUES (219, 'admin', '127.0.0.1', '2015-11-26 10:27:50');
INSERT INTO `bh_adminrecord` VALUES (220, 'admin', '127.0.0.1', '2015-12-10 09:04:37');
INSERT INTO `bh_adminrecord` VALUES (221, 'admin', '127.0.0.1', '2015-12-10 14:55:12');
INSERT INTO `bh_adminrecord` VALUES (222, 'admin', '127.0.0.1', '2015-12-10 17:51:09');
INSERT INTO `bh_adminrecord` VALUES (223, 'admin', '127.0.0.1', '2015-12-11 08:25:19');
INSERT INTO `bh_adminrecord` VALUES (224, 'admin', '127.0.0.1', '2015-12-11 11:41:22');
INSERT INTO `bh_adminrecord` VALUES (225, 'admin', '127.0.0.1', '2015-12-11 17:04:37');
INSERT INTO `bh_adminrecord` VALUES (226, 'admin', '127.0.0.1', '2015-12-11 20:05:49');
INSERT INTO `bh_adminrecord` VALUES (227, 'admin', '127.0.0.1', '2015-12-12 09:20:36');
INSERT INTO `bh_adminrecord` VALUES (228, 'admin', '127.0.0.1', '2015-12-12 14:41:34');
INSERT INTO `bh_adminrecord` VALUES (229, 'admin', '127.0.0.1', '2015-12-16 08:46:44');
INSERT INTO `bh_adminrecord` VALUES (230, 'admin', '127.0.0.1', '2015-12-16 10:50:48');
INSERT INTO `bh_adminrecord` VALUES (231, 'admin', '127.0.0.1', '2015-12-16 14:24:42');
INSERT INTO `bh_adminrecord` VALUES (232, 'admin', '127.0.0.1', '2015-12-21 08:27:33');
INSERT INTO `bh_adminrecord` VALUES (233, 'admin', '127.0.0.1', '2015-12-21 10:35:43');
INSERT INTO `bh_adminrecord` VALUES (234, 'admin', '127.0.0.1', '2015-12-21 16:03:07');
INSERT INTO `bh_adminrecord` VALUES (235, 'admin', '127.0.0.1', '2015-12-22 09:12:21');
INSERT INTO `bh_adminrecord` VALUES (236, 'admin', '127.0.0.1', '2015-12-22 13:55:10');
INSERT INTO `bh_adminrecord` VALUES (237, 'admin', '127.0.0.1', '2015-12-22 16:43:45');

-- --------------------------------------------------------

-- 
-- 表的结构 `bh_adminuser`
-- 

CREATE TABLE `bh_adminuser` (
  `Id` int(11) unsigned NOT NULL auto_increment,
  `user` char(25) default NULL COMMENT '//登录名称',
  `userpass` char(42) default NULL COMMENT '//登录密码',
  `randcode` char(6) NOT NULL default '654321' COMMENT '//随机码',
  `realname` char(30) default NULL COMMENT '//管理员名称',
  `email` char(50) default NULL COMMENT '//后台邮箱',
  `auth` char(100) default NULL COMMENT '//后台权限',
  `count` int(10) default '0' COMMENT '//累计登录次数',
  `last_ip` char(30) default NULL COMMENT '//最后登录Ip',
  `last_time` datetime default NULL COMMENT '//最后登录时间',
  `reg_time` datetime default NULL COMMENT '//注册时间',
  PRIMARY KEY  (`Id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- 导出表中的数据 `bh_adminuser`
-- 

INSERT INTO `bh_adminuser` VALUES (1, 'admin', '81540c0d5bafb17a0de8f273760d0f87', '982243', 'admin', 'admin@163.com', '', 165, '127.0.0.1', '2015-12-22 16:43:45', '2015-05-25 17:54:12');
INSERT INTO `bh_adminuser` VALUES (2, 'wang', 'ccf03bceb2c20553c1fd069942ab678d', '059555', 'wang', NULL, '', 1, '127.0.0.1', '2015-10-28 12:45:57', '2015-10-28 12:45:04');

-- --------------------------------------------------------

-- 
-- 表的结构 `bh_advantage`
-- 

CREATE TABLE `bh_advantage` (
  `Id` int(11) NOT NULL auto_increment,
  `sty` int(4) NOT NULL default '1' COMMENT '//预留属性(sty)',
  `topic` char(200) NOT NULL COMMENT '//标题',
  `domain` char(20) default NULL COMMENT '//个性域名',
  `pic` varchar(100) default NULL COMMENT '//图片',
  `intro` varchar(255) default NULL COMMENT '//简介内容',
  `content` text COMMENT '//内容',
  `linkurl` varchar(200) default NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL default '1' COMMENT '//是否显示栏目',
  `ord` int(11) default '0' COMMENT '//排序',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  `en_topic` char(200) default NULL,
  `en_intro` varchar(255) default NULL,
  `en_content` text,
  PRIMARY KEY  (`Id`),
  KEY `sty` (`sty`),
  KEY `domain` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- 导出表中的数据 `bh_advantage`
-- 

INSERT INTO `bh_advantage` VALUES (1, 1, '区域优势', '', '', '宁新碳素位于江西省奉新县冯田工业园区，交通便利，目前工业园区新', '宁新碳素位于江西省奉新县冯田工业园区，交通便利，目前工业园区新', NULL, 1, 1, '2015-12-16 15:19:54', 'Regional advantage', 'Ning new carbon Feng Tian FengXin in jiangxi province, county industrial park, convenient transportation, the new industrial park', 'Ning new carbon Feng Tian FengXin in jiangxi province, county industrial park, convenient transportation, the new industrial park');
INSERT INTO `bh_advantage` VALUES (2, 1, '团队优势', '', '', '公司管理团队由具备多年管理经验的人士组成，涵盖研发、生产、市场', '公司管理团队由具备多年管理经验的人士组成，涵盖研发、生产、市场', NULL, 1, 2, '2015-12-16 15:21:14', 'Team advantage', 'Company management team with many years of management experience, covering research, development, production and market', 'Company management team with many years of management experience, covering research, development, production and market');
INSERT INTO `bh_advantage` VALUES (3, 1, '质量优势', '', '', '宁新碳素始终把产品质量放在第一位，通过近几年工艺改进调整，产品质', '宁新碳素始终把产品质量放在第一位，通过近几年工艺改进调整，产品质', NULL, 1, 3, '2015-12-16 15:22:21', 'Quality advantage', 'Ning new carbon always put quality as the first, through the technology improvement in recent years, the product quality', 'Ning new carbon always put quality as the first, through the technology improvement in recent years, the product quality');
INSERT INTO `bh_advantage` VALUES (4, 1, '营销优势', '', '', '本厂产品拥有稳定可靠的客户群，随着产品质量的提高，产品认知度继续', '本厂产品拥有稳定可靠的客户群，随着产品质量的提高，产品认知度继续', NULL, 1, 4, '2015-12-16 15:23:21', 'Marketing advantage', 'Our products have a stable customer base, with the improvement of product quality, product awareness to continue', '<span style="color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;">Our products have a stable customer base, with the improvement of product quality, product awareness to continue</span>');
INSERT INTO `bh_advantage` VALUES (5, 1, '研发优势', '', '', '公司遵循“学习，创新，诚信，共赢”的企业核心价值观，追求不断进步', '公司遵循“学习，创新，诚信，共赢”的企业核心价值观，追求不断进步', NULL, 1, 5, '2015-12-16 15:24:27', 'R&amp;D advantage', 'Companies adhere to the \\&quot;learning, innovation, integrity, win-win\\&quot; corporate core values, the pursuit of progress', 'Companies adhere to the "learning, innovation, integrity, win-win" corporate core values, the pursuit of progress');

-- --------------------------------------------------------

-- 
-- 表的结构 `bh_advdata`
-- 

CREATE TABLE `bh_advdata` (
  `Id` int(10) NOT NULL auto_increment,
  `topic` char(200) default NULL COMMENT '//标题',
  `pic` char(150) default NULL COMMENT '//图片路径',
  `picwidth` int(11) NOT NULL default '0' COMMENT '//广告宽度',
  `picheight` int(11) NOT NULL default '0' COMMENT '//广告高度',
  `ctag` int(10) default '0' COMMENT '//广告分类，数据保留',
  `enabled` tinyint(1) NOT NULL default '1' COMMENT '//是否显示',
  `linkurl` char(250) default '###' COMMENT '//链接地址',
  `remark` char(50) default NULL COMMENT '//广告备注',
  `hit` int(11) default '1' COMMENT '//点击率',
  `ord` int(10) NOT NULL default '0' COMMENT '//广告排序',
  `date` datetime default NULL COMMENT '//广告发布时间',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- 导出表中的数据 `bh_advdata`
-- 

INSERT INTO `bh_advdata` VALUES (1, '首页大图', '20151210/5668e341837f4.jpg', 1920, 455, 0, 1, '###', '首页广告', 1, 0, '2015-12-10 10:28:49');
INSERT INTO `bh_advdata` VALUES (2, '首页大图', '20151210/5668e341837f4.jpg', 1920, 455, 0, 1, '###', '首页广告', 1, 0, '2015-12-10 10:28:49');
INSERT INTO `bh_advdata` VALUES (3, '首页大图', '20151210/5668e341837f4.jpg', 1920, 455, 0, 1, '###', '首页广告', 1, 0, '2015-12-10 10:28:49');
INSERT INTO `bh_advdata` VALUES (4, '首页大图', '20151210/5668e341837f4.jpg', 1920, 455, 0, 1, '###', '首页广告', 1, 0, '2015-12-10 10:28:49');

-- --------------------------------------------------------

-- 
-- 表的结构 `bh_information`
-- 

CREATE TABLE `bh_information` (
  `Id` int(11) NOT NULL auto_increment,
  `sty` int(4) NOT NULL default '0' COMMENT '//预留属性(sty)',
  `topic` char(200) default NULL COMMENT '//新闻标题',
  `tag` varchar(150) default NULL COMMENT '//TAG标签',
  `inftype` int(11) NOT NULL default '0' COMMENT '//新闻分类ID',
  `topiccolor` char(20) default NULL COMMENT '//显示颜色',
  `topicsize` char(20) default NULL COMMENT '//标题显示大小',
  `isstrong` tinyint(1) NOT NULL default '0' COMMENT '//是否加粗',
  `source` char(20) default NULL COMMENT '//来源',
  `author` char(20) default NULL COMMENT '//作者',
  `keyword` varchar(250) default NULL COMMENT '//关键词',
  `metades` varchar(250) default NULL COMMENT '//描述',
  `hit` int(11) NOT NULL default '0' COMMENT '//新闻点击率',
  `istop` tinyint(1) NOT NULL default '0' COMMENT '//是否置顶',
  `ishot` tinyint(1) NOT NULL default '0' COMMENT '//是否热门新闻',
  `pic` varchar(100) default NULL COMMENT '//新闻配图',
  `intro` varchar(250) default NULL COMMENT '//新闻简介',
  `content` text COMMENT '//新闻内容',
  `linkurl` varchar(250) default NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL default '1' COMMENT '//是否显示',
  `ord` int(11) NOT NULL default '0' COMMENT '//排序 默认发布日期，第二按这个排序',
  `date` datetime default NULL COMMENT '//发布日期',
  `en_topic` char(200) default NULL,
  `en_intro` varchar(255) default NULL,
  `en_content` text,
  PRIMARY KEY  (`Id`),
  KEY `inftype` (`inftype`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- 导出表中的数据 `bh_information`
-- 

INSERT INTO `bh_information` VALUES (1, 1, '宁新碳素位于江西省奉新县冯田工业园区', NULL, 1, '#e33d3d', '0', 1, '百恒网络', '百恒网络', '', '', 17, 0, 0, '20151216/5671096bc6018.jpg', '突出主营业务，优化资源结构；实现科技创新，发展高新材料；强化管理素质，健全内部机制；吸纳培', '<p>\r\n	突出主营业务，优化资源结构；实现科技创新，发展高新材料；强化管理素质，健全内部机制；吸纳培\r\n</p>', '', 1, 1, '2015-10-28 17:25:07', 'Ning new carbon Feng Tian FengXin county industrial park in jiangxi province', 'Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture', '<span style="color:#2B2B2B;font-family:arial, sans-serif;font-size:14px;line-height:21px;background-color:#F8F8F8;">Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture</span>');
INSERT INTO `bh_information` VALUES (2, 1, '开发区拟筹建110变电站，毗邻公司，结合公司', NULL, 1, '#e33d3d', '0', 1, '百恒网络', '百恒网络', '', '', 8, 0, 0, '20151216/567112dca26b4.jpg', '在专家们看来，“喝凉水都长肉”绝对不是一句戏言，有的人只吃青菜萝卜，但血压、血脂、血糖却降', '<p>\r\n	在专家们看来，“喝凉水都长肉”绝对不是一句戏言，有的人只吃青菜萝卜，但血压、血脂、血糖却降\r\n</p>', '', 1, 1, '2015-10-28 17:25:07', 'Development zone to set up 110 substations, adjacent to the company, combined with the company', 'In experts point of view, \\&quot;drink cold water all meat\\&quot; is definitely not a joke, some people only eat vegetables radish, but fall blood pressure, blood lipid, blood sugar', '<span style="color:#2B2B2B;font-family:arial, sans-serif;font-size:14px;line-height:21px;background-color:#F8F8F8;">In experts point of view, "drink cold water all meat" is definitely not a joke, some people only eat vegetables radish, but fall blood pressure, blood lipid, blood sugar</span>');
INSERT INTO `bh_information` VALUES (3, 1, '伴随新三板推进工作，2015年投资300万', NULL, 1, '#e33d3d', '0', 1, '百恒网络', '百恒网络', '', '', 1, 0, 0, '20151216/567113541d524.jpg', '在专家们看来，“喝凉水都长肉”绝对不是一句戏言，有的人只吃青菜萝卜，但血压、血脂、血糖却降.', '<p>\r\n	在专家们看来，“喝凉水都长肉”绝对不是一句戏言，有的人只吃青菜萝卜，但血压、血脂、血糖却降.\r\n</p>', '', 1, 1, '2015-10-28 17:25:07', 'Along with the new three board to promote work, 3 million investment in 2015', 'In experts point of view, \\&quot;drink cold water all meat\\&quot; is definitely not a joke, some people only eat vegetables radish, but fall blood pressure, blood lipid, blood sugar.', '<span style="color:#2B2B2B;font-family:arial, sans-serif;font-size:14px;line-height:21px;background-color:#F8F8F8;">In experts point of view, "drink cold water all meat" is definitely not a joke, some people only eat vegetables radish, but fall blood pressure, blood lipid, blood sugar.</span>');
INSERT INTO `bh_information` VALUES (4, 1, '公司一直致力于石墨高导热材料研发生产', NULL, 1, '#e33d3d', '0', 1, '百恒网络', '百恒网络', '', '', 6, 0, 0, '20151216/5671151675e2c.jpg', '突出主营业务，优化资源结构；实现科技创新，发展高新材料；强化管理素质，健全内部机制；吸纳培', '<p>\r\n	突出主营业务，优化资源结构；实现科技创新，发展高新材料；强化管理素质，健全内部机制；吸纳培\r\n</p>', '', 1, 1, '2015-10-28 17:25:07', 'The company has been committed to graphite of high thermal conductive materials research and development production', 'Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture', 'Prominent main business, optimize the structure of resources; Realize scientific and technological innovation, developing new materials; Strengthening quality management, improve the internal mechanisms; Absorb the culture');

-- --------------------------------------------------------

-- 
-- 表的结构 `bh_inftype`
-- 

CREATE TABLE `bh_inftype` (
  `Id` int(11) NOT NULL auto_increment,
  `sty` int(4) NOT NULL default '0' COMMENT '//预留属性(sty)',
  `domain` char(20) default NULL COMMENT '//个性域名',
  `showtype` int(1) NOT NULL default '0' COMMENT '//显示方式',
  `topic` char(150) default NULL COMMENT '//类别标题',
  `en_topic` char(200) default NULL,
  `pic` char(100) default NULL COMMENT '//图片',
  `ord` int(11) default '0' COMMENT '//新闻类排序',
  `enabled` tinyint(1) default '1' COMMENT '//是否显示',
  `date` datetime default NULL COMMENT '//发布日期',
  PRIMARY KEY  (`Id`),
  KEY `sty` (`sty`),
  KEY `domain` (`domain`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- 导出表中的数据 `bh_inftype`
-- 

INSERT INTO `bh_inftype` VALUES (1, 1, '', 1, '公司新闻', 'Company news', '', 1, 1, '2015-12-16 14:28:33');
INSERT INTO `bh_inftype` VALUES (2, 1, '', 0, '行业动态', 'Industry dynamic', '', 2, 1, '2015-12-16 14:28:53');

-- --------------------------------------------------------

-- 
-- 表的结构 `bh_links`
-- 

CREATE TABLE `bh_links` (
  `Id` int(11) NOT NULL auto_increment,
  `topic` char(50) NOT NULL COMMENT '//标题',
  `pic` char(100) default NULL COMMENT '//图片',
  `linkurl` char(200) default NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL default '1' COMMENT '//是否显示栏目',
  `ord` int(11) default '0' COMMENT '//排序',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- 导出表中的数据 `bh_links`
-- 

INSERT INTO `bh_links` VALUES (2, '百恒网络', '', 'http://www.jxbh.cn', 1, 1, '2015-10-28 18:10:28');

-- --------------------------------------------------------

-- 
-- 表的结构 `bh_message`
-- 

CREATE TABLE `bh_message` (
  `Id` int(11) NOT NULL auto_increment,
  `sty` int(4) NOT NULL default '0' COMMENT '//留言类型(保留)',
  `topic` char(200) default '如内容' COMMENT '//留言主题',
  `address` varchar(250) default NULL COMMENT '//联系地址',
  `content` text COMMENT '//留言内容',
  `enabled` tinyint(1) default '0' COMMENT '//是否处理',
  `user` char(20) default NULL COMMENT '//留言名称',
  `tel` char(35) default NULL COMMENT '//联系电话',
  `email` char(50) default NULL COMMENT '//联系email',
  `phone` char(35) default NULL COMMENT '//联系手机',
  `ip` char(20) default NULL COMMENT '//留言人IP',
  `date` datetime default NULL COMMENT '//留言时间',
  `recontent` text COMMENT '//回复内容',
  `redate` datetime default NULL COMMENT '//回复时间',
  PRIMARY KEY  (`Id`),
  KEY `type` (`sty`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- 导出表中的数据 `bh_message`
-- 

INSERT INTO `bh_message` VALUES (1, 0, '如内容', '大声道', '大舍大得', 1, '王TEST', '5656555', 'wangs@163.com', '18779131903', '127.0.0.1', '2015-10-28 00:00:00', NULL, '2015-10-30 09:00:58');

-- --------------------------------------------------------

-- 
-- 表的结构 `bh_picshow`
-- 

CREATE TABLE `bh_picshow` (
  `Id` int(11) NOT NULL auto_increment,
  `sty` int(4) NOT NULL default '1' COMMENT '//预留属性(sty)',
  `topic` char(200) NOT NULL COMMENT '//标题',
  `domain` char(20) default NULL COMMENT '//个性域名',
  `pic` varchar(100) default NULL COMMENT '//图片',
  `intro` varchar(255) default NULL COMMENT '//简介内容',
  `content` text COMMENT '//内容',
  `linkurl` varchar(200) default NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL default '1' COMMENT '//是否显示栏目',
  `ord` int(11) default '0' COMMENT '//排序',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  `en_topic` char(200) default NULL,
  `en_intro` varchar(255) default NULL,
  `en_content` text,
  PRIMARY KEY  (`Id`),
  KEY `sty` (`sty`),
  KEY `domain` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- 导出表中的数据 `bh_picshow`
-- 

INSERT INTO `bh_picshow` VALUES (1, 1, '图片', '', '20151222/5678eb6e6b1f5.jpg', '', '', NULL, 1, 0, '2015-12-22 14:19:29', 'image', '', '');
INSERT INTO `bh_picshow` VALUES (2, 1, '图片', '', '20151222/5678eb8e5e240.jpg', '', '', NULL, 1, 0, '2015-12-22 14:20:00', 'image', '', '');
INSERT INTO `bh_picshow` VALUES (3, 1, '图片', '', '20151222/5678eb8e5e240.jpg', '', '', NULL, 1, 0, '2015-12-22 14:20:00', 'image', '', '');

-- --------------------------------------------------------

-- 
-- 表的结构 `bh_proshow`
-- 

CREATE TABLE `bh_proshow` (
  `Id` int(11) NOT NULL auto_increment,
  `sty` int(4) NOT NULL default '0' COMMENT '//预留属性(sty)',
  `topic` char(200) default NULL COMMENT '//新闻标题',
  `tag` varchar(150) default NULL COMMENT '//TAG标签',
  `inftype` int(11) NOT NULL default '0' COMMENT '//新闻分类ID',
  `topiccolor` char(20) default NULL COMMENT '//显示颜色',
  `topicsize` char(20) default NULL COMMENT '//标题显示大小',
  `isstrong` tinyint(1) NOT NULL default '0' COMMENT '//是否加粗',
  `source` char(20) default NULL COMMENT '//来源',
  `author` char(20) default NULL COMMENT '//作者',
  `keyword` varchar(250) default NULL COMMENT '//关键词',
  `metades` varchar(250) default NULL COMMENT '//描述',
  `hit` int(11) NOT NULL default '0' COMMENT '//新闻点击率',
  `istop` tinyint(1) NOT NULL default '0' COMMENT '//是否置顶',
  `ishot` tinyint(1) NOT NULL default '0' COMMENT '//是否热门新闻',
  `pic` varchar(100) default NULL COMMENT '//新闻配图',
  `intro` varchar(250) default NULL COMMENT '//新闻简介',
  `content` text COMMENT '//新闻内容',
  `linkurl` varchar(250) default NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL default '1' COMMENT '//是否显示',
  `ord` int(11) NOT NULL default '0' COMMENT '//排序 默认发布日期，第二按这个排序',
  `date` datetime default NULL COMMENT '//发布日期',
  `en_topic` char(200) default NULL,
  `en_intro` varchar(255) default NULL,
  `en_content` text,
  PRIMARY KEY  (`Id`),
  KEY `inftype` (`inftype`),
  KEY `sty` (`sty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- 导出表中的数据 `bh_proshow`
-- 

INSERT INTO `bh_proshow` VALUES (1, 1, '相关产品名称 1', NULL, 1, '#000000', '0', 0, '', '', '', '', 0, 0, 0, '20151221/567752035c5fd.jpg', '相关产品的简单叙述及一些功能性用途等等的大概介绍.', '相关产品的简单叙述及一些功能性用途等等的大概介绍.', '', 1, 0, '2015-12-21 08:59:21', '1 related product name', 'Related products are described briefly and some introduction about functional purposes, and so on.', '<span style="color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;">Related products are described briefly and some introduction about functional purposes, and so on.</span>');
INSERT INTO `bh_proshow` VALUES (2, 1, '相关产品名称 2', NULL, 1, '#000000', '0', 0, '', '', '', '', 0, 0, 0, '20151221/56775225da583.jpg', '相关产品的简单叙述及一些功能性用途等等的大概介绍.', '相关产品的简单叙述及一些功能性用途等等的大概介绍.', '', 1, 0, '2015-12-21 08:59:21', '2 related product name', 'Related products are described briefly and some introduction about functional purposes, and so on.', '<span style="color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;">Related products are described briefly and some introduction about functional purposes, and so on.</span>');
INSERT INTO `bh_proshow` VALUES (3, 1, '相关产品名称 3', NULL, 1, '#000000', '0', 0, '', '', '', '', 0, 0, 0, '20151221/567752344909b.jpg', '相关产品的简单叙述及一些功能性用途等等的大概介绍.', '相关产品的简单叙述及一些功能性用途等等的大概介绍.', '', 1, 0, '2015-12-21 08:59:21', '3 related product name', 'Related products are described briefly and some introduction about functional purposes, and so on.', '<span style="color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;">Related products are described briefly and some introduction about functional purposes, and so on.</span>');
INSERT INTO `bh_proshow` VALUES (4, 1, '相关产品名称 4', NULL, 1, '#000000', '0', 0, '', '', '', '', 0, 0, 0, '20151221/56775242562c7.jpg', '相关产品的简单叙述及一些功能性用途等等的大概介绍.', '相关产品的简单叙述及一些功能性用途等等的大概介绍.', '', 1, 0, '2015-12-21 08:59:21', '4 related product name', 'Related products are described briefly and some introduction about functional purposes, and so on.', '<span style="color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;">Related products are described briefly and some introduction about functional purposes, and so on.</span>');
INSERT INTO `bh_proshow` VALUES (5, 1, '相关产品名称5', NULL, 1, '#000000', '0', 0, '', '', '', '', 0, 0, 0, '20151221/567752832d933.jpg', '相关产品的简单叙述及一些功能性用途等等的大概介绍.', '相关产品的简单叙述及一些功能性用途等等的大概介绍.', '', 1, 0, '2015-12-21 08:59:21', '5 related product name', 'Related products are described briefly and some introduction about functional purposes, and so on.', '<span style="color:#2B2B2B;font-family:arial, sans-serif;font-size:18px;font-weight:bold;line-height:27px;background-color:#F8F8F8;">Related products are described briefly and some introduction about functional purposes, and so on.</span>');

-- --------------------------------------------------------

-- 
-- 表的结构 `bh_protype`
-- 

CREATE TABLE `bh_protype` (
  `Id` int(11) NOT NULL auto_increment,
  `sty` int(4) NOT NULL default '0' COMMENT '//预留属性(sty)',
  `domain` char(20) default NULL COMMENT '//个性域名',
  `showtype` int(1) NOT NULL default '0' COMMENT '//显示方式',
  `topic` char(150) default NULL COMMENT '//类别标题',
  `en_topic` char(200) default NULL,
  `pic` char(100) default NULL COMMENT '//图片',
  `ord` int(11) default '0' COMMENT '//新闻类排序',
  `enabled` tinyint(1) default '1' COMMENT '//是否显示',
  `date` datetime default NULL COMMENT '//发布日期',
  PRIMARY KEY  (`Id`),
  KEY `sty` (`sty`),
  KEY `domain` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `bh_protype`
-- 

INSERT INTO `bh_protype` VALUES (1, 1, '', 0, '高纯石墨', 'High purity graphite', '', 0, 1, '2015-12-21 08:56:11');

-- --------------------------------------------------------

-- 
-- 表的结构 `bh_systemconfig`
-- 

CREATE TABLE `bh_systemconfig` (
  `Id` int(10) unsigned NOT NULL auto_increment,
  `metatitle` char(250) default NULL COMMENT '//title',
  `metades` char(250) default NULL COMMENT '//网站描述',
  `metakey` char(250) default NULL COMMENT '//关键词',
  `logo` char(50) default NULL COMMENT '//logo路径',
  `companyname` char(200) default NULL COMMENT '//公司名称',
  `companyurl` char(150) default NULL COMMENT '//公司链接',
  `address` char(250) default NULL COMMENT '//公司地址',
  `en_metatitle` varchar(255) NOT NULL,
  `en_metades` varchar(500) NOT NULL,
  `en_metakey` varchar(255) NOT NULL,
  `en_companyname` varchar(255) NOT NULL,
  `en_address` varchar(255) NOT NULL,
  `email` char(50) default NULL COMMENT '//企业邮箱',
  `tel` char(50) default NULL COMMENT '//企业电话',
  `contact` char(100) default NULL COMMENT '//联系人',
  `mobile` char(20) default NULL COMMENT '//手机号码',
  `fax` char(30) default NULL COMMENT '//传真',
  `qq` char(20) default NULL COMMENT '//qq号码',
  `icpnote` char(50) default NULL COMMENT '//icp备案号',
  `c_reg` tinyint(1) default '0' COMMENT '//关闭注册',
  `shieldip` text COMMENT '//需要屏蔽的IP',
  `iptips` char(200) default NULL COMMENT '//过滤IP提示语',
  `c_site` tinyint(1) default '0' COMMENT '//关闭项目',
  `c_text` char(250) default '升级中……' COMMENT '//关闭说明',
  `sys_parameter` text COMMENT '//系统参数',
  `sys_code` text COMMENT '//第三方代码（ex:百度）',
  `sys_notice` varchar(250) default NULL COMMENT '//通知，紧急通知',
  `mailsmtp` char(50) character set ucs2 NOT NULL COMMENT '//邮件Smtp',
  `mailport` char(10) character set ucs2 NOT NULL default '25' COMMENT '//邮件端口',
  `mailname` char(50) default NULL COMMENT '//邮箱名称',
  `mailpass` char(50) NOT NULL COMMENT '//邮箱密码',
  `wordfilter` text COMMENT '//词汇过滤',
  `regread` text COMMENT '//注册须知',
  `copy_info` varchar(200) default NULL COMMENT '//页尾版权信息',
  `iswater` smallint(1) NOT NULL default '0' COMMENT '//是否开启水印功能',
  `fontpos` smallint(1) NOT NULL default '9' COMMENT '//水印位置',
  `waterpos` smallint(1) NOT NULL default '9' COMMENT '//水印位置',
  `waterpic` char(50) default NULL COMMENT '//水印图片',
  `fonttext` char(50) default NULL COMMENT '//文字水印',
  `fontsize` int(4) NOT NULL default '20' COMMENT '//文字大小',
  `fontcolor` char(50) NOT NULL default '#ffffff' COMMENT '//文字颜色',
  `facetype` tinyint(1) NOT NULL default '0' COMMENT '//facetype',
  `rotation` int(4) NOT NULL default '0' COMMENT '//旋转',
  `wateralpha` smallint(1) NOT NULL default '100' COMMENT '//alpha值',
  `waterwidth` int(11) NOT NULL default '0' COMMENT '//触发宽度',
  `waterheight` int(11) default '0' COMMENT '//触发高度',
  `filesuffix` varchar(500) default NULL COMMENT '//允许上传的非图片的后缀',
  `islog` smallint(1) NOT NULL default '0' COMMENT '//开启日志功能',
  `isclear` smallint(1) NOT NULL default '0' COMMENT '//开启日志清理',
  `adminpage` int(4) NOT NULL default '0' COMMENT '//配置分页值',
  `date` datetime default NULL COMMENT '//更新日期',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `bh_systemconfig`
-- 

INSERT INTO `bh_systemconfig` VALUES (1, '江西宁新新材料股份有限公司', '江西宁新新材料股份有限公司', '江西宁新新材料股份有限公司', '', '江西宁新新材料股份有限公司', '', '江西省奉新县冯田工业园区', 'Jiang Xi Ning xin materials co., LTD', 'Jiang Xi Ning xin materials co., LTD', 'Jiang Xi Ning xin materials co., LTD', 'Jiang Xi Ning xin materials co., LTD', 'Feng Tian FengXin county industrial park in jiangxi province', 'nxts1688@sina.com', '0795-4505288  /  4505299', '', '', '0795-4509033', '', '赣ICP备88888888号-1', 0, '', '您的IP将禁用一段时间。', 0, '网站项目维护中...', '', '', '', 'smtp.163.com', '25', '', '', 'cao|艹|草', '', '', 0, 8, 9, '', '@jxbh.cn | http://www.jxbh.cn', 8, '#ffffff', 7, 0, 25, 0, 0, '', 1, 1, 15, '0000-00-00 00:00:00');
