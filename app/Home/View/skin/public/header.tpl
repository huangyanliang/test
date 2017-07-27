<!--<div class="top">
	<div class="main">
    <ul>
    <a href=""><li class="wb"></li></a><a href=""><li class="wx"></li></a><a href=""><li class="qq"></li></a>
    <a href="mailto:{$sysconf['email']}"><ol>{$sysconf['email']}</ol></a>
    </ul>
    <a href="{:U('index/index')}/?t=skin"><span><img src="__img__/ch.png" />中文</span></a>
    <a href="{:U('index/index')}/?t=en"><span><img src="__img__/en.png" />English</span></a>
    </div>
</div>-->
<div class="head">
    <div class="main">
    	<a href="{:U('index/index')}"><img src="__img__/txt-logo.png" /></a>
        <div class="top_r"><img src="__img__/tell.png" />服务热线/Service hotline<br><b>0795-4605136</b></div>
    </div>
</div>
<div class="nav"> 
	<ul>                                     
    <a href="{:U('index/index')}"><li <if condition="$mark eq 'index'">class="navs"</if>>网站首页</li></a>
    <a href="{:U('index/about','id=1')}"><li <if condition="$mark eq 'about'">class="navs"</if>>关于我们</li></a>
    <a href="{:U('index/prolist')}"><li <if condition="$mark eq 'product'">class="navs"</if>>产品中心</li></a>
    <a href="{:U('index/caselist')}"><li <if condition="$mark eq 'case'">class="navs"</if>>应用案例</li></a>
    <a href="{:U('index/newlist')}"><li <if condition="$mark eq 'new'">class="navs"</if>>新闻动态</li></a>
    <a href="{:U('index/about','id=2')}"><li <if condition="$mark eq 'abouts'">class="navs"</if>>服务支持</li></a>
    <a href="{:U('index/about','id=3')}"><li <if condition="$mark eq 'smyt'">class="navs"</if>>联系我们</li></a>
    <a href="http://www.taobao.com" target="_blank"><li>商城入口</li></a>
    </ul>
</div>