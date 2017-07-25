<extend name="Base/common" />
<block name="main">

<div class="pic_n"></div>
<div class="cut"></div>
<div class="main">
<div class="left_menu">
    <div class="left_menu_T"><dl><dd>关于我们</dd><dt>ABOUTUS</dt></dl></div>
    <div class="left_menu_D">
      <ul>
      	<volist name="about" id="aboutobj">
        	<li <if condition="$aboutobj['Id'] eq $id">class='left_ul_lis'<else />class='left_ul_li'</if>><a href="{:U('index/about','id='.$aboutobj['Id'])}">{$aboutobj['topic']}</a></li>
      	</volist>
      <li class='left_ul_li'><a href="{:U('index/picshow')}">公司相册</a></li>
      <li class='left_ul_li'><a href="{:U('index/feedback')}">在线留言</a></li>
      </ul>
    </div>
    <div class="tell_n">{$sysconf['tel']}</div>
    <div class="address">{$sysconf['address']}</div>
  </div>

  <div class="right">
    <div class="right_t"><strong>{$data['topic']}</strong><span>当前位置 > <a href="{:U('index/index')}">首页</a> > {$data['topic']}</span></div>
    <div class="right_con">{$data['content']}</div>
  </div>
</div>
 
</block>