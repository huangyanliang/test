<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <meta name="description" content="深海瑞格后台管理系统 v1.5.1.0">
 <meta name="keywords" content="深海瑞格后台管理系统 v1.5.1.0">
 <meta name="author" content="jxbh.cn">
 <title><?php echo ($title); ?></title>
 <link href="/fxcl/public/Bhadmin/css/bootstrap.min.css" rel="stylesheet">
 <link href="/fxcl/public/Bhadmin/css/alert.css" rel="stylesheet">
 <link href="/fxcl/public/Bhadmin/css/common.css" rel="stylesheet">
 <!--[if IE 8]>
 <link rel="stylesheet" type="text/css" href="/fxcl/public/Bhadmin/css/comie.css">
 <![endif]-->
 <!--[if IE 9]>
 <link rel="stylesheet" type="text/css" href="/fxcl/public/Bhadmin/css/comie.css">
 <![endif]-->
 <link href="../bhadmin/favicon.ico" rel="icon">
 <script src="/fxcl/public/Bhadmin/js/jquery.min.js" type="text/javascript"></script>
 <link href="/fxcl/public/Bhadmin/css/minimal/minimal.css" rel="stylesheet">
 <script src="/fxcl/public/Bhadmin/js/icheck.min.js" type="text/javascript"></script>
 
 <link href="/fxcl/public/Bhadmin/css/index.css" rel="stylesheet">
 <script src="/fxcl/public/Bhadmin/js/jquery.scorll.js"></script>
 <script src="/fxcl/public/Bhadmin/js/index.js"></script>

</head>
<body>

<div id="header">
 <div class="adminlogo" title="深海瑞格后台管理"></div>
 <div class="adminmenu visible-md visible-lg">
  <ul>
   <li><a data-id="1" href="javascript:void(0)" <?php if($tabid == 1): ?>class="selected"<?php endif; ?>><?php echo icon('cog');?>系统管理</a></li>
   <li><a data-id="2" href="javascript:void(0)" <?php if($tabid == 2): ?>class="selected"<?php endif; ?>><?php echo icon('th-large');?>网站管理</a></li>
  </ul>
 </div>
 <div class="adminright visible-lg">
  <div class="adminamount"><span class="glyphicon glyphicon-user"></span> <?php echo cookie('adminuser');?>，欢迎您</div>
  <a href="<?php echo U('index/logout');?>"><div class="adminlogout"><?php echo icon('share-alt');?> 退出</div></a>
  <a href="<?php echo U('index/modpass');?>" target="right"><div class="admincog"><?php echo icon('cog');?> 设置</div></a>
  <a href="<?php echo U('index/main');?>" target="right"><div class="adminhome"><?php echo icon('home');?> 首页</div></a>
  <a href="http://www.jxbh.cn" target="right"><div class="adminabout">关于</div></a>
 </div>
 <!--响应式工具栏-->
 <div class="visible-xs visible-sm admin-menu">
  <?php echo btn(array('vals'=>'','size'=>3,'icon'=>'menu-hamburger','scene'=>'default','add'=>'mymenu'));?>
  <ul class="admin-menu-ul">
   <li><a data-id="1" href="javascript:void(0)" class="selected"><?php echo icon('cog');?>系统管理</a></li>
   <li><a data-id="2" href="javascript:void(0)"><?php echo icon('th-large');?>网站管理</a></li>
   <li><a data-id="0" href="<?php echo U('index/logout');?>"><?php echo icon('share-alt');?>退出系统</a></li>
  </ul>
 </div>
 <!--结束-->
</div>

