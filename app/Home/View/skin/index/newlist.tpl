<extend name="Base/common" />
<block name="main">
	
    <div class="pic_n"></div>
    <div class="cut"></div>
    <div class="main">
    <div class="left_menu">
        <div class="left_menu_T"><dl><dd>新闻动态</dd><dt>NEWS</dt></dl></div>
        <div class="left_menu_D">
          <ul>
          <volist name="newtype" id="newtypeobj">
            <li <if condition="$newtypeobj['Id'] eq $inftype">class='left_ul_lis'<else/>class='left_ul_li'</if>><a href="{:U('index/newlist','inftype='.$newtypeobj['Id'])}">{$newtypeobj['topic']}</a></li>
          </volist>
          </ul>
        </div>
        <div class="tell_n">{$sysconf['tel']}</div>
    	<div class="address">{$sysconf['address']}</div>
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