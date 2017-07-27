<extend name="Base/common" />
<block name="main">
<script type="text/javascript" src="__js__/banner.js"></script>
<script type="text/javascript" src="__js__/jc.js"></script>
<div class="pic">
<div class="promoWD">
     <div id="main_promo">
           <div id="slides">
           <volist name="adv" id="advobj">
               <div class="slide"><a href="{$advobj['linkurl']}" target="_blank"><img src="__pic__{$advobj['pic']}"  alt="{$advobj['topic']}" /></a></div>
           </volist>
           </div>
      </div>
      <div id="dots">
      <volist name="adv" id="advobj">
            <a class="menuItem" href="javascript:void(0);"></a>
      </volist>     
      </div>
    </div>
</div>

<div class="banner">
	<div class="banner_c" id="news_main">
    	<div class="da">最新公告</div>
        <div class="ad_left"><a class=xpr href="#pr"><img src="__img__/ad_left.png" height="18" width="25" alt="left" /></a></div>
        <div class="ad_left"><a class=xnt href="#nt"><img src="__img__/ad_right.png" height="18" width="24" alt="left" /></a></div> 
        <div class="reidtxtlist">
        	<ul>
        	<volist name="news" id="newobj">
        		<li class="ell"><a href="{:U('index/news','id='.$newobj['Id'])}">{$newobj['topic']}</a><span>{:date('Y-m-d',strtotime($newobj['date']))}</span></li>
        	</volist>
            </ul>
        </div>
        <div class="bshar">
        	<div class="bshare-custom"><a title="分享到QQ空间" class="bshare-qzone"></a>
        		<a title="分享到新浪微博" class="bshare-sinaminiblog"></a>
        		<a title="分享到人人网" class="bshare-renren"></a>
        		<a title="分享到腾讯微博" class="bshare-qqmb"></a>
        		<a title="分享到网易微博" class="bshare-neteasemb"></a>
        		<a title="更多平台" class="bshare-more bshare-more-icon more-style-sharethis"></a>
        		<span class="BSHARE_COUNT bshare-share-count">0</span></div>
        		<script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script>
        		<script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
        </div>
    </div>
</div>
<div class="cut"></div>

<div class="main_c" style="margin-bottom:30px;">
	<div class="mBox" style="margin-left:0px;">
		<div class="mBox_t"><strong>新闻动态</strong>&nbsp;/&nbsp;NEWS<span><a href="{:U('index/newlist')}">更多>></a></span></div>
		<volist name="topNew" id="topNewobj">
			<div class="mBox_pic" title="{$topNewobj['topic']}"><a href="{:U('index/news','id='.$topNewobj['Id'])}"><img src="__pic__{$topNewobj['pic']}" /></a></div>
            <div class="mBox_jj">
            	<a href="{:U('index/news','id='.$topNewobj['Id'])}" title="{$topNewobj['topic']}"><h3 class="ell">{$topNewobj['topic']}</h3></a>
                <dl class="ell2">{$topNewobj['intro']}</dl>
            </div>
        </volist>   
        <ul>
		<volist name="new" id="newobj">
			<li title="{$newobj['topic']}"><a href="{:U('index/news','id='.$newobj['Id'])}" class="ell">{$newobj['topic']}</a><span>{:date('Y-m-d',strtotime($newobj['date']))}</span></li>
       </volist>
       </ul>
	</div>
	<div class="mBox" style="width:400px;">
		<div class="mBox_t"><strong>产品中心</strong>&nbsp;/&nbsp;PRODUCTS<span><a href="{:U('index/prolist')}">更多>></a></span></div>
		<script src="__js__/productsroll.js" type="text/javascript"></script>
		<div class="pro_scoll">
		<div class="productlistx">
		  <div class="blkproductlistx">
		    <div class="LeftButton" id="LeftArr1"></div>
		    <div class="Cont" id="ISL_Cont_11">
		    <volist name="pro" id="prolist">
		      <div class="produ">
		        <a href="{:U('index/proshow','id='.$prolist['Id'])}" title="{$prolist['topic']}"><img src="__pic__{$prolist['pic']}" width="250" height="190" alt="{$prolist['topic']}" />
		        <div class="produ_dds"><h3>{$prolist['topic']}</h3></div></a>
		      </div>
		    </volist>
		    </div>
		    <div class="RightButton" id="RightArr1"></div>
		    <script language="javascript" type="text/javascript">
		    var scrollPic_03 = new ScrollPic();
		    scrollPic_03.scrollContId   = "ISL_Cont_11"; //内容容器ID
		    scrollPic_03.arrLeftId      = "LeftArr1";//左箭头ID
		    scrollPic_03.arrRightId     = "RightArr1"; //右箭头ID
		    scrollPic_03.frameWidth     = 270;//显示框宽度
		    scrollPic_03.pageWidth      = 270; //翻页宽度
		    scrollPic_03.speed          = 10; //移动速度(单位毫秒，越小越快)
		    scrollPic_03.space          = 10; //每次移动像素(单位px，越大越快)
		    scrollPic_03.autoPlay       = true; //自动播放
		    scrollPic_03.autoPlayTime   = 2; //自动播放间隔时间(秒)
		    scrollPic_03.initialize(); //初始化							
		    </script>
		  </div>
		</div>
		</div>
	</div>
	<div class="mBox">
		<div class="mBox_t"><strong>关于我们</strong>&nbsp;/&nbsp;ABOUT US<span><a href="{:U('index/about','id=1')}">更多>></a></span></div>
		<div class="about_pic"><a href="{:U('index/about','id=1')}"><img src="__pic__/{$about['pic']}" title="{$sysconf['companyname']}" /></a></div>
		<div class="about_inc">
			{$about['intro']}...<a href="{:U('index/about','id=1')}">[详情]</a>
		</div>
	</div>