<div class="indexmain">
 <!--SIDEBAR-->
 <div id="sidebar">
 <div style="height:auto; overflow:hidden;">
 <?php if($tabid == 1): ?><div class="menu-admin">
   <div class="menu-header2"><?php echo icon('cog');?> 管理首页 <?php echo icon('menu-down','b');?></div>
   <div class="menu-dd"><a href="<?php echo U('system/sysmod');?>" target="right"><?php echo icon('wrench');?>系统设置</a></div>
   <div class="menu-dd"><a href="<?php echo U('system/wordfilter');?>" target="right"><?php echo icon('filter');?>词汇过滤设置</a></div>
   <div class="menu-dd"><a href="<?php echo U('system/ipfilter');?>" target="right"><?php echo icon('filter');?>IP过滤设置</a></div>
   <div class="menu-dd"><a href="<?php echo U('index/cleancache');?>" target="right"><?php echo icon('trash');?>清除缓存</a></div>
  </div>
  <div class="menu-admin">
   <div class="menu-header2"><?php echo icon('wrench');?> 管理员设置 <?php echo icon('menu-down','b');?></div>
   <div class="menu-dd"><a href="<?php echo U('system/userlist');?>" target="right"><?php echo icon('user');?>管理用户</a></div>
   <div class="menu-dd"><a href="<?php echo U('system/history');?>" target="right"><?php echo icon('cloud');?>登录日志</a></div>
  </div>
  <div class="menu-admin">
   <div class="menu-header2"><?php echo icon('hdd');?> 数据库管理 <?php echo icon('menu-down','b');?></b></div>
   <div class="menu-dd"><a href="<?php echo U('system/databackup');?>" target="right"><?php echo icon('duplicate');?>数据库备份</a></div>
   <div class="menu-dd"><a href="<?php echo U('system/databackuplist');?>" target="right"><?php echo icon('hdd');?>查看备份</a></div> 
  </div> 
  <div class="menu-admin"> 
   <div class="menu-header2"><?php echo icon('picture');?> 图片管理器 <?php echo icon('menu-down','b');?></div>
   <div class="menu-dd"><a href="<?php echo U('system/syspic');?>" target="right"><?php echo icon('picture');?>图片管理器</a></div> 
  </div>
  <div class="menu-admin">  
   <div class="menu-header2"><?php echo icon('flag');?> 广告管理 <?php echo icon('menu-down','b');?></div>
   <div class="menu-dd"><a href="<?php echo U('system/advlist');?>" target="right"><?php echo icon('flag');?>广告管理</a></div> 
  </div><?php endif; ?>
 <?php if($tabid == 2): ?><div class="menu-admin">  
   <div class="menu-header2"><?php echo icon('th-large');?> 关于我们管理 <?php echo icon('menu-down','b');?></div>
   <div class="menu-dd"><a href="<?php echo U('website/aboutlist','tables=aboutus');?>" target="right"><?php echo icon('th');?>关于我们管理</a></div> 
  </div>
<!--  <div class="menu-admin">  
   <div class="menu-header2"><?php echo icon('th-large');?> 公司相册管理 <?php echo icon('menu-down','b');?></div>
   <div class="menu-dd"><a href="<?php echo U('website/aboutlist','tables=picshow');?>" target="right"><?php echo icon('th');?>公司相册管理</a></div> 
  </div>-->
