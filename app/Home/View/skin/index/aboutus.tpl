<extend name="Base/common" />
<block name="main">

<div class="pic_n"></div>
<div class="cut"></div>
<div class="main">
<div class="left_menu">
    <div class="left_menu_T"><b>ABOUT US</b> / 关于我们</div>
    <div class="left_menu_D">
      <ul>
      	<volist name="about" id="aboutobj">
        	<li <if condition="$aboutobj['Id'] eq $id">class='left_ul_lis'<else />class='left_ul_li'</if>><a href="{:U('index/about','id='.$aboutobj['Id'])}">{$aboutobj['topic']}</a></li>
      	</volist>
      <li class='left_ul_li'><a href="{:U('index/feedback')}">在线留言</a></li>
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
    <div class="right_t"><strong>{$data['topic']}</strong><span>当前位置 > <a href="{:U('index/index')}">首页</a> > {$data['topic']}</span></div>
    <div class="right_con">{$data['content']}</div>
  </div>
</div>
 
</block>