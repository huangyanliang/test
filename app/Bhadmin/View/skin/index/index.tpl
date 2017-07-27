<extend name="public/common" />
<block name="meta">
 <link href="__css__/index.css" rel="stylesheet">
 <script src="__js__/jquery.scorll.js"></script>
 <script src="__js__/index.js"></script>
</block>
<block name="main">
<div id="header">
 <div class="adminlogo" title="深海瑞格后台管理"></div>
 <div class="adminmenu visible-md visible-lg">
  <ul>
   <li><a data-id="1" href="javascript:void(0)" <if condition="$tabid eq 1"> class="selected"</if>>{:icon('cog')}系统管理</a></li>
   <li><a data-id="2" href="javascript:void(0)" <if condition="$tabid eq 2"> class="selected"</if>>{:icon('th-large')}网站管理</a></li>
  </ul>
 </div>
 <div class="adminright visible-lg">
  <div class="adminamount"><span class="glyphicon glyphicon-user"></span> {:cookie('adminuser')}，欢迎您</div>
  <a href="{:U('index/logout')}"><div class="adminlogout">{:icon('share-alt')} 退出</div></a>
  <a href="{:U('index/modpass')}" target="right"><div class="admincog">{:icon('cog')} 设置</div></a>
  <a href="{:U('index/main')}" target="right"><div class="adminhome">{:icon('home')} 首页</div></a>
  <a href="http://www.jxbh.cn" target="right"><div class="adminabout">关于</div></a>
 </div>
 <!--响应式工具栏-->
 <div class="visible-xs visible-sm admin-menu">
  {:btn(array('vals'=>'','size'=>3,'icon'=>'menu-hamburger','scene'=>'default','add'=>'mymenu'))}
  <ul class="admin-menu-ul">
   <li><a data-id="1" href="javascript:void(0)" class="selected">{:icon('cog')}系统管理</a></li>
   <li><a data-id="2" href="javascript:void(0)">{:icon('th-large')}网站管理</a></li>
   <li><a data-id="0" href="{:U('index/logout')}">{:icon('share-alt')}退出系统</a></li>
  </ul>
 </div>
 <!--结束-->
</div>

<div class="indexmain">
 <!--SIDEBAR-->
 <div id="sidebar">
 <div style="height:auto; overflow:hidden;">
 <if condition="$tabid eq 1">
  <div class="menu-admin">
   <div class="menu-header2">{:icon('cog')} 管理首页 {:icon('menu-down','b')}</div>
   <div class="menu-dd"><a href="{:U('system/sysmod')}" target="right">{:icon('wrench')}系统设置</a></div>
   <div class="menu-dd"><a href="{:U('system/wordfilter')}" target="right">{:icon('filter')}词汇过滤设置</a></div>
   <div class="menu-dd"><a href="{:U('system/ipfilter')}" target="right">{:icon('filter')}IP过滤设置</a></div>
   <div class="menu-dd"><a href="{:U('index/cleancache')}" target="right">{:icon('trash')}清除缓存</a></div>
  </div>
  <div class="menu-admin">
   <div class="menu-header2">{:icon('wrench')} 管理员设置 {:icon('menu-down','b')}</div>
   <div class="menu-dd"><a href="{:U('system/userlist')}" target="right">{:icon('user')}管理用户</a></div>
   <div class="menu-dd"><a href="{:U('system/history')}" target="right">{:icon('cloud')}登录日志</a></div>
  </div>
  <div class="menu-admin">
   <div class="menu-header2">{:icon('hdd')} 数据库管理 {:icon('menu-down','b')}</b></div>
   <div class="menu-dd"><a href="{:U('system/databackup')}" target="right">{:icon('duplicate')}数据库备份</a></div>
   <div class="menu-dd"><a href="{:U('system/databackuplist')}" target="right">{:icon('hdd')}查看备份</a></div> 
  </div> 
  <div class="menu-admin"> 
   <div class="menu-header2">{:icon('picture')} 图片管理器 {:icon('menu-down','b')}</div>
   <div class="menu-dd"><a href="{:U('system/syspic')}" target="right">{:icon('picture')}图片管理器</a></div> 
  </div>
  <div class="menu-admin">  
   <div class="menu-header2">{:icon('flag')} 广告管理 {:icon('menu-down','b')}</div>
   <div class="menu-dd"><a href="{:U('system/advlist')}" target="right">{:icon('flag')}广告管理</a></div> 
  </div>
 </if>
 <if condition="$tabid eq 2">
  <div class="menu-admin">  
   <div class="menu-header2">{:icon('th-large')} 关于我们管理 {:icon('menu-down','b')}</div>
   <div class="menu-dd"><a href="{:U('website/aboutlist','tables=aboutus')}" target="right">{:icon('th')}关于我们管理</a></div> 
  </div>
