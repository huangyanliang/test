<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title><?php echo ($metatitle); if($metatitle != ''): ?>-<?php endif; echo ($sysconf['companyname']); ?></title>
<meta name="description" content="<?php echo ($metades); ?>" />
<meta name="keywords" content="<?php echo ($metakey); ?>" />
<script type="text/javascript" src="/fxcl/public/Home/js/jquery.min.js"></script>
<script type="text/javascript" src="/fxcl/public/Home/js/common.js"></script>
<link rel="stylesheet" href="/fxcl/public/Home/css/style.css">
<link type="text/css" rel="shortcut icon" href="/fxcl/public/Home/images/favicon.ico" />

<script type="text/javascript">
 var think   = '/fxcl/index.php/Home';
 var img     = '/fxcl/public/Home/images';
 var pic     = '/fxcl/uploads/';
</script>
<script>
function browserRedirect() {
        var sUserAgent = navigator.userAgent.toLowerCase();
        var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
        var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
        var bIsMidp = sUserAgent.match(/midp/i) == "midp";
        var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
        var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
        var bIsAndroid = sUserAgent.match(/android/i) == "android";
        var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
        var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";

        if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
            //移动终端
			$(".nav,.footer,.top,.head,.pic,.pro_t,.abo_bg,.adv_bg,.bg_d,.pic_n").css("width","1300px");
        } else {
            
        }

    }
	$(document).ready(function(e) {
      browserRedirect();  
    });
</script>
</head>
<body>
<div class="head">
    <div class="main">
    	<a href="<?php echo U('index/index');?>"><img src="/fxcl/public/Home/images/txt-logo.png" /></a>
        <div class="top_r"><img src="/fxcl/public/Home/images/tell.png" />服务热线/Service hotline<br><b><?php echo ($sysconf['tel']); ?></b></div>
    </div>
