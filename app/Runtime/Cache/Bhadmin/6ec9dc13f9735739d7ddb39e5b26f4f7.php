<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <meta name="description" content="深海瑞格后台管理系统 v1.5.1.0">
 <meta name="keywords" content="深海瑞格后台管理系统 v1.5.1.0">
 <meta name="author" content="jxbh.cn">
 <title><?php echo ($title); ?></title>
 <link href="/fxcl/public/Bhadmin/css/bootstrap.min.css" rel="stylesheet">
 <link href="/fxcl/public/Bhadmin/css/alert.css" rel="stylesheet">
 <link href="/fxcl/public/Bhadmin/css/common.css" rel="stylesheet">
 <!--[if IE 8]>
 <link rel="stylesheet" type="text/css" href="/fxcl/public/Bhadmin/css/comie.css">
 <![endif]-->
 <!--[if IE 9]>
 <link rel="stylesheet" type="text/css" href="/fxcl/public/Bhadmin/css/comie.css">
 <![endif]-->
 <link href="../bhadmin/favicon.ico" rel="icon">
 <script src="/fxcl/public/Bhadmin/js/jquery.min.js" type="text/javascript"></script>
 <link href="/fxcl/public/Bhadmin/css/minimal/minimal.css" rel="stylesheet">
 <script src="/fxcl/public/Bhadmin/js/icheck.min.js" type="text/javascript"></script>
 
</head>
<body>

 <div class="pubmain">
 <h1>修改密码</h1>
 <form name="adminform" method="post" action="<?php echo U('index/modpass');?>" onSubmit="return modpass(document.adminform)">
 <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="<?php echo tabstyle();?>" style="margin:10px auto;">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">登录ID：</td>
    <td height="32" align="left"><input type="text" value="<?php echo cookie('adminuser');?>" name="user" disabled class="textlong"> <span class="text-warning"> * </span> <span class="u-result"></span> </td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">登录密码：</td>
     <td height="32" align="left"><input type="password" value="" name="pass" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">新密码：</td>
     <td height="32" align="left"><input type="password" value="" name="newpass" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">确认新密码：</td>
     <td height="32" align="left"><input type="password" value="" name="notpass" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;</td>
     <td height="32" align="left"><?php echo btn(array('vals'=>'修改密码','size'=>3,'type'=>'submit','icon'=>'edit','scene'=>'primary'));?></td>
   </tr>
 </table>
 </form>
 </div>
 <script>
 function modpass(td){
   if(td.pass.value.length<6){swal('请输入登录密码','不的少于6位','error');return false;}
   if(td.newpass.value.length<6){swal('请输入新密码','不的少于6位','error');return false;}
   if(td.newpass.value!=td.notpass.value){swal('密码与确认密码不一致','请重新输入','error');return false;}
 }
 </script>



 <script src="/fxcl/public/Bhadmin/js/bootstrap.min.js" type="text/javascript"></script>
 <script src="/fxcl/public/Bhadmin/js/alert.min.js" type="text/javascript"></script>
 <script src="/fxcl/public/Bhadmin/js/common.js" type="text/javascript"></script>
 <script src="/fxcl/public/Bhadmin/js/zoom.js" type="text/javascript"></script>
 <script src="/fxcl/public/Bhadmin/js/screenfull.min.js" type="text/javascript"></script>
 <?php if(isset($upload) && $upload){?>
 <script type="text/javascript" src="/fxcl/public/Bhadmin/uploadify/uploadify.js"></script>
 <?php }?>
 <?php if(isset($color) && $color){?>
 <script src="/fxcl/public/Bhadmin/js/color.js" type="text/javascript"></script>
 <link href="/fxcl/public/Bhadmin/css/color.css" rel="stylesheet">
 <script type="text/javascript">
  $(document).ready( function() {
	$('.colorselect').each( function() {
		$(this).minicolors({
			theme: 'bootstrap'
		});
	});
   });
 </script>
 <?php }?>
 <script type="text/javascript">
  var img     = '/fxcl/public/Bhadmin/images';
  var abspath = '/fxcl/index.php/Bhadmin';
  var upload  = '/fxcl/public/Bhadmin/uploadify';
  var upfile  = '/fxcl/uploads/';
  $(function () {
    $('[data-toggle="tooltip"]').tooltip({
      container : 'body',
	});
    $('[data-toggle="popover"]').popover();
	//实例化 icheckbox
	$('input').iCheck({
      checkboxClass: 'icheckbox_minimal',
      radioClass: 'iradio_minimal',
      increaseArea: '20%' // optional
    });
  });
 </script>
 <!--加载日期-->
 <?php if(isset($date) && $date){?>
 <script src="/fxcl/public/Bhadmin/js/datejs/WdatePicker.js" type="text/javascript"></script>
 <?php } ?>
 <!--结束-->
 <!--加载编辑器-->
 <?php if(isset($editor) && $editor){?>
 <link rel="stylesheet" href="/fxcl/public/kindedit/themes/default/default.css" />
 <link rel="stylesheet" href="/fxcl/public/kindedit/plugins/code/prettify.css" />
 <script charset="utf-8" src="/fxcl/public/kindedit/kindeditor.js" type="text/javascript"></script>
 <script charset="utf-8" src="/fxcl/public/kindedit/lang/zh_CN.js" type="text/javascript"></script>
 <script charset="utf-8" src="/fxcl/public/kindedit/plugins/code/prettify.js" type="text/javascript"></script>
 <script type="text/javascript">
	KindEditor.ready(function(K) {
		var editor1 = K.create('textarea[name="content"]', {
			cssPath : '/fxcl/public/kindedit/plugins/code/prettify.css',
			uploadJson : '/fxcl/public/kindedit/php/upload_json.php',
			//uploadJson : abspath+'/fileupload/kindupload',
			fileManagerJson : '/fxcl/public/kindedit/php/file_manager_json.php',
			allowFileManager : true,
			afterCreate : function() {
				var self = this;
				K.ctrl(document, 13, function() {
					self.sync();
					K('form[name=example]')[0].submit();
				});
				K.ctrl(self.edit.doc, 13, function() {
					self.sync();
					K('form[name=example]')[0].submit();
				});
			}
		});
		prettyPrint();
	});
	KindEditor.ready(function(J) {
		var editor2 = J.create('textarea[name="en_content"]', {
			cssPath : '/fxcl/public/kindedit/plugins/code/prettify.css',
			uploadJson : '/fxcl/public/kindedit/php/upload_json.php',
			//uploadJson : abspath+'/fileupload/kindupload',
			fileManagerJson : '/fxcl/public/kindedit/php/file_manager_json.php',
			allowFileManager : true,
			afterCreate : function() {
				var self = this;
				J.ctrl(document, 13, function() {
					self.sync();
					J('form[name=example]')[0].submit();
				});
				J.ctrl(self.edit.doc, 13, function() {
					self.sync();
					J('form[name=example]')[0].submit();
				});
			}
		});
		prettyPrint();
	});
 </script>
 <?php }?>
 <!--结束-->

</body>
</html>