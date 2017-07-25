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

<script type="text/javascript" src="/fxcl/public/Home/js/banner.js"></script>
<div class="pic">
<div class="promoWD">
     <div id="main_promo">
           <div id="slides">
           <?php if(is_array($adv)): $i = 0; $__LIST__ = $adv;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$advobj): $mod = ($i % 2 );++$i;?><div class="slide"><a href="<?php echo ($advobj['linkurl']); ?>" target="_blank"><img src="/fxcl/uploads/<?php echo ($advobj['pic']); ?>"  alt="<?php echo ($advobj['topic']); ?>" /></a></div><?php endforeach; endif; else: echo "" ;endif; ?>
           </div>
      </div>
      <div id="dots">
      <?php if(is_array($adv)): $i = 0; $__LIST__ = $adv;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$advobj): $mod = ($i % 2 );++$i;?><a class="menuItem" href="javascript:void(0);"></a><?php endforeach; endif; else: echo "" ;endif; ?>     
      </div>
    </div>
</div>

<div class="pro_t"><a href="<?php echo U('index/prolist');?>"><font>产品</font>中心<br><span>PRODUCT</span></a><div class="dian"></div></div>
<script src="/fxcl/public/Home/js/productsroll.js" type="text/javascript"></script>
<div class="pro_scoll">
<div class="productlistx">
  <div class="blkproductlistx">
    <div class="LeftButton" id="LeftArr1"></div>
    <div class="Cont" id="ISL_Cont_11">
    <?php if(is_array($pro)): $i = 0; $__LIST__ = $pro;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$prolist): $mod = ($i % 2 );++$i;?><div class="boxss">
        <a href="<?php echo U('index/proshow','id='.$prolist['Id']);?>" title="<?php echo ($prolist['topic']); ?>"><img src="/fxcl/uploads/<?php echo ($prolist['pic']); ?>" width="250" height="190" alt="<?php echo ($prolist['topic']); ?>" />
        <div class="box_dds"><h3><?php echo ($prolist['topic']); ?></h3><span class="ell2"><?php echo ($prolist['intro']); ?></span></div></a>
      </div><?php endforeach; endif; else: echo "" ;endif; ?>
    </div>
    <div class="RightButton" id="RightArr1"></div>
    <script language="javascript" type="text/javascript">
    var scrollPic_03 = new ScrollPic();
    scrollPic_03.scrollContId   = "ISL_Cont_11"; //内容容器ID
    scrollPic_03.arrLeftId      = "LeftArr1";//左箭头ID
    scrollPic_03.arrRightId     = "RightArr1"; //右箭头ID
    scrollPic_03.frameWidth     = 1160;//显示框宽度
    scrollPic_03.pageWidth      = 287; //翻页宽度
    scrollPic_03.speed          = 10; //移动速度(单位毫秒，越小越快)
    scrollPic_03.space          = 10; //每次移动像素(单位px，越大越快)
    scrollPic_03.autoPlay       = true; //自动播放
    scrollPic_03.autoPlayTime   = 2; //自动播放间隔时间(秒)
    scrollPic_03.initialize(); //初始化							
    </script>
  </div>
</div>
</div>

<div class="abo_bg">
	<div class="main">
    	<a href="<?php echo U('index/about','id=1');?>"><div class="about_t">关于我们<br><span>ABOUT US</span></div></a>
        <div class="about_pic"><a href="<?php echo U('index/about','id=1');?>"><img src="/fxcl/uploads//<?php echo ($about['pic']); ?>" width="412" height="257" /></a></div>
        <div class="about_con"><div class="about_ti"><?php echo ($sysconf['companyname']); ?><br><span> CO.,LTD</span></div><p><?php echo ($about['intro']); ?></p><a href="<?php echo U('index/about','id=1');?>"><div class="abo_more">查看详情>></div></a></div>
    </div>
</div>

<!--<div class="adv_bg">
  <div class="main">
  <?php if(is_array($advan)): $i = 0; $__LIST__ = $advan;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$advobj): $mod = ($i % 2 );++$i;?><a href="<?php echo U('index/advan','id='.$advobj['Id']);?>"><div class="adv<?php echo ($key+1); ?> advantage">
      	<h3><?php echo ($advobj['topic']); ?></h3>
        <div class="adv_con ell3"><?php echo ($advobj['intro']); ?></div>
      </div></a><?php endforeach; endif; else: echo "" ;endif; ?>
  </div>
</div>-->

<div class="pro_t"><a href="<?php echo U('index/prolist');?>"><font>新闻</font>动态<br><span>NEWS</span></a><div class="dian"></div></div>
<div class="main">
<?php if(is_array($new)): $i = 0; $__LIST__ = $new;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$newobj): $mod = ($i % 2 );++$i;?><div class="new" <?php if($key == 1 or $key == 3): ?>style="margin-left:20px;"<?php endif; ?>>
    	<div class="new_pic"><a href="<?php echo U('index/news','id='.$newobj['Id']);?>"><img src="/fxcl/uploads/<?php echo ($newobj['pic']); ?>" width="159" height="114" /></a></div>
        <a href="<?php echo U('index/news','id='.$newobj['Id']);?>"><h3 class="ell"><?php echo ($newobj['topic']); ?></h3></a>
        <p class="ell2"><?php echo ($newobj['intro']); ?></p>
        <div class="new_d"><a href="<?php echo U('index/news','id='.$newobj['Id']);?>"><img src="/fxcl/public/Home/images/more.png" /></a><span><?php echo date('Y-m-d',strtotime($newobj['date']));?></span></div>
    </div><?php endforeach; endif; else: echo "" ;endif; ?>
</div>

<div class="bg_d">
	<div class="main">
    	<div class="bg_d_l">
        <div class="feed_t"><b>ONLINE MESSAGE</b> / 客户留言</div>
        <form action="" method="post" name="form" id="form">
        <div class="name"><input name="name" class="input" type="text" value="请输入您的姓名" onfocus="javascript:this.value=''"></div>
        <div class="email"><input name="email" class="input" type="email" value="请输入您的邮箱" onfocus="javascript:this.value=''"></div>
        <textarea name="content" class="feed_con" type="text" onfocus="javascript:this.value=''">请输入您要留言的内容...</textarea>
        <a href="<?php echo U('index/feedback');?>"><input type="button" class="feed_but" value="发表留言" /></a><img src="/fxcl/public/Home/images/feedbut.png" />
        </form>
        </div>
        <div class="bg_d_r">
        <div class="feed_t"><b>CONTACT US</b> / 联系我们</div>
        <dl>
          <dt><img src="/fxcl/public/Home/images/phone.png" /></dt><dd>Tel：<?php echo ($sysconf['tel']); ?></dd>
          <dt><img src="/fxcl/public/Home/images/fax.png" /></dt><dd>Fax：<?php echo ($sysconf['fax']); ?></dd>
          <dt><img src="/fxcl/public/Home/images/em.png" /></dt><dd>Email：<?php echo ($sysconf['email']); ?></dd>
          <dt style="border:0px;"><img src="/fxcl/public/Home/images/adds.png" /></dt><dd style="border:0px;">Add：<?php echo ($sysconf['address']); ?></dd>
        </dl>
        <div class="map"><iframe width="255" height="222" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="/fxcl/public/Home/js/map.html"></iframe></div>
        <div class="link_d">
        	<a href=""><img src="/fxcl/public/Home/images/wbs.png" /></a>
        	<a href=""><img src="/fxcl/public/Home/images/wxs.png" /></a>
            <a href=""><img src="/fxcl/public/Home/images/qqs.png" /></a>
        </div>
        </div>
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