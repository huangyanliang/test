<extend name="Base/common" />
<block name="main">
	
    <div class="pic_n"></div>
    <div class="cut"></div>
    <div class="main">
    <div class="left_menu">
        <div class="left_menu_T"><b>CASE</b> / 应用案例</div>
        <div class="left_menu_D">
          <ul>
          <volist name="casetype" id="casetypeobj">
            <li <if condition="$casetypeobj['Id'] eq $data['inftype']">class='left_ul_lis'<else/>class='left_ul_li'</if>><a href="{:U('index/caselist','inftype='.$casetypeobj['Id'])}">{$casetypeobj['topic']}</a></li>
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
        <div class="right_t"><strong>{$metatitle}</strong><span>当前位置 > <a href="{:U('index/index')}">首页</a> > <a href="{:U('index/caselist')}">应用案例</a> > <a href="{:U('index/caselist','inftype='.$data['inftype'])}">{$metatitle}</a></span></div>
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