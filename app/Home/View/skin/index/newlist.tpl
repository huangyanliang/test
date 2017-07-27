<extend name="Base/common" />
<block name="main">
	
    <div class="pic_n"></div>
    <div class="cut"></div>
    <div class="main">
    <div class="left_menu">
        <div class="left_menu_T"><b>NEWS</b> / 新闻动态</div>
        <div class="left_menu_D">
          <ul>
          <volist name="newtype" id="newtypeobj">
            <li <if condition="$newtypeobj['Id'] eq $inftype">class='left_ul_lis'<else/>class='left_ul_li'</if>><a href="{:U('index/newlist','inftype='.$newtypeobj['Id'])}">{$newtypeobj['topic']}</a></li>
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
        <div class="right_t"><strong>{$metatitle}</strong><span>当前位置 > <a href="{:U('index/index')}">首页</a> > <a href="{:U('index/newlist')}">新闻动态</a> > {$metatitle}</span></div>
        <ul class="new_ul">
        <volist name="new" id="newobj">
			<li><a href="{:U('index/news','id='.$newobj['Id'])}">{$newobj['topic']}</a><span>[<?php echo date('Y-m-d',strtotime($newobj['date']));?>]</span></li>
        </volist>
        </ul>
        <div class="jogger">{$page}</div>    
      </div>
      
	</div>
    
</block>
<block name="foot"></block>