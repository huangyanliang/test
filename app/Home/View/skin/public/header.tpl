<div class="head">
    <div class="main">
    	<a href="{:U('index/index')}"><img src="__img__/txt-logo.png" /></a>
        <div class="top_r"><img src="__img__/tell.png" />服务热线/Service hotline<br><b>{$sysconf['tel']}</b></div>
    </div>
</div>
<div class="nav"> 
	<ul>                                     
    <li <if condition="$mark eq 'index'">class="navs"</if>><a href="{:U('index/index')}">首页</a></li>
    <li <if condition="$mark eq 'product'">class="navs"</if>><a href="{:U('index/prolist')}">产品</a>
    	<div class="navShow">
    		<div id="navShow_l">
    			<volist name="protypeNav" id="proobj">
		        	<a href="{:U('index/prolist','inftype='.$proobj['Id'])}">{$proobj['topic']}</a>
		        </volist>
    		</div>
    		<div id="navShow_r">
    			<volist name="proTop" id="proTops" offset="0" length="1">
			      <dl>
			        <dt><a href="{:U('index/proshow','id='.$proTops['Id'])}"><img src="__pic__{$proTops['pic']}"/></a></dt>
			        <dd><a href="{:U('index/proshow','id='.$proTops['Id'])}">{$proTops['topic']}</a></dd>
			      </dl>
			    </volist>
    		</div>
    	</div>
    </li>
    <li <if condition="$mark eq 'program'">class="navs"</if>><a href="{:U('index/programlist')}">方案</a>
    	<div class="navShow">
    		<div id="navShow_l">
    			<volist name="programNav" id="programobj">
		        	<a href="{:U('index/programlist','inftype='.$programobj['Id'])}">{$programobj['topic']}</a>
		        </volist>
    		</div>
    		<div id="navShow_r">
    			<volist name="programTop" id="programTops" offset="0" length="1">
			      <dl>
			        <dt><a href="{:U('index/programshow','id='.$programTops['Id'])}"><img src="__pic__{$programTops['pic']}"/></a></dt>
			        <dd><a href="{:U('index/programshow','id='.$programTops['Id'])}">{$programTops['topic']}</a></dd>
			      </dl>
			    </volist>
    		</div>
    	</div>
    </li>
    <li <if condition="$mark eq 'advantage'">class="navs"</if>><a href="{:U('index/advantage','id=1')}">服务</a>
    	<div class="navShow">
    		<div id="navShow_l">
    			<volist name="advanNav" id="advanobj">
		        	<a href="{:U('index/advantage','id='.$advanobj['Id'])}">{$advanobj['topic']}</a>
		        </volist>
    		</div>
    		<div id="navShow_r">
    			<volist name="advanTop" id="advanTops" offset="0" length="1">
			      <dl>
			        <dt><a href="{:U('index/advantage','id='.$advanTops['Id'])}"><img src="__pic__{$advanTops['pic']}"/></a></dt>
			        <dd><a href="{:U('index/advantage','id='.$advanTops['Id'])}">{$advanTops['topic']}</a></dd>
			      </dl>
			    </volist>
    		</div>
    	</div>
    </li>
    <!--<li <if condition="$mark eq 'case'">class="navs"</if>><a href="{:U('index/caselist')}">案例</a>
    	<div class="navShow">
    		<div id="navShow_l">
    			<volist name="caseNav" id="caseNavs">
		        	<a href="{:U('index/caselist','inftype='.$caseNavs['Id'])}">{$caseNavs['topic']}</a>
		        </volist>
    		</div>
    		<div id="navShow_r">
    			<volist name="caseTop" id="caseTops" offset="0" length="1">
			      <dl>
			        <dt><a href="{:U('index/caseshow','id='.$caseTops['Id'])}"><img src="__pic__{$caseTops['pic']}"/></a></dt>
			        <dd><a href="{:U('index/caseshow','id='.$caseTops['Id'])}">{$caseTops['topic']}</a></dd>
			      </dl>
			    </volist>
    		</div>
    	</div>
    </li>-->
    <li <if condition="$mark eq 'new'">class="navs"</if>><a href="{:U('index/newlist')}">动态</a>
    	<div class="navShow">
    		<div id="navShow_l">
    			<volist name="newNav" id="newNavs">
		        	<a href="{:U('index/newlist','inftype='.$newNavs['Id'])}">{$newNavs['topic']}</a>
		        </volist>
    		</div>
    		<div id="navShow_r">
    			<volist name="newTop" id="newTops" offset="0" length="1">
			      <dl>
			        <dt><a href="{:U('index/new','id='.$newTops['Id'])}"><img src="__pic__{$newTops['pic']}"/></a></dt>
			        <dd><a href="{:U('index/new','id='.$newTops['Id'])}">{$newTops['topic']}</a></dd>
			      </dl>
			    </volist>
    		</div>
    	</div>
    </li>
    <li <if condition="$mark eq 'about'">class="navs"</if>><a href="{:U('index/about','id=1')}">关于我们</a>
    	<div class="navShow">
    		<div id="navShow_l">
    			<volist name="aboutNav" id="aboutNavs">
		        	<a href="{:U('index/about','id='.$aboutNavs['Id'])}">{$aboutNavs['topic']}</a>
		        </volist>
    		</div>
    		<div id="navShow_r">
    			<volist name="aboutNav" id="aboutTops" offset="0" length="1">
			      <dl>
			        <dt><a href="{:U('index/about','id='.$aboutTops['Id'])}"><img src="__pic__{$aboutTops['pic']}"/></a></dt>
			        <dd><a href="{:U('index/about','id='.$aboutTops['Id'])}">{$aboutTops['topic']}</a></dd>
			      </dl>
			    </volist>
    		</div>
    	</div>
    </li>
    <li><a href="http://www.taobao.com" target="_blank">商城入口</a></li>
    </ul>
</div>