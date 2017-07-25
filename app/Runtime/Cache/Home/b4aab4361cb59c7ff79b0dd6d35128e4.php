<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><?php echo ($msgTitle); ?></title>
<link rel="stylesheet" href="/fxcl/public/Home/css/common.css">
</head>
<body>

<div class="error-div">
 <?php if (!$status) { ?>
   <div class="error-icon"><img src="/fxcl/public/Home/images/error-icon.jpg"></div>
   <div class="error-tips"><?php echo ($error); ?></div>
 <?php }else{ ?>
   <div class="error-icon"><img src="/fxcl/public/Home/images/success-icon.jpg"></div>
   <div class="error-tips"><?php echo ($message); ?></div>
 <?php }?>
 <div class="error-time"><span id="wait"><?php echo ($waitSecond); ?></span> 秒之后页面自动<a id="href" href="<?php echo ($jumpUrl); ?>">跳转</a>，您还可以：</div>
 <div class="error-switch1"><a href="<?php echo U('index/index');?>">1) 返回首页</a></div>
 <div class="error-switch2"><a href="javascript:history.back(-1)">2) 返回上一页</a></div>
 <a href="<?php echo U('index/index');?>"><div class="error-close">&times;</div></a>
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