<!--  <div class="menu-admin">  
   <div class="menu-header2">{:icon('th-large')} 公司相册管理 {:icon('menu-down','b')}</div>
   <div class="menu-dd"><a href="{:U('website/aboutlist','tables=picshow')}" target="right">{:icon('th')}公司相册管理</a></div> 
  </div>-->
<!--  <div class="menu-admin">  
   <div class="menu-header2">{:icon('th-large')} 企业优势管理 {:icon('menu-down','b')}</div>
   <div class="menu-dd"><a href="{:U('website/aboutlist','tables=advantage')}" target="right">{:icon('th')}企业优势管理</a></div> 
  </div>-->
  <div class="menu-admin">  
   <div class="menu-header2">{:icon('list-alt')} 新闻中心管理 {:icon('menu-down','b')}</div>
   <div class="menu-dd"><a href="{:U('website/datatypelist','tables=inftype')}" target="right">{:icon('tags')}类别管理</a></div> 
   <div class="menu-dd"><a href="{:U('website/datalist','tables=information&martables=inftype')}" target="right">{:icon('list-alt')}资料管理</a></div>
  </div>
  <div class="menu-admin">  
   <div class="menu-header2">{:icon('list-alt')} 产品展示管理 {:icon('menu-down','b')}</div>
   <div class="menu-dd"><a href="{:U('website/datatypelist','tables=protype')}" target="right">{:icon('tags')}类别管理</a></div> 
   <div class="menu-dd"><a href="{:U('website/datalist','tables=proshow&martables=protype')}" target="right">{:icon('list-alt')}产品管理</a></div>
  </div>
  <div class="menu-admin">  
   <div class="menu-header2">{:icon('list-alt')} 应用案例管理 {:icon('menu-down','b')}</div>
   <div class="menu-dd"><a href="{:U('website/datatypelist','tables=casetype')}" target="right">{:icon('tags')}类别管理</a></div> 
   <div class="menu-dd"><a href="{:U('website/datalist','tables=caseshow&martables=casetype')}" target="right">{:icon('list-alt')}案例管理</a></div>
  </div>
  <div class="menu-admin">  
   <div class="menu-header2">{:icon('comment')} 在线留言管理 {:icon('menu-down','b')}</div>
   <div class="menu-dd"><a href="{:U('website/message','tables=message')}" target="right">{:icon('comment')}在线留言列表</a></div> 
  </div>
  <div class="menu-admin">  
   <div class="menu-header2">{:icon('link')} 友情链接管理 {:icon('menu-down','b')}</div>
   <div class="menu-dd"><a href="{:U('website/linkslist','tables=links')}" target="right">{:icon('link')}友情链接管理</a></div> 
  </div>
 </if>
 
 <if condition="$tabid eq 3">
  <div class="menu-admin">  
   <div class="menu-header2">{:icon('tasks')} 项目管理 {:icon('menu-down','b')}</div>
   <div class="menu-dd"><a href="{:U('case/caselist','tables=webcase')}" target="right">{:icon('list-alt')}项目管理</a></div> 
  </div>
 </if>
 
 <div style="height:25px;"></div>
 </div>
 </div>
 <!--END-->
 <!--RIGHT-->
 <div id="rightmain">
     <div id="map">
     <div class="pull-left btn-group" style="margin:3px auto 0 9px;">
      {:btn(array('vals'=>'','size'=>3,'icon'=>'resize-full','scene'=>'default','add'=>'mycollapse'))}
      {:btn(array('vals'=>'','size'=>3,'icon'=>'arrow-left','scene'=>'default','add'=>'back'))}
      {:btn(array('vals'=>'','size'=>3,'icon'=>'arrow-right','scene'=>'default','add'=>'going'))}
      {:btn(array('vals'=>'','size'=>3,'icon'=>'refresh','scene'=>'default','add'=>'f5'))}
      {:btn(array('vals'=>'','size'=>3,'icon'=>'fullscreen','scene'=>'default','add'=>'fullscreen'))}
      </div>
     <b>当前位置：<a href="{:U('index/main')}" target="right">系统首页</a> <img src="__img__/map_right.png" /> 管理中心 <img src="__img__/map_right.png" /> {$adminmemu[$tabid]}</b> 
     </div>
     <div id="iframdiv" class="adminpublic"><iframe name="right" id="iframeright" width="100%" height="100%" src="{:U('index/main')}" frameborder="0" scrolling="yes"></iframe></div>
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
</block>