<extend name="Base/common" />
<block name="main">
	
    <div class="pic_n"></div>
    <div class="cut"></div>
    <div class="main">
    <div class="left_menu">
        <div class="left_menu_T"><b>PRODUCTS</b> / 产品中心</div>
        <div class="left_menu_D">
          <ul>
          <volist name="protype" id="protypeobj">
            <li <if condition="$protypeobj['Id'] eq $inftype">class='left_ul_lis'<else/>class='left_ul_li'</if>><a href="{:U('index/prolist','inftype='.$protypeobj['Id'])}">{$protypeobj['topic']}</a></li>
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
        <div class="right_t"><strong>{$metatitle}</strong><span>当前位置 > <a href="{:U('index/index')}">首页</a> > <a href="{:U('index/prolist')}">产品展示</a> > {$metatitle}</span></div>
        <div class="right_con" style="padding:6px;">
        <volist name="pro" id="proobj">
             <div class="boxss" style="margin:20px 0px 0px 20px;">
                <a href="{:U('index/proshow','id='.$proobj['Id'])}" title="{$proobj['topic']}"><img src="__pic__{$proobj['pic']}" width="250" height="190" alt="{$proobj['topic']}" />
                <div class="box_dds"><h3>{$proobj['topic']}</h3><span class="ell2">{$proobj['intro']}</span></div></a>
             </div>
        </volist>
        </div>
        <div class="jogger">{$page}</div>
      </div>
      
	</div>
    
</block>
<block name="foot"></block>