</div>
<div class="nav"> 
	<ul>                                     
    <li <?php if($mark == 'index'): ?>class="navs"<?php endif; ?>><a href="<?php echo U('index/index');?>">首页</a></li>
    <li <?php if($mark == 'product'): ?>class="navs"<?php endif; ?>><a href="<?php echo U('index/prolist');?>">产品</a>
    	<div class="navShow">
    		<div id="navShow_l">
    			<?php if(is_array($protypeNav)): $i = 0; $__LIST__ = $protypeNav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$proobj): $mod = ($i % 2 );++$i;?><a href="<?php echo U('index/prolist','inftype='.$proobj['Id']);?>"><?php echo ($proobj['topic']); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>
    		</div>
    		<div id="navShow_r">
    			<?php if(is_array($proTop)): $i = 0; $__LIST__ = array_slice($proTop,0,1,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$proTops): $mod = ($i % 2 );++$i;?><dl>
			        <dt><a href="<?php echo U('index/proshow','id='.$proTops['Id']);?>"><img src="/fxcl/uploads/<?php echo ($proTops['pic']); ?>"/></a></dt>
			        <dd><a href="<?php echo U('index/proshow','id='.$proTops['Id']);?>"><?php echo ($proTops['topic']); ?></a></dd>
			      </dl><?php endforeach; endif; else: echo "" ;endif; ?>
    		</div>
    	</div>
    </li>
    <li <?php if($mark == 'program'): ?>class="navs"<?php endif; ?>><a href="<?php echo U('index/programlist');?>">方案</a>
    	<div class="navShow">
    		<div id="navShow_l">
    			<?php if(is_array($programNav)): $i = 0; $__LIST__ = $programNav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$programobj): $mod = ($i % 2 );++$i;?><a href="<?php echo U('index/programlist','inftype='.$programobj['Id']);?>"><?php echo ($programobj['topic']); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>
    		</div>
    		<div id="navShow_r">
    			<?php if(is_array($programTop)): $i = 0; $__LIST__ = array_slice($programTop,0,1,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$programTops): $mod = ($i % 2 );++$i;?><dl>
			        <dt><a href="<?php echo U('index/programshow','id='.$programTops['Id']);?>"><img src="/fxcl/uploads/<?php echo ($programTops['pic']); ?>"/></a></dt>
			        <dd><a href="<?php echo U('index/programshow','id='.$programTops['Id']);?>"><?php echo ($programTops['topic']); ?></a></dd>
			      </dl><?php endforeach; endif; else: echo "" ;endif; ?>
    		</div>
    	</div>
    </li>
    <li <?php if($mark == 'advantage'): ?>class="navs"<?php endif; ?>><a href="<?php echo U('index/advantage','id=1');?>">服务</a>
    	<div class="navShow">
    		<div id="navShow_l">
    			<?php if(is_array($advanNav)): $i = 0; $__LIST__ = $advanNav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$advanobj): $mod = ($i % 2 );++$i;?><a href="<?php echo U('index/advantage','id='.$advanobj['Id']);?>"><?php echo ($advanobj['topic']); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>
    		</div>
    		<div id="navShow_r">
    			<?php if(is_array($advanTop)): $i = 0; $__LIST__ = array_slice($advanTop,0,1,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$advanTops): $mod = ($i % 2 );++$i;?><dl>
			        <dt><a href="<?php echo U('index/advantage','id='.$advanTops['Id']);?>"><img src="/fxcl/uploads/<?php echo ($advanTops['pic']); ?>"/></a></dt>
			        <dd><a href="<?php echo U('index/advantage','id='.$advanTops['Id']);?>"><?php echo ($advanTops['topic']); ?></a></dd>
			      </dl><?php endforeach; endif; else: echo "" ;endif; ?>
    		</div>
    	</div>
    </li>
    <!--<li <?php if($mark == 'case'): ?>class="navs"<?php endif; ?>><a href="<?php echo U('index/caselist');?>">案例</a>
    	<div class="navShow">
    		<div id="navShow_l">
    			<?php if(is_array($caseNav)): $i = 0; $__LIST__ = $caseNav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$caseNavs): $mod = ($i % 2 );++$i;?><a href="<?php echo U('index/caselist','inftype='.$caseNavs['Id']);?>"><?php echo ($caseNavs['topic']); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>
    		</div>
    		<div id="navShow_r">
    			<?php if(is_array($caseTop)): $i = 0; $__LIST__ = array_slice($caseTop,0,1,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$caseTops): $mod = ($i % 2 );++$i;?><dl>
			        <dt><a href="<?php echo U('index/caseshow','id='.$caseTops['Id']);?>"><img src="/fxcl/uploads/<?php echo ($caseTops['pic']); ?>"/></a></dt>
			        <dd><a href="<?php echo U('index/caseshow','id='.$caseTops['Id']);?>"><?php echo ($caseTops['topic']); ?></a></dd>
			      </dl><?php endforeach; endif; else: echo "" ;endif; ?>
    		</div>
    	</div>
    </li>-->
    <li <?php if($mark == 'new'): ?>class="navs"<?php endif; ?>><a href="<?php echo U('index/newlist');?>">动态</a>
    	<div class="navShow">
    		<div id="navShow_l">
    			<?php if(is_array($newNav)): $i = 0; $__LIST__ = $newNav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$newNavs): $mod = ($i % 2 );++$i;?><a href="<?php echo U('index/newlist','inftype='.$newNavs['Id']);?>"><?php echo ($newNavs['topic']); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>
    		</div>
    		<div id="navShow_r">
    			<?php if(is_array($newTop)): $i = 0; $__LIST__ = array_slice($newTop,0,1,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$newTops): $mod = ($i % 2 );++$i;?><dl>
			        <dt><a href="<?php echo U('index/new','id='.$newTops['Id']);?>"><img src="/fxcl/uploads/<?php echo ($newTops['pic']); ?>"/></a></dt>
			        <dd><a href="<?php echo U('index/new','id='.$newTops['Id']);?>"><?php echo ($newTops['topic']); ?></a></dd>
			      </dl><?php endforeach; endif; else: echo "" ;endif; ?>
    		</div>
    	</div>
    </li>
    <li <?php if($mark == 'about'): ?>class="navs"<?php endif; ?>><a href="<?php echo U('index/about','id=1');?>">关于我们</a>
    	<div class="navShow">
    		<div id="navShow_l">
    			<?php if(is_array($aboutNav)): $i = 0; $__LIST__ = $aboutNav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$aboutNavs): $mod = ($i % 2 );++$i;?><a href="<?php echo U('index/about','id='.$aboutNavs['Id']);?>"><?php echo ($aboutNavs['topic']); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>
    		</div>
    		<div id="navShow_r">
    			<?php if(is_array($aboutNav)): $i = 0; $__LIST__ = array_slice($aboutNav,0,1,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$aboutTops): $mod = ($i % 2 );++$i;?><dl>
			        <dt><a href="<?php echo U('index/about','id='.$aboutTops['Id']);?>"><img src="/fxcl/uploads/<?php echo ($aboutTops['pic']); ?>"/></a></dt>
			        <dd><a href="<?php echo U('index/about','id='.$aboutTops['Id']);?>"><?php echo ($aboutTops['topic']); ?></a></dd>
			      </dl><?php endforeach; endif; else: echo "" ;endif; ?>
    		</div>
    	</div>
    </li>
    <li><a href="http://www.taobao.com" target="_blank">商城入口</a></li>
    </ul>
