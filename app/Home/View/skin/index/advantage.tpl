<extend name="Base/common" />
<block name="main">

<div class="pic_n"></div>
<div class="cut"></div>
<div class="main">
<div class="left_menu">
    <div class="left_menu_T"><B>SERVICE</B> / 服务</div>
    <div class="left_menu_D">
      <ul>
      	<volist name="advanNav" id="advanobj">
        	<li <if condition="$advanobj['Id'] eq $id">class='left_ul_lis'<else />class='left_ul_li'</if>><a href="{:U('index/advantage','id='.$advanobj['Id'])}">{$advanobj['topic']}</a></li>
      	</volist>
      </ul>
    </div>
    <div class="contactBox">
	    <div class="feed_ts"><b>CONTACT US</b> / 联系我们</div>
	    <dl>
	        <dt><img src="__img__/tell.png" /></dt><dd>Tel：{$sysconf['tel']}</dd>
	        <dt><img src="__img__/faxs.png" /></dt><dd>Fax：{$sysconf['fax']}</dd>
	        <dt><img src="__img__/email.png" /></dt><dd>Email：{$sysconf['email']}</dd>
	        <dt style="border:0px;"><img src="__img__/addss.png" /></dt><dd style="border:0px;">Add：{$sysconf['address']}</dd>
	    </dl>
	</div>
</div>

  <div class="right">
    <div class="right_t"><strong>{$advan['topic']}</strong><span>当前位置 > <a href="{:U('index/index')}">首页</a> > {$advan['topic']}</span></div>
    <div class="right_con">{$advan['content']}</div>
  </div>
</div>
 
</block>