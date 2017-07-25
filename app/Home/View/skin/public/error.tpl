<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>系统发生错误</title>
<style>
body,div,a{font-size:12px; margin:0px; padding:0px;}
a{border:none;text-decoration:none;}
.error-div{ width:800px; height:460px; background:#fafafa; position:fixed; top:50%; left:50%; margin:-230px 0 0 -400px; font-family:"微软雅黑"; overflow:hidden; border:dashed 2px #ddd;}
.error-div .error-icon{ text-align:center; margin:30px auto 10px auto;}
.error-div .error-tips{ text-align:center; height:30px; line-height:30px; color:#f37873; font-size:14px;}
.error-div .error-tips img{ position:relative; top:20px;}
.error-div .error-time{ margin:10px auto 10px auto;text-align:center;color:#adadb0;}
.error-div .error-time span{ color:#f2a1a0;}
.error-div .error-time a{color:#adadb0;}
.error-div .error-switch1,.error-div .error-switch2{ height:35px; line-height:35px;text-align:center;}
.error-switch1 a,.error-switch2 a{ color:#f2a1a0;}
.error-div a:hover{color:#f37873;}
.error-div .error-close{ font-size:23px; position:absolute; top:8px; right:12px; color:#adadb0; cursor:pointer;}
</style>
</head>
<body>

<div class="error-div">
 <div class="error-icon"><img src="<?php echo __ROOT__.'/public/home/images/';?>error-icon.jpg"></div>
 <div class="error-tips"><?php echo strip_tags($e['message']);?></div>
 <div class="error-time"><span id="wait">3</span> 秒之后页面自动<a id="href" href="<?php echo U('index/index')?>">跳转</a>，您还可以：</div>
 <div class="error-switch1"><a href="<?php echo U('index/index')?>">1) 返回首页</a></div>
 <div class="error-switch2"><a href="javascript:history.back(-1)">2) 返回上一页</a></div>
 <a href="<?php echo U('index/index')?>"><div class="error-close">&times;</div></a>
</div>

<script type="text/javascript">
(function(){
	var wait = document.getElementById('wait'),href = document.getElementById('href').href;
	var interval = setInterval(function(){
		var time = --wait.innerHTML;
		if(time <= 0) {
			location.href = href;
			clearInterval(interval);
		};
	}, 1000);
})();
</script>
</body>
</html>