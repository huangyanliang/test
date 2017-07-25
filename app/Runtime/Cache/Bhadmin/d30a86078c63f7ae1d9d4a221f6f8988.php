<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-CN">
<head>
 <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <meta name="description" content="百恒科技后台管理系统 v1.5.1">
 <meta name="keywords" content="百恒科技后台管理系统 v1.5.1">
 <meta name="author" content="jxbh">
 <title>系统提示-深海瑞格</title>
 <link href="/fxcl/public/Bhadmin/css/bootstrap.min.css" rel="stylesheet">
 <style>
   body{ padding:0; margin:0;}
   .tips{ width:99%; height:350px; margin:0px auto; overflow:hidden; font-family:"微软雅黑";}
   .tips h1{ height:50px; line-height:50px; font-size:16px; font-weight:normal; color:#626262; border-bottom:solid 1px #ddd; text-indent:5px; margin:0 0 10px 0;}
   .tips_icon{ width:50px; height:35px; line-height:35px; float:left; color:#0275c8;}
   .tips_icon span{ font-size:34px; font-weight:normal;}
   .tips .tips_div{ width:600px; height:200px; float:left; overflow:hidden;}
   .tips .tips_div p{ line-height:20px; color:#666;}
   .tips .tips_div p a{ color:#666;}
   .tips .tips_div p span{ color:#f05458; font-size:16px;}
   .tips .tips_div p.tips_p{ color:#0275c8; font-size:15px;}
   .tips .back{ clear:both; height:60px; line-height:60px; width:100%;}
   .tips .back div{ float:right; color:#5ab8fe; border-right:solid 2px #5ab8fe; border-bottom:solid 2px #5ab8fe; width:100px; text-align:center; cursor:pointer;}
 </style>
</head>
<body>
<div class="tips">
  <h1>信息提示</h1> 
  <!--<div class="tips_icon"></div>-->
  <div class="tips_div">
   <?php if($status){ ?>
   <p class="tips_p"><?php echo $message;?></p>
   <?php }else{?>
   <p class="tips_p"><?php echo $error;?></p>
   <?php }?>
   <p>如果您不做出选择，<span id="wait"><?php echo $waitSecond;?></span> 秒后<a href="<?php echo $jumpUrl;?>" id="href">跳转</a>到指定链接地址</p>
  </div>
  <div class="back">
   <div onClick="history.back(-1);">返回上一页</div>
  </div>
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