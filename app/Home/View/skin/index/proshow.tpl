<extend name="Base/common" />
<block name="main">
	
    <div class="pic_n"></div>
    <div class="cut"></div>
    <div class="main">
    <div class="left_menu">
        <div class="left_menu_T"><dl><dd>产品展示</dd><dt>PRODUCTS</dt></dl></div>
        <div class="left_menu_D">
          <ul>
          <volist name="protype" id="protypeobj">
            <li <if condition="$protypeobj['Id'] eq $data['inftype']">class='left_ul_lis'<else/>class='left_ul_li'</if>><a href="{:U('index/prolist','inftype='.$protypeobj['Id'])}">{$protypeobj['topic']}</a></li>
          </volist>
          </ul>
        </div>
        <div class="tell_n">{$sysconf['tel']}</div>
    	<div class="address">{$sysconf['address']}</div>
      </div>
    
      <div class="right">
        <div class="right_t"><strong>{$metatitle}</strong><span>当前位置 > <a href="{:U('index/index')}">首页</a> > <a href="{:U('index/prolist')}">产品展示</a> > <a href="{:U('index/prolist','inftype='.$data['inftype'])}">{$metatitle}</a></span></div>
        <div class="right_con">
        	<div class="right_cons">
            	<img src="__pic__/{$data['pic']}" width="259" height="195" />
            	<h3>{$data['topic']}</h3>
                <p>{$data['intro']}</p>
            </div>
     		<div class="xxjs"><span>详细介绍</span></div>
   			{$data['content']}
      	</div>
      </div>
      
	</div>
    
</block>
<block name="foot"></block>