</div>

<!--<div class="pro_t"><a href="{:U('index/prolist')}"><font>产品</font>中心<br><span>PRODUCT</span></a><div class="dian"></div></div>
<script src="__js__/productsroll.js" type="text/javascript"></script>
<div class="pro_scoll">
<div class="productlistx">
  <div class="blkproductlistx">
    <div class="LeftButton" id="LeftArr1"></div>
    <div class="Cont" id="ISL_Cont_11">
    <volist name="pro" id="prolist">
      <div class="boxss">
        <a href="{:U('index/proshow','id='.$prolist['Id'])}" title="{$prolist['topic']}"><img src="__pic__{$prolist['pic']}" width="250" height="190" alt="{$prolist['topic']}" />
        <div class="box_dds"><h3>{$prolist['topic']}</h3><span class="ell2">{$prolist['intro']}</span></div></a>
      </div>
    </volist>
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
</div>-->

<!--<div class="abo_bg">
	<div class="main">
    	<a href="{:U('index/about','id=1')}"><div class="about_t">关于我们<br><span>ABOUT US</span></div></a>
        <div class="about_pic"><a href="{:U('index/about','id=1')}"><img src="__pic__/{$about['pic']}" width="412" height="257" /></a></div>
        <div class="about_con"><div class="about_ti">{$sysconf['companyname']}<br><span> CO.,LTD</span></div><p>{$about['intro']}</p><a href="{:U('index/about','id=1')}"><div class="abo_more">查看详情>></div></a></div>
    </div>
</div>


<!--<div class="pro_t"><a href="{:U('index/prolist')}"><font>新闻</font>动态<br><span>NEWS</span></a><div class="dian"></div></div>
<div class="main">
<volist name="new" id="newobj">
	<div class="new" <if condition="$key eq 1 or $key eq 3">style="margin-left:20px;"</if>>
    	<div class="new_pic"><a href="{:U('index/news','id='.$newobj['Id'])}"><img src="__pic__{$newobj['pic']}" width="159" height="114" /></a></div>
        <a href="{:U('index/news','id='.$newobj['Id'])}"><h3 class="ell">{$newobj['topic']}</h3></a>
        <p class="ell2">{$newobj['intro']}</p>
        <div class="new_d"><a href="{:U('index/news','id='.$newobj['Id'])}"><img src="__img__/more.png" /></a><span>{:date('Y-m-d',strtotime($newobj['date']))}</span></div>
    </div>
</volist>
</div>-->

<!--<div class="bg_d">
	<div class="main">
    	<div class="bg_d_l">
        <div class="feed_t"><b>ONLINE MESSAGE</b> / 客户留言</div>
        <form action="" method="post" name="form" id="form">
        <div class="name"><input name="name" class="input" type="text" value="请输入您的姓名" onfocus="javascript:this.value=''"></div>
        <div class="email"><input name="email" class="input" type="email" value="请输入您的邮箱" onfocus="javascript:this.value=''"></div>
        <textarea name="content" class="feed_con" type="text" onfocus="javascript:this.value=''">请输入您要留言的内容...</textarea>
        <a href="{:U('index/feedback')}"><input type="button" name="send" class="feed_but" value="发表留言" /></a><img src="__img__/feedbut.png" />
        </form>
        </div>
        <div class="bg_d_r">
        <div class="feed_t"><b>CONTACT US</b> / 联系我们</div>
        <dl>
          <dt><img src="__img__/phone.png" /></dt><dd>Tel：{$sysconf['tel']}</dd>
          <dt><img src="__img__/fax.png" /></dt><dd>Fax：{$sysconf['fax']}</dd>
          <dt><img src="__img__/em.png" /></dt><dd>Email：{$sysconf['email']}</dd>
          <dt style="border:0px;"><img src="__img__/adds.png" /></dt><dd style="border:0px;">Add：{$sysconf['address']}</dd>
        </dl>
        <div class="map"><iframe width="255" height="222" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="__js__/map.html"></iframe></div>
        <div class="link_d">
        	<a href=""><img src="__img__/wbs.png" /></a>
        	<a href=""><img src="__img__/wxs.png" /></a>
            <a href=""><img src="__img__/qqs.png" /></a>
        </div>
        </div>
    </div>
</div>-->
 
</block>

<block name="foot"></block>