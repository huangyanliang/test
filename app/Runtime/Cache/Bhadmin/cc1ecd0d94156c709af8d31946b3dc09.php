<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <meta name="description" content="百恒科技后台管理系统 v1.5.1.0">
 <meta name="keywords" content="百恒科技后台管理系统 v1.5.1.0">
 <meta name="author" content="jxbh">
 <title>登录后台管理</title>
</head>
<body>
<style>
 body{ font-size:12px;margin:0; padding:0; background:url(/fxcl/public/Bhadmin/images/adminbg.jpg) no-repeat top center;}
 div{margin:0; padding:0;}
 .login{ width:494px; height:449px; background:url(/fxcl/public/Bhadmin/images/login.png) no-repeat center center; margin:12% auto 0px auto; overflow:hidden; }
 .login_logo{ width:291px; height:46px; margin:56px auto 10px auto;}
 .user_input{ width:330px; height:59px; margin:10px auto 0px auto; overflow:hidden;}
 .user_input input{width:277px; height:59px; padding-left:53px; color:#fff;background:url(/fxcl/public/Bhadmin/images/login_bg.png) no-repeat 0 -118px ; border:none;font-family:"微软雅黑"; line-height:59px; outline:none;}
 .user_input input:focus{background:url(/fxcl/public/Bhadmin/images/login_bg.png) no-repeat 0 -59px ;} 
 .pass_input{ width:330px; height:59px; margin:10px auto 0px auto; overflow:hidden;}
 .pass_input input{width:277px; height:59px; padding-left:53px; color:#fff;background:url(/fxcl/public/Bhadmin/images/login_bg.png) no-repeat 0 -177px ; border:none;font-family:"微软雅黑"; line-height:59px; outline:none;}
 .pass_input input:focus{background:url(/fxcl/public/Bhadmin/images/login_bg.png) no-repeat 0 0px ;} 
 .code_input{ width:330px; height:59px; margin:10px auto 0px auto; overflow:hidden;}
 .code_input input{width:124px; height:59px; padding-left:53px; color:#fff;background:url(/fxcl/public/Bhadmin/images/login_bg.png) no-repeat 0 -236px ; border:none;font-family:"微软雅黑"; float:left; line-height:59px; outline:none;}
 .code_input input:focus{background:url(/fxcl/public/Bhadmin/images/login_bg.png) no-repeat 0 -295px ;} 
 .sub_btn{ width:318px; height:48px; margin:15px auto 0px auto; overflow:hidden;}
 .sub_btn input{ background:url(/fxcl/public/Bhadmin/images/login_btn.png) no-repeat 0 0; overflow:hidden; height:48px; width:318px; border:none; cursor:pointer;}
 #checkid{ width:140px; height:46px; cursor:pointer; background:#fff; display:block; float:right; margin:4px 10px 0 0; line-height:46px; text-align:center; border-radius:2px; color:#666;font-family:"微软雅黑"; opacity:0.6;}
 #checkid:hover{opacity:1;}
 #showerror{height:17px;line-height:17px;text-indent:22px;background:no-repeat left center;width:310px; margin:0px auto;font-family:"微软雅黑";color:#f05458;}
 .browser{ width:auto; height:35px; line-height:35px; background:#2a2a32; border-bottom:solid 1px #645b4a; color:#fff; text-align:center;}
 .browser img{ vertical-align:middle; margin:0 4px 0 0;}
 .browser a{ color:#f05458; font-weight:bold;}
</style>
<body>
<!--[if IE 8]>
 <div class="browser"><img src="/fxcl/public/Bhadmin/images/exclamation.png" />&nbsp;您的浏览器版本过低，请升级您的浏览器，建议您升级成ie9,或以上版本。否则部分功能将失效，点击 <a href="http://windows.microsoft.com/zh-cn/internet-explorer/download-ie-MCM?FORM=MI09JG&OCID=MI09JG" target="_blank">去升级</a> 吧</div>
<![endif]-->
<!--[if IE 7]>
 <div class="browser"><img src="/fxcl/public/Bhadmin/images/exclamation.png" />&nbsp;您的浏览器版本过低，请升级您的浏览器，建议您升级成ie9,或以上版本。否则部分功能将失效，点击 <a href="http://windows.microsoft.com/zh-cn/internet-explorer/download-ie-MCM?FORM=MI09JG&OCID=MI09JG" target="_blank">去升级</a> 吧</div>
<![endif]-->
<!--[if IE 6]>
 <div class="browser"><img src="/fxcl/public/Bhadmin/images/exclamation.png" />&nbsp;您的浏览器版本过低，请升级您的浏览器，建议您升级成ie9,或以上版本。否则部分功能将失效，点击 <a href="http://windows.microsoft.com/zh-cn/internet-explorer/download-ie-MCM?FORM=MI09JG&OCID=MI09JG" target="_blank">去升级</a> 吧</div>
<![endif]-->
<form name="bhadmin" method="post" action="">
<div class="login">
 <div class="login_logo"><img src="/fxcl/public/Bhadmin/images/login_logo.png" /></div> 
 <div id="showerror"> </div>
 <div class="user_input"><input type="text" value="" name="username" autocomplete="off" /></div>
 <div class="pass_input"><input type="password" value="" name="userpass" autocomplete="off" /></div>
 <div class="code_input"><input type="text" value="" name="checkcode" maxlength="5" autocomplete="off" /><span id="checkid" onClick="gcode()">点击获取验证码</span></div>
 <div class="sub_btn"><input type="submit" value="" name="sends" onClick="return ckbhadmin()"></div>
</div>
</form>
<script type="text/javascript" src="/fxcl/public/Bhadmin/js/jquery.min.js"></script>
<script type="text/javascript" src="/fxcl/public/Bhadmin/js/common.js"></script>
<script>
 var thinks = {
	'module' : '/fxcl/index.php/Bhadmin',
 };
 //验证用户和密码
 function ckbhadmin(){
   var td = document.bhadmin;
   if(td.username.value==''){
     $("#showerror").css("background-image","url(/fxcl/public/Bhadmin/images/exclamation.png)").text('请先输入您的后台用户名');
	 td.username.focus();
	 return false;
   }
   if(td.userpass.value==''){
     $("#showerror").css("background-image","url(/fxcl/public/Bhadmin/images/exclamation.png)").text('请输入后台登录密码');
	 td.userpass.focus();
	 return false;
   }
   if(td.checkcode.value.length!=5){
     $("#showerror").css("background-image","url(/fxcl/public/Bhadmin/images/exclamation.png)").text('请输入后台验证码');
	 td.checkcode.focus();
	 return false;
   }
   //验证中..
   $("#showerror").css("background-image","url(/fxcl/public/Bhadmin/images/loadingSmall.gif)").html('<font color="#ffffff">请输入后台验证码</font>');
   ajax({
		method : 'post',
		url : thinks['module']+'/index/checklogin',
		data : {
			'user' : td.username.value,
			'pass' : td.userpass.value,
			'code' : td.checkcode.value
		},
		success : function (data) {
		  var loginTips = '';
		  if(data==1){	
		    window.location.href = thinks['module']+'/index/';
		  }else if(data==0){
		    loginTips = '登录失败，请重试';
		  }else if(data==2){
		    loginTips = '用户名或密码有误';
		  }else if(data==3){
		    loginTips = '验证码有误，请重新输入';
		  }else if(data==4){
		    loginTips = '资料为提交完全，请重新提交';
		  }else{
		    loginTips = data;
		  }
		  (loginTips!='') ? $("#showerror").css("background-image","url(/fxcl/public/Bhadmin/images/exclamation.png)").text(loginTips) : '';
		},
		async : true
	 });
   return false;
 }
 //更新验证码
 function gcode() {
	var files = thinks['module']+"/index/logincode";
	if(G("checkid")) G("checkid").innerHTML = '<img src="'+files+'?t='+Math.random()+'" alt="点击刷新验证码" style="cursor:pointer;border:0;vertical-align:middle;height:20px;margin:2px 0 0 0;" onclick="this.src=\''+files+'?t=\'+Math.random()" />';
 }
 gcode();
 //兼容
 $(".login").css("margin-top",parseInt($(window).height()-449)/2+'px');
</script>
</body>
</html>