</div>

	
    <div class="pic_n"></div>
    <div class="cut"></div>
    <div class="main">
    <div class="left_menu">
        <div class="left_menu_T"><b>PRODUCTS</b> / 产品中心</div>
        <div class="left_menu_D">
          <ul>
          <?php if(is_array($protype)): $i = 0; $__LIST__ = $protype;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$protypeobj): $mod = ($i % 2 );++$i;?><li <?php if($protypeobj['Id'] == $data['inftype']): ?>class='left_ul_lis'<?php else: ?>class='left_ul_li'<?php endif; ?>><a href="<?php echo U('index/prolist','inftype='.$protypeobj['Id']);?>"><?php echo ($protypeobj['topic']); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
          </ul>
        </div>
         <div class="contactBox">
	        <div class="feed_ts"><b>CONTACT US</b> / 联系我们</div>
	        <dl>
	          <dt><img src="/fxcl/public/Home/images/tell.png" /></dt><dd>Tel：<?php echo ($sysconf['tel']); ?></dd>
	          <dt><img src="/fxcl/public/Home/images/faxs.png" /></dt><dd>Fax：<?php echo ($sysconf['fax']); ?></dd>
	          <dt><img src="/fxcl/public/Home/images/email.png" /></dt><dd>Email：<?php echo ($sysconf['email']); ?></dd>
	          <dt style="border:0px;"><img src="/fxcl/public/Home/images/addss.png" /></dt><dd style="border:0px;">Add：<?php echo ($sysconf['address']); ?></dd>
	        </dl>
	    </div>
      </div>
    
      <div class="right">
        <div class="right_t"><strong><?php echo ($metatitle); ?></strong><span>当前位置 > <a href="<?php echo U('index/index');?>">首页</a> > <a href="<?php echo U('index/prolist');?>">产品中心</a> > <a href="<?php echo U('index/prolist','inftype='.$data['inftype']);?>"><?php echo ($metatitle); ?></a></span></div>
        <div class="right_con">
        	<div class="right_cons">
            	<img src="/fxcl/uploads//<?php echo ($data['pic']); ?>" width="259" height="195" />
            	<h3><?php echo ($data['topic']); ?></h3>
                <p><?php echo ($data['intro']); ?></p>
            </div>
     		<div class="xxjs"><span>详细介绍</span></div>
   			<?php echo ($data['content']); ?>
      	</div>
      </div>
      
	</div>
    


<div class="bg_d">
	<div class="main" style="height:290px">
    	<div class="bg_d_l">
 			<dl>
 				<dt>产品</dt>
 				<?php if(is_array($protypeNav)): $i = 0; $__LIST__ = $protypeNav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$protypeobj): $mod = ($i % 2 );++$i;?><dd><a href="<?php echo U('index/prolist','inftype='.$protypeobj['Id']);?>"><?php echo ($protypeobj['topic']); ?></a></dd><?php endforeach; endif; else: echo "" ;endif; ?>

 			</dl>
 			<dl>
 				<dt>方案</dt>
 				<?php if(is_array($programNav)): $i = 0; $__LIST__ = $programNav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$programobj): $mod = ($i % 2 );++$i;?><dd><a href="<?php echo U('index/program','inftype='.$programobj['Id']);?>"><?php echo ($programobj['topic']); ?></a></dd><?php endforeach; endif; else: echo "" ;endif; ?>
 			</dl>
 			<dl>
 				<dt>服务</dt>
 				<?php if(is_array($advanNav)): $i = 0; $__LIST__ = $advanNav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$advanobj): $mod = ($i % 2 );++$i;?><dd><a href="<?php echo U('index/advantage','id='.$advanobj['Id']);?>"><?php echo ($advanobj['topic']); ?></a></dd><?php endforeach; endif; else: echo "" ;endif; ?>
 			</dl>
 			<dl>
 				<dt>案例</dt>
 				<?php if(is_array($caseNav)): $i = 0; $__LIST__ = $caseNav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$casetypeobj): $mod = ($i % 2 );++$i;?><dd><a href="<?php echo U('index/caselist','inftype='.$casetypeobj['Id']);?>"><?php echo ($casetypeobj['topic']); ?></a></dd><?php endforeach; endif; else: echo "" ;endif; ?>
 			</dl>
 			<dl>
 				<dt>动态</dt>
 				<?php if(is_array($newNav)): $i = 0; $__LIST__ = $newNav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$newtypeobj): $mod = ($i % 2 );++$i;?><dd><a href="<?php echo U('index/newlist','inftype='.$newtypeobj['Id']);?>"><?php echo ($newtypeobj['topic']); ?></a></dd><?php endforeach; endif; else: echo "" ;endif; ?>
 			</dl>
 			<dl>
 				<dt>关于我们</dt>
 				<?php if(is_array($aboutNav)): $i = 0; $__LIST__ = $aboutNav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$aboutobj): $mod = ($i % 2 );++$i;?><dd><a href="<?php echo U('index/about','id='.$aboutobj['Id']);?>"><?php echo ($aboutobj['topic']); ?></a></dd><?php endforeach; endif; else: echo "" ;endif; ?>
		      	<dd><a href="<?php echo U('index/feedback');?>">在线留言</a></dd>
 			</dl>
        </div>
        
        <div class="bg_d_r">
        	<div class="map"><img src="/fxcl/public/Home/images/ewm.png" width="100%" ></div>
	        <div class="feed_t"><b>CONTACT US</b> / 联系我们</div>
	        <dl>
	          <dt><img src="/fxcl/public/Home/images/phone.png" /></dt><dd>Tel：<?php echo ($sysconf['tel']); ?></dd>
	          <dt><img src="/fxcl/public/Home/images/fax.png" /></dt><dd>Fax：<?php echo ($sysconf['fax']); ?></dd>
	          <dt><img src="/fxcl/public/Home/images/em.png" /></dt><dd>Email：<?php echo ($sysconf['email']); ?></dd>
	          <dt style="border:0px;"><img src="/fxcl/public/Home/images/adds.png" /></dt><dd style="border:0px;">Add：<?php echo ($sysconf['address']); ?></dd>
	        </dl>
        </div>
    </div>
    <div class="footer"><p>All Rights Reserved 版权所有：<?php echo ($sysconf['companyname']); ?>　<?php echo ($sysconf['icpnote']); ?></div>
</div>

<!--底部执行代码-->
<?php echo ($sysconf['sys_code']); ?>
<!--结束-->
</body>
</html>