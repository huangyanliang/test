<extend name="Base/common" />
<block name="main">
<div class="pic_n"></div>
<div class="main">
<div class="left_menu">
    <div class="left_menu_T"><b>ABOUT US</b> / 关于我们</div>
    <div class="left_menu_D">
      <ul>
      	<volist name="about" id="aboutobj">
        	<li class='left_ul_li'><a href="{:U('index/about','id='.$aboutobj['Id'])}">{$aboutobj['topic']}</a></li>
      	</volist>
      <li class='left_ul_lis'><a href="{:U('index/feedback')}">在线留言</a></li>
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
    <div class="right_t"><strong>在线留言</strong><span>当前位置 > <a href="{:U('index/index')}">首页</a> > 在线留言</span></div>
    <div class="right_con">
		<div class="feedback">
		<form action="" method="post" name="form" id="form1" onSubmit="return check()">
		<div class="t12t">
		<span>您的姓名：</span><input name="user" type="text" size="35" class="texts" />
		<span class="cr"> *</span>
		</div>
        	
		<div class="t12t">
		<span>联系方式：</span><input name="tel" type="text" onKeyPress="if (event.keyCode &lt; 45 || event.keyCode &gt; 57) event.returnValue = false;" size="35" class="texts" />
		<span class="cr"> * </span>
		</div>
        
        <div class="t12t">
		<span>电子邮箱：</span><input name="email" type="text" size="35" class="texts" />
		<span class="cr"> * </span>
		</div>
        
        <div class="t12t" style="width:700px;">
            <span>留言标题：</span><input name="topic" type="text" size="65" class="text_l" />
            <span class="cr"> * </span>
		</div>
		<div class="t12t" style="width:700px;">
		<span style="float:left;">评价内容：</span><textarea name="content" cols="50" rows="7" class="textarea"></textarea>
		</div>
		<div class="t12t">
		<span>　验证码：</span><input type="text" value="" class="getcode" name="checkcode" maxlength="5" autocomplete="off" /> <span id="checkid" onClick="gcode()">点击获取验证码</span>
		</div>
		<div class="t12t lh140 cz1" style="width:90%;padding:5px;">
		<input type="submit" name="send" value="提交" class="posts" />
		</div>
		</form>
		</div>
	<script type="text/jscript">  
      function check(){
          var th=document.form;
          if(th.user.value==""){alert('请输入您的姓名!');th.user.focus();return false;}
          if(th.tel.value==""){alert('请输入联系方式!');th.tel.focus();return false;}
          if(th.email.value.length!=0){   
             if(th.email.value.charAt(0)=="."   ||                   
                th.email.value.charAt(0)=="@"||                 
                th.email.value.indexOf('@',   0)   ==   -1   ||     
                th.email.value.indexOf('.',   0)   ==   -1   ||     
                th.email.value.lastIndexOf("@")==th.email.value.length-1   ||     
                th.email.value.lastIndexOf(".")==th.email.value.length-1){   
                   alert("Email地址格式不正确！");   
                   th.email.focus();   
                   return false;   
             }   
           }else{   
                alert("Email不能为空！");   
                th.email.focus();   
                return false;   
           } 
		   if (th.checkcode.value == '' || th.checkcode.value.length!=5) {
		     alert('验证码有误，请重新输入');
			 th.checkcode.focus();
			 return false;
		   }
    }      
     //更新验证码
    function gcode() {
        var files = think+"/index/code";
        $("#checkid").html('<img src="'+files+'?t='+Math.random()+'" alt="点击刷新验证码" style="cursor:pointer;border:0;vertical-align:middle;height:20px;margin:2px 0 0 0;" onclick="this.src=\''+files+'?t=\'+Math.random()" />');
     }
    gcode();
    </script>
    </div>
  </div>
</div>
 
</block>