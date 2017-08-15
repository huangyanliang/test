<div class="bg_d">
	<div class="main" style="height:290px">
    	<div class="bg_d_l">
 			<dl>
 				<dt>产品</dt>
 				<volist name="protypeNav" id="protypeobj">
		        	<dd><a href="{:U('index/prolist','inftype='.$protypeobj['Id'])}">{$protypeobj['topic']}</a></dd>
		        </volist>

 			</dl>
 			<dl>
 				<dt>方案</dt>
 				<volist name="programNav" id="programobj">
		        	<dd><a href="{:U('index/program','inftype='.$programobj['Id'])}">{$programobj['topic']}</a></dd>
		       </volist>
 			</dl>
 			<dl>
 				<dt>服务</dt>
 				<volist name="advanNav" id="advanobj">
		        	<dd><a href="{:U('index/advantage','id='.$advanobj['Id'])}">{$advanobj['topic']}</a></dd>
		        </volist>
 			</dl>
 			<dl>
 				<dt>案例</dt>
 				<volist name="caseNav" id="casetypeobj">
		            <dd><a href="{:U('index/caselist','inftype='.$casetypeobj['Id'])}">{$casetypeobj['topic']}</a></dd>
		        </volist>
 			</dl>
 			<dl>
 				<dt>动态</dt>
 				<volist name="newNav" id="newtypeobj">
		            <dd><a href="{:U('index/newlist','inftype='.$newtypeobj['Id'])}">{$newtypeobj['topic']}</a></dd>
		        </volist>
 			</dl>
 			<dl>
 				<dt>关于我们</dt>
 				<volist name="aboutNav" id="aboutobj">
		        	<dd><a href="{:U('index/about','id='.$aboutobj['Id'])}">{$aboutobj['topic']}</a></dd>
		      	</volist>
		      	<dd><a href="{:U('index/feedback')}">在线留言</a></dd>
 			</dl>
        </div>
        
        <div class="bg_d_r">
        	<div class="map"><img src="__img__/ewm.png" width="100%" ></div>
	        <div class="feed_t"><b>CONTACT US</b> / 联系我们</div>
	        <dl>
	          <dt><img src="__img__/phone.png" /></dt><dd>Tel：{$sysconf['tel']}</dd>
	          <dt><img src="__img__/fax.png" /></dt><dd>Fax：{$sysconf['fax']}</dd>
	          <dt><img src="__img__/em.png" /></dt><dd>Email：{$sysconf['email']}</dd>
	          <dt style="border:0px;"><img src="__img__/adds.png" /></dt><dd style="border:0px;">Add：{$sysconf['address']}</dd>
	        </dl>
        </div>
    </div>
    <div class="footer"><p>All Rights Reserved 版权所有：{$sysconf['companyname']}　{$sysconf['icpnote']}</div>
</div>
<block name="foot"></block>