<!--  <div class="menu-admin">  
   <div class="menu-header2"><?php echo icon('th-large');?> 企业优势管理 <?php echo icon('menu-down','b');?></div>
   <div class="menu-dd"><a href="<?php echo U('website/aboutlist','tables=advantage');?>" target="right"><?php echo icon('th');?>企业优势管理</a></div> 
  </div>-->
  <div class="menu-admin">  
   <div class="menu-header2"><?php echo icon('list-alt');?> 新闻中心管理 <?php echo icon('menu-down','b');?></div>
   <div class="menu-dd"><a href="<?php echo U('website/datatypelist','tables=inftype');?>" target="right"><?php echo icon('tags');?>类别管理</a></div> 
   <div class="menu-dd"><a href="<?php echo U('website/datalist','tables=information&martables=inftype');?>" target="right"><?php echo icon('list-alt');?>资料管理</a></div>
  </div>
  <div class="menu-admin">  
   <div class="menu-header2"><?php echo icon('list-alt');?> 产品展示管理 <?php echo icon('menu-down','b');?></div>
   <div class="menu-dd"><a href="<?php echo U('website/datatypelist','tables=protype');?>" target="right"><?php echo icon('tags');?>类别管理</a></div> 
   <div class="menu-dd"><a href="<?php echo U('website/datalist','tables=proshow&martables=protype');?>" target="right"><?php echo icon('list-alt');?>产品管理</a></div>
  </div>
  <div class="menu-admin">  
   <div class="menu-header2"><?php echo icon('list-alt');?> 应用案例管理 <?php echo icon('menu-down','b');?></div>
   <div class="menu-dd"><a href="<?php echo U('website/datatypelist','tables=casetype');?>" target="right"><?php echo icon('tags');?>类别管理</a></div> 
   <div class="menu-dd"><a href="<?php echo U('website/datalist','tables=caseshow&martables=casetype');?>" target="right"><?php echo icon('list-alt');?>案例管理</a></div>
  </div>
  <div class="menu-admin">  
   <div class="menu-header2"><?php echo icon('comment');?> 在线留言管理 <?php echo icon('menu-down','b');?></div>
   <div class="menu-dd"><a href="<?php echo U('website/message','tables=message');?>" target="right"><?php echo icon('comment');?>在线留言列表</a></div> 
  </div>
  <div class="menu-admin">  
   <div class="menu-header2"><?php echo icon('link');?> 友情链接管理 <?php echo icon('menu-down','b');?></div>
   <div class="menu-dd"><a href="<?php echo U('website/linkslist','tables=links');?>" target="right"><?php echo icon('link');?>友情链接管理</a></div> 
  </div><?php endif; ?>
 
 <?php if($tabid == 3): ?><div class="menu-admin">  
   <div class="menu-header2"><?php echo icon('tasks');?> 项目管理 <?php echo icon('menu-down','b');?></div>
   <div class="menu-dd"><a href="<?php echo U('case/caselist','tables=webcase');?>" target="right"><?php echo icon('list-alt');?>项目管理</a></div> 
  </div><?php endif; ?>
 
 <div style="height:25px;"></div>
 </div>
 </div>
 <!--END-->
 <!--RIGHT-->
 <div id="rightmain">
     <div id="map">
     <div class="pull-left btn-group" style="margin:3px auto 0 9px;">
      <?php echo btn(array('vals'=>'','size'=>3,'icon'=>'resize-full','scene'=>'default','add'=>'mycollapse'));?>
      <?php echo btn(array('vals'=>'','size'=>3,'icon'=>'arrow-left','scene'=>'default','add'=>'back'));?>
      <?php echo btn(array('vals'=>'','size'=>3,'icon'=>'arrow-right','scene'=>'default','add'=>'going'));?>
      <?php echo btn(array('vals'=>'','size'=>3,'icon'=>'refresh','scene'=>'default','add'=>'f5'));?>
      <?php echo btn(array('vals'=>'','size'=>3,'icon'=>'fullscreen','scene'=>'default','add'=>'fullscreen'));?>
      </div>
     <b>当前位置：<a href="<?php echo U('index/main');?>" target="right">系统首页</a> <img src="/fxcl/public/Bhadmin/images/map_right.png" /> 管理中心 <img src="/fxcl/public/Bhadmin/images/map_right.png" /> <?php echo ($adminmemu[$tabid]); ?></b> 
     </div>
     <div id="iframdiv" class="adminpublic"><iframe name="right" id="iframeright" width="100%" height="100%" src="<?php echo U('index/main');?>" frameborder="0" scrolling="yes"></iframe></div>
 </div>
 <!--END -->
</div>
<script>
 //一开始就隐藏一些栏目
 $(document).ready(function(e) {
	 $(".hide-true .menu-dd").hide().css({"height":'0px'});
	 $(".hide-true").find(".menu-header2,.menu-header").css({"border-bottom":'none'});
	 $(".hide-true").find(".menu-header2 b,.menu-header b").removeClass("glyphicon-menu-down").addClass("glyphicon-menu-up");
	 $('#sidebar').perfectScrollbar();  
	 //收起左侧栏目
	 $(".mycollapse").click(function(e) {
	  if(!$("#sidebar").is(":hidden")){
		$(this).find("span").removeClass('glyphicon-resize-full').addClass('glyphicon-resize-small');
		$("#sidebar").hide(); 
		$("#rightmain").width($(document).width());
	  }else{
		$(this).find("span").removeClass('glyphicon-resize-small').addClass('glyphicon-resize-full');
		$("#sidebar").show(); 
		$("#rightmain").width($(document).width()-178);
	  }
	 }); 
	 //微调 按钮组的位置
	 $(".fullscreen").click(function(e) {
       if (screenfull.enabled) {
         screenfull.toggle();
       } else {
	     
	   }
     });
 });
