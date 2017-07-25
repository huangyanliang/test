<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>{$msgTitle}</title>
<link rel="stylesheet" href="__css__/common.css">
</head>
<body>

<div class="error-div">
 <?php if (!$status) { ?>
   <div class="error-icon"><img src="__img__/error-icon.jpg"></div>
   <div class="error-tips">{$error}</div>
 <?php }else{ ?>
   <div class="error-icon"><img src="__img__/success-icon.jpg"></div>
   <div class="error-tips">{$message}</div>
 <?php }?>
 <div class="error-time"><span id="wait">{$waitSecond}</span> 秒之后页面自动<a id="href" href="{$jumpUrl}">跳转</a>，您还可以：</div>
 <div class="error-switch1"><a href="{:U('index/index')}">1) 返回首页</a></div>
 <div class="error-switch2"><a href="javascript:history.back(-1)">2) 返回上一页</a></div>
 <a href="{:U('index/index')}"><div class="error-close">&times;</div></a>
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