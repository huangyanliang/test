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
		<div class="mBox_t"><strong>应用案例</strong>&nbsp;/&nbsp;CASE<span><a href="{:U('index/caselist')}">更多>></a></span></div>

		<volist name="new" id="newobj">
			<div class="mBox_pic" title="{$newobj['topic']}"><a href="{:U('index/caseshow','id='.$newobj['Id'])}"><img src="__pic__{$newobj['pic']}" /></a></div>
            <div class="mBox_jj">
            	<a href="{:U('index/caseshow','id='.$newobj['Id'])}" title="{$newobj['topic']}"><h3 class="ell">{$newobj['topic']}</h3></a>
                <dl class="ell2">{$newobj['intro']}</dl>
            </div>
        </volist>
	</div>
	<div class="mBox" style="width:400px;">
		<div class="mBox_t"><strong>新品推荐</strong>&nbsp;/&nbsp;PRODUCTS<span><a href="{:U('index/prolist')}">更多>></a></span></div>
		<script src="__js__/productsroll.js" type="text/javascript"></script>
		<div class="pro_scoll">
		<div class="productlistx">
		  <div class="blkproductlistx">
		    <div class="LeftButton" id="LeftArr1"></div>
		    <div class="Cont" id="ISL_Cont_11">
		    <volist name="pro" id="prolist">
		      <div class="produ">
		        <a href="{:U('index/proshow','id='.$prolist['Id'])}" title="{$prolist['topic']}"><img src="__pic__{$prolist['pic']}" width="250" height="190" alt="{$prolist['topic']}" />
		        <div class="produ_dds">{$prolist['topic']}</div></a>
		      </div>
		    </volist>
		    </div>
		    <div class="RightButton" id="RightArr1"></div>
		    <script language="javascript" type="text/javascript">
		    var scrollPic_03 = new ScrollPic();
		    scrollPic_03.scrollContId   = "ISL_Cont_11"; //内容容器ID
		    scrollPic_03.arrLeftId      = "LeftArr1";//左箭头ID
		    scrollPic_03.arrRightId     = "RightArr1"; //右箭头ID
		    scrollPic_03.frameWidth     = 300;//显示框宽度
		    scrollPic_03.pageWidth      = 310; //翻页宽度
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
		<div class="mBox_t"><strong>企业文化</strong>&nbsp;/&nbsp;COMPANY CULTURE<span><a href="{:U('index/about','id=1')}">更多>></a></span></div>
		<div class="about_pic"><a href="{:U('index/about','id=1')}"><img src="__pic__/{$about['pic']}" title="{$sysconf['companyname']}" /></a></div>
		<a href="{:U('index/about','id=1')}"><div class="about_title">{$sysconf['slogan']}</div></a>
		<div class="about_inc">
			{$about['intro']}...<a href="{:U('index/about','id=1')}">[详情]</a>
		</div>
	</div>
</div>
 
</block>

<block name="foot"></block>