</script>



 <script src="/fxcl/public/Bhadmin/js/bootstrap.min.js" type="text/javascript"></script>
 <script src="/fxcl/public/Bhadmin/js/alert.min.js" type="text/javascript"></script>
 <script src="/fxcl/public/Bhadmin/js/common.js" type="text/javascript"></script>
 <script src="/fxcl/public/Bhadmin/js/zoom.js" type="text/javascript"></script>
 <script src="/fxcl/public/Bhadmin/js/screenfull.min.js" type="text/javascript"></script>
 <?php if(isset($upload) && $upload){?>
 <script type="text/javascript" src="/fxcl/public/Bhadmin/uploadify/uploadify.js"></script>
 <?php }?>
 <?php if(isset($color) && $color){?>
 <script src="/fxcl/public/Bhadmin/js/color.js" type="text/javascript"></script>
 <link href="/fxcl/public/Bhadmin/css/color.css" rel="stylesheet">
 <script type="text/javascript">
  $(document).ready( function() {
	$('.colorselect').each( function() {
		$(this).minicolors({
			theme: 'bootstrap'
		});
	});
   });
 </script>
 <?php }?>
 <script type="text/javascript">
  var img     = '/fxcl/public/Bhadmin/images';
  var abspath = '/fxcl/index.php/Bhadmin';
  var upload  = '/fxcl/public/Bhadmin/uploadify';
  var upfile  = '/fxcl/uploads/';
  $(function () {
    $('[data-toggle="tooltip"]').tooltip({
      container : 'body',
	});
    $('[data-toggle="popover"]').popover();
	//实例化 icheckbox
	$('input').iCheck({
      checkboxClass: 'icheckbox_minimal',
      radioClass: 'iradio_minimal',
      increaseArea: '20%' // optional
    });
  });
 </script>
 <!--加载日期-->
 <?php if(isset($date) && $date){?>
 <script src="/fxcl/public/Bhadmin/js/datejs/WdatePicker.js" type="text/javascript"></script>
 <?php } ?>
 <!--结束-->
 <!--加载编辑器-->
 <?php if(isset($editor) && $editor){?>
 <link rel="stylesheet" href="/fxcl/public/kindedit/themes/default/default.css" />
 <link rel="stylesheet" href="/fxcl/public/kindedit/plugins/code/prettify.css" />
 <script charset="utf-8" src="/fxcl/public/kindedit/kindeditor.js" type="text/javascript"></script>
 <script charset="utf-8" src="/fxcl/public/kindedit/lang/zh_CN.js" type="text/javascript"></script>
 <script charset="utf-8" src="/fxcl/public/kindedit/plugins/code/prettify.js" type="text/javascript"></script>
 <script type="text/javascript">
	KindEditor.ready(function(K) {
		var editor1 = K.create('textarea[name="content"]', {
			cssPath : '/fxcl/public/kindedit/plugins/code/prettify.css',
			uploadJson : '/fxcl/public/kindedit/php/upload_json.php',
			//uploadJson : abspath+'/fileupload/kindupload',
			fileManagerJson : '/fxcl/public/kindedit/php/file_manager_json.php',
			allowFileManager : true,
			afterCreate : function() {
				var self = this;
				K.ctrl(document, 13, function() {
					self.sync();
					K('form[name=example]')[0].submit();
				});
				K.ctrl(self.edit.doc, 13, function() {
					self.sync();
					K('form[name=example]')[0].submit();
				});
			}
		});
		prettyPrint();
	});
	KindEditor.ready(function(J) {
		var editor2 = J.create('textarea[name="en_content"]', {
			cssPath : '/fxcl/public/kindedit/plugins/code/prettify.css',
			uploadJson : '/fxcl/public/kindedit/php/upload_json.php',
			//uploadJson : abspath+'/fileupload/kindupload',
			fileManagerJson : '/fxcl/public/kindedit/php/file_manager_json.php',
			allowFileManager : true,
			afterCreate : function() {
				var self = this;
				J.ctrl(document, 13, function() {
					self.sync();
					J('form[name=example]')[0].submit();
				});
				J.ctrl(self.edit.doc, 13, function() {
					self.sync();
					J('form[name=example]')[0].submit();
				});
			}
		});
		prettyPrint();
	});
 </script>
 <?php }?>
 <!--结束-->

</body>
</html>