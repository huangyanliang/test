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
        	<li class='left_ul_li'><a href="{:U('index/about','id='.$aboutobj['Id'])}">{$aboutobj['topic']}</a></li>
      	</volist>
      <li class='left_ul_lis'><a href="{:U('index/picshow')}">公司相册</a></li>
      <li class='left_ul_li'><a href="{:U('index/feedback')}">在线留言</a></li>
      </ul>
    </div>
    <div class="tell_n">{$sysconf['tel']}</div>
    <div class="address">{$sysconf['address']}</div>
  </div>
  <script src="__js__/prototype.js" type="text/javascript"></script>
  <script src="__js__/scriptaculous.js?load=effects" type="text/javascript"></script>
  <script src="__js__/lightbox.js" type="text/javascript"></script>
  <link rel="stylesheet" href="__css__/lightbox.css" type="text/css" media="screen" />
  <div class="right">
    <div class="right_t"><strong>公司相册</strong><span>当前位置 > <a href="{:U('index/index')}">首页</a> > 公司相册</span></div>
    <div class="right_con">
    <volist name="picshow" id="piclist">
          <a href="__pic__{$piclist['pic']}" rel="lightbox[plants]" title="{$piclist['topic']}">
          <div class="picshow" >
            <img src="__pic__{$piclist['pic']}" width="260" height="190" alt="{$piclist['topic']}" />
            <span>{$piclist['topic']}</span>
          </div>
          </a>
    </volist>
    </div>
    <div class="jogger">{$page}</div>
  </div>
  
</div>
 
</block>