<extend name="Base/common" />
<block name="main">
<script type="text/javascript" src="__js__/banner.js"></script>
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

<div class="pro_t"><a href="{:U('index/prolist')}"><font>产品</font>中心<br><span>PRODUCT</span></a><div class="dian"></div></div>
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
</div>

<div class="abo_bg">
	<div class="main">
    	<a href="{:U('index/about','id=1')}"><div class="about_t">关于我们<br><span>ABOUT US</span></div></a>
        <div class="about_pic"><a href="{:U('index/about','id=1')}"><img src="__pic__/{$about['pic']}" width="412" height="257" /></a></div>
        <div class="about_con"><div class="about_ti">{$sysconf['companyname']}<br><span> CO.,LTD</span></div><p>{$about['intro']}</p><a href="{:U('index/about','id=1')}"><div class="abo_more">查看详情>></div></a></div>
    </div>
</div>

<!--<div class="adv_bg">
  <div class="main">
  <volist name="advan" id="advobj">
      <a href="{:U('index/advan','id='.$advobj['Id'])}"><div class="adv{$key+1} advantage">
      	<h3>{$advobj['topic']}</h3>
        <div class="adv_con ell3">{$advobj['intro']}</div>
      </div></a>
  </volist>
  </div>
</div>-->

<div class="pro_t"><a href="{:U('index/prolist')}"><font>新闻</font>动态<br><span>NEWS</span></a><div class="dian"></div></div>
<div class="main">
<volist name="new" id="newobj">
	<div class="new" <if condition="$key eq 1 or $key eq 3">style="margin-left:20px;"</if>>
    	<div class="new_pic"><a href="{:U('index/news','id='.$newobj['Id'])}"><img src="__pic__{$newobj['pic']}" width="159" height="114" /></a></div>
        <a href="{:U('index/news','id='.$newobj['Id'])}"><h3 class="ell">{$newobj['topic']}</h3></a>
        <p class="ell2">{$newobj['intro']}</p>
        <div class="new_d"><a href="{:U('index/news','id='.$newobj['Id'])}"><img src="__img__/more.png" /></a><span>{:date('Y-m-d',strtotime($newobj['date']))}</span></div>
    </div>
</volist>
</div>

<div class="bg_d">
	<div class="main">
    	<div class="bg_d_l">
        <div class="feed_t"><b>ONLINE MESSAGE</b> / 客户留言</div>
        <form action="" method="post" name="form" id="form">
        <div class="name"><input name="name" class="input" type="text" value="请输入您的姓名" onfocus="javascript:this.value=''"></div>
        <div class="email"><input name="email" class="input" type="email" value="请输入您的邮箱" onfocus="javascript:this.value=''"></div>
        <textarea name="content" class="feed_con" type="text" onfocus="javascript:this.value=''">请输入您要留言的内容...</textarea>
        <a href="{:U('index/feedback')}"><input type="button" class="feed_but" value="发表留言" /></a><img src="__img__/feedbut.png" />
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
</div>
 
</block>

<block name="foot"></block>