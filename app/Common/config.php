<?php
return array(
	'MODULE_ALLOW_LIST'    =>array('Home','Admin'),//设置可访问目录
	'DEFAULT_MODULE'       =>'Home',                 //设置默认目录
	'TMPL_TEMPLATE_SUFFIX' =>'.tpl',                 //设置模版后缀
	'DEFAULT_THEME'        =>'skin',                 //设置默认主题目录
	'DB_TYPE'              =>'mysqli',               //数据库类型
	'DB_HOST'              =>'localhost',            //服务器地址
	'DB_NAME'              =>'jxningxin',                  //数据库名
	'DB_USER'              =>'jxningxin',                 //用户名
	'DB_PWD'               =>'4cxy6gyv',                     //密码
	'DB_PORT'              =>3306,                   //端口
	'DB_PREFIX'            =>'bh_',                  //数据库表前缀 
	'DB_CHARSET'           =>'utf8',                 //字符集
	'URL_MODEL'            =>1,	                     //URL模式
	'URL_HTML_SUFFIX'      =>'.html',                     //伪静态后缀
	'SHOW_PAGE_TRACE'      =>false,                   //debug
	'LOG_RECORD'           =>true,                   //是否开启记录日志
	'COOKIE_PREFIX'        =>'bh_',                  //cookie前缀
    'DEFAULT_FILTER'       =>'addslashes,htmlspecialchars,trim',           //默认过滤方法 //stripslashes
	'UPLOAD_PATH'          => './uploads/',   //图片上传路径
);

