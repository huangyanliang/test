<extend name="Base/common" />
<block name="main">

<div class="pic_n"></div>
<div class="cut"></div>
<div class="main">
<div class="left_menu">
    <div class="left_menu_T"><dl><dd>企业优势</dd><dt>ADVANTAGE</dt></dl></div>
    <div class="left_menu_D">
      <ul>
      	<volist name="about" id="aboutobj">
        	<li <if condition="$aboutobj['Id'] eq $id">class='left_ul_lis'<else />class='left_ul_li'</if>><a href="{:U('index/advan','id='.$aboutobj['Id'])}">{$aboutobj['topic']}</a></li>
      	</volist>
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