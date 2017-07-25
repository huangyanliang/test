<?php
return array(
	'TMPL_PARSE_STRING' => array(
		'__css__'=>__ROOT__.'/public/'.MODULE_NAME.'/css',
		'__js__'=>__ROOT__.'/public/'.MODULE_NAME.'/js',
		'__img__'=>__ROOT__.'/public/'.MODULE_NAME.'/images',
        '__pic__'=>__ROOT__.'/uploads/',
	),
	'TMPL_ACTION_ERROR'   => 'public/jump',
	'TMPL_ACTION_SUCCESS' => 'public/jump',
	'URL_HTML_SUFFIX'     => '',             //伪静态后缀
	'URL_ROUTER_ON'       => true,           //开启路由
	'DEFAULT_THEME'       => 'skin',         //设置默认主题目录            
    'TMPL_DETECT_THEME'   => true,          // 自动侦测模板主题
	'URL_ROUTE_RULES'     => array(
	                         'a/:domain'    => 'index/about',
							 't/:domain/:id' =>'topic/topic'
							 ),              //路由规则
    'HTML_CACHE_ON'       => true,           //是否开启
	'HTML_FILE_SUFFIX'    => '.shtml',       //缓存的后缀
	'HTML_CACHE_TIME'     => '600',          //缓存时间
	'HTML_CACHE_RULES'    => array(
							      
							      ),
);


