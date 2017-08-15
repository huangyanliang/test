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
 <link href="/fxcl/public/Admin/css/bootstrap.min.css" rel="stylesheet">
 <link href="/fxcl/public/Admin/css/alert.css" rel="stylesheet">
 <link href="/fxcl/public/Admin/css/common.css" rel="stylesheet">
 <!--[if IE 8]>
 <link rel="stylesheet" type="text/css" href="/fxcl/public/Admin/css/comie.css">
 <![endif]-->
 <!--[if IE 9]>
 <link rel="stylesheet" type="text/css" href="/fxcl/public/Admin/css/comie.css">
 <![endif]-->
 <link href="../Admin/favicon.ico" rel="icon">
 <script src="/fxcl/public/Admin/js/jquery.min.js" type="text/javascript"></script>
 <link href="/fxcl/public/Admin/css/minimal/minimal.css" rel="stylesheet">
 <script src="/fxcl/public/Admin/js/icheck.min.js" type="text/javascript"></script>
 
</head>
<body>

<div class="pubmain">
  <h1>添加类别</h1>
  <form name="adminform" method="post" action="" onSubmit="return systype(document.adminform)">
  <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="<?php echo tabstyle();?>">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">类别名称：</td>
    <td height="32" align="left"><input type="text" value="" name="topic" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr class="hide">
     <td height="32" align="right" valign="middle">上传图片：</td>
     <td height="32" align="left"><?php echo uppic('','类别图片，没有要求可以不用上传！');?></td>
   </tr>
   <tr class="hide">
     <td height="32" align="right" valign="middle">展示形式：</td>
     <td height="32" align="left"><?php echo dropdown(3,0,'请选择展示形式',"showtype");?></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">是否启用：</td>
     <td height="32" align="left"><?php echo checkbox(0,1);?> <span class="text-warning"> 注：勾选表示启用</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">类别排序：</td>
     <td height="32" align="left"><input type="text" value="0" name="ord" class="textsort"></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;</td>
     <input type="hidden" value="<?php echo ($tables); ?>" name="tables">
     <input type="hidden" value="<?php echo ($sty); ?>" name="sty">
     <td height="32" align="left"><?php echo btn(array('vals'=>'提交','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'));?></td>
   </tr>
  </table>
  </form>
</div>



 <script src="/fxcl/public/Admin/js/bootstrap.min.js" type="text/javascript"></script>
 <script src="/fxcl/public/Admin/js/alert.min.js" type="text/javascript"></script>
 <script src="/fxcl/public/Admin/js/common.js" type="text/javascript"></script>
 <script src="/fxcl/public/Admin/js/zoom.js" type="text/javascript"></script>
 <script src="/fxcl/public/Admin/js/screenfull.min.js" type="text/javascript"></script>
 <?php if(isset($upload) && $upload){?>
 <script type="text/javascript" src="/fxcl/public/Admin/uploadify/uploadify.js"></script>
 <?php }?>
 <?php if(isset($color) && $color){?>
 <script src="/fxcl/public/Admin/js/color.js" type="text/javascript"></script>
 <link href="/fxcl/public/Admin/css/color.css" rel="stylesheet">
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
  var img     = '/fxcl/public/Admin/images';
  var abspath = '/fxcl/index.php/Admin';
  var upload  = '/fxcl/public/Admin/uploadify';
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
 <script src="/fxcl/public/Admin/js/datejs/WdatePicker.js" type="text/javascript"></script>
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