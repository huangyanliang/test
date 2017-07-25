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
<!--<div class="top">
	<div class="main">
    <ul>
    <a href=""><li class="wb"></li></a><a href=""><li class="wx"></li></a><a href=""><li class="qq"></li></a>
    <a href="mailto:<?php echo ($sysconf['email']); ?>"><ol><?php echo ($sysconf['email']); ?></ol></a>
    </ul>
    <a href="<?php echo U('index/index');?>/?t=skin"><span><img src="/fxcl/public/Home/images/ch.png" />中文</span></a>
    <a href="<?php echo U('index/index');?>/?t=en"><span><img src="/fxcl/public/Home/images/en.png" />English</span></a>
    </div>
</div>-->
<div class="head">
    <div class="main">
    	<a href="<?php echo U('index/index');?>"><img src="/fxcl/public/Home/images/txt-logo.png" /></a>
        <div class="top_r"><img src="/fxcl/public/Home/images/tell.png" />服务热线/Service hotline<br><b>0795-4605136</b></div>
    </div>
</div>
<div class="nav"> 
	<ul>                                     
    <a href="<?php echo U('index/index');?>"><li <?php if($mark == 'index'): ?>class="navs"<?php endif; ?>>网站首页</li></a>
    <a href="<?php echo U('index/about','id=1');?>"><li <?php if($mark == 'about'): ?>class="navs"<?php endif; ?>>关于我们</li></a>
    <a href="<?php echo U('index/prolist');?>"><li <?php if($mark == 'product'): ?>class="navs"<?php endif; ?>>产品中心</li></a>
    <a href="<?php echo U('index/picshow');?>"><li <?php if($mark == 'picshow'): ?>class="navs"<?php endif; ?>>应用案例</li></a>
    <a href="<?php echo U('index/newlist');?>"><li <?php if($mark == 'new'): ?>class="navs"<?php endif; ?>>新闻中心</li></a>
    <a href="<?php echo U('index/about','id=2');?>"><li <?php if($mark == 'smyt'): ?>class="navs"<?php endif; ?>>服务优势</li></a>
    <a href="<?php echo U('index/about','id=3');?>"><li <?php if($mark == 'abouts'): ?>class="navs"<?php endif; ?>>联系我们</li></a>
    <a href="http://www.taobao.com" target="_blank"><li>商城入口</li></a>
    </ul>
</div>

	
    <div class="pic_n"></div>
    <div class="cut"></div>
    <div class="main">
    <div class="left_menu">
        <div class="left_menu_T"><dl><dd>新闻动态</dd><dt>NEWS</dt></dl></div>
        <div class="left_menu_D">
          <ul>
          <?php if(is_array($newtype)): $i = 0; $__LIST__ = $newtype;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$newtypeobj): $mod = ($i % 2 );++$i;?><li <?php if($newtypeobj['Id'] == $inftype): ?>class='left_ul_lis'<?php else: ?>class='left_ul_li'<?php endif; ?>><a href="<?php echo U('index/newlist','inftype='.$newtypeobj['Id']);?>"><?php echo ($newtypeobj['topic']); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
          </ul>
        </div>
        <div class="tell_n"><?php echo ($sysconf['tel']); ?></div>
    	<div class="address"><?php echo ($sysconf['address']); ?></div>
      </div>
    
      <div class="right">
        <div class="right_t"><strong><?php echo ($metatitle); ?></strong><span>当前位置 > <a href="<?php echo U('index/index');?>">首页</a> > <a href="<?php echo U('index/newlist');?>">新闻动态</a> > <?php echo ($metatitle); ?></span></div>
        <ul class="new_ul">
        <?php if(is_array($new)): $i = 0; $__LIST__ = $new;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$newobj): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U('index/news','id='.$newobj['Id']);?>"><?php echo ($newobj['topic']); ?></a><span>[<?php echo date('Y-m-d',strtotime($newobj['date']));?>]</span></li><?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
        <div class="jogger"><?php echo ($page); ?></div>    
      </div>
      
	</div>
    


<div class="footer">
    <div class="main">
    	<p><a href="<?php echo U('index/about','id=1');?>">关于我们</a>　/　<a href="<?php echo U('index/newlist');?>">新闻中心</a>　/　<a href="<?php echo U('index/picshow');?>">公司相册</a>　/　<a href="<?php echo U('index/prolist');?>">产品中心</a>　/　<a href="<?php echo U('index/about','id=3');?>">石墨用途</a>　/　<a href="<?php echo U('index/newlist','inftype=3');?>">人才招聘</a>　/　<a href="<?php echo U('index/about','id=2');?>">联系我们</a></p>
        <p>All Rights Reserved 版权所有：<?php echo ($sysconf['companyname']); ?>　<?php echo ($sysconf['icpnote']); ?>
        
    </div>
</div>

<!--底部执行代码-->
<?php echo ($sysconf['sys_code']); ?>
<!--结束-->
</body>
</html>