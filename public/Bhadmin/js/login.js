// JavaScript Document
$(document).ready(function(e) {
  var h = parseInt(parseInt($(document).height()-449)/2);
  $(".login").css("margin-top",h+"px");
});
function gcode() {
	var files = "include/checkcode.php";
	if(G("checkid")) G("checkid").innerHTML = '<img src="'+files+'?t='+Math.random()+'" alt="点击刷新验证码" style="cursor:pointer;border:0;vertical-align:middle;height:20px;margin:0px 0 0 0;" onclick="this.src=\''+files+'?t=\'+Math.random()" />';
}
function ckbhadmin(){
  var th = document.bhadmin;
  var show = document.getElementById("showerror");
  if(th.username.value==""){show.style.backgroundImage = "url(./images/exclamation.png)";show.innerHTML = "<font color='#f05458'>请输入用户名!</font>";th.username.focus(); return false;}
  if(th.userpass.value==""){show.style.backgroundImage = "url(./images/exclamation.png)";show.innerHTML = "<font color='#f05458'>请输入密码!</font>";th.userpass.focus();return false;}
  if(th.checkcode.value==""){show.style.backgroundImage = "url(./images/exclamation.png)";show.innerHTML = "<font color='#f05458'>请输入验证码!</font>";th.checkcode.focus();  return false;}
  show.style.backgroundImage = "url(./images/loadingSmall.gif)";
  show.innerHTML = "<font color='#ffffff'>&nbsp;&nbsp;系统正在验证中....</font>";
   ajax({
		method : 'post',
		url : 'bhajax/admin.php',
		data : {
			'user' : th.username.value,
			'pass' : th.userpass.value,
			'code' : th.checkcode.value,
			'act' : 'login'
		},
		success : function (text) {
		  if(text!=1){	
		    show.style.backgroundImage = "url(./images/exclamation.png)";
		    show.innerHTML = "<font color='#f05458'>"+text+"</font>";	
			gcode();
		  }else{
		    window.location.href='index.php';
		  }
		},
		async : true
	 });
  return false; 
}