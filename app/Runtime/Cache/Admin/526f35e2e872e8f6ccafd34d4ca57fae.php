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
 <h1>后台管理中心</h1>
 <div class="success-div text-success bg-success">
  &nbsp;<?php echo icon('cog');?>&nbsp;&nbsp;系统提示：当您新增或者修改了数据信息时，请点击 <?php echo btn(array('vals'=>'清除缓存','icon'=>'trash','scene'=>'primary','url'=>U('index/cleancache')));?> ，删除掉系统缓存，保证前台显示最新的数据。
 </div>
 <?php if($sysInfo['backupcount'] > 0): ?><div class="success-div text-success bg-success">
  &nbsp;<?php echo icon('info-sign');?>&nbsp;&nbsp;您有 <?php echo ($sysInfo['backupcount']); ?> 条数据库备份信息，建议您定时 <?php echo btn(array('vals'=>'备份','icon'=>'duplicate','scene'=>'primary','url'=>U('system/databackup')));?> 您的数据库信息，您上次备份数据的时间为 <?php echo ($sysInfo['backuptime']); ?>。
 </div><?php endif; ?>
 <?php if($c_site == 1): ?><div class="warning-div text-warning bg-warning">
  &nbsp;<?php echo icon('alert');?>&nbsp;&nbsp;您的网站项目处于关闭状态。点击 <?php echo btn(array('vals'=>'设置','icon'=>'cog','scene'=>'primary','url'=>U('system/sysmod')));?> 去开启项目。
 </div><?php endif; ?>
 <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="<?php echo tabstyle();?>" style="margin:10px auto;">
   <tr class="active"><td colspan="4" align="left" valign="middle">系统信息</td></tr>
   <tr>
     <td align="left" width="25%" valign="middle" height="25">服务器操作系统：</td>
     <td align="left" width="25%" valign="middle"><?php echo ($sysInfo['os']); ?></td>
     <td align="left" width="25%" valign="middle">Web 服务器：</td>
     <td align="left" width="25%" valign="middle"><?php echo ($sysInfo['web_server']); ?></td>
   </tr>
   <tr>
     <td align="left" valign="middle" height="25">PHP 版本：</td>
     <td align="left" valign="middle"><?php echo ($sysInfo['php_ver']); ?></td>
     <td align="left" valign="middle">MySQL 版本：</td>
     <td align="left" valign="middle"><?php echo ($sysInfo['mysql_ver']); ?></td>
   </tr>
   <tr>
     <td align="left" valign="middle" height="25">GD 版本：</td>
     <td align="left" valign="middle"><?php echo ($sysInfo['gd']); ?></td>
     <td align="left" valign="middle">时区设置：</td>
     <td align="left" valign="middle"><?php echo ($sysInfo['timezone']); ?></td>
   </tr>
   <tr>
     <td align="left" valign="middle" height="25">文件上传的最大大小：</td>
     <td align="left" valign="middle"><?php echo ($sysInfo['max_filesize']); ?></td>
     <td align="left" valign="middle">Zlib 支持：</td>
     <td align="left" valign="middle"><?php echo ($sysInfo['zlib']); ?></td>
   </tr>
   <tr>
     <td align="left" valign="middle" height="25">语言：</td>
     <td align="left" valign="middle"><?php echo ($sysInfo['language']); ?></td>
     <td align="left" valign="middle">编码：</td>
     <td align="left" valign="middle"><?php echo ($sysInfo['coding']); ?></td>
   </tr>
   <tr>
     <td align="left" valign="middle" height="25">后台版本：</td>
     <td align="left" valign="middle" title="power by thinkphp3.2 and bootstrap 3.0"><?php echo ($sysInfo['admin_ver']); ?></td>
     <td align="left" valign="middle">联系邮箱：</td>
     <td align="left" valign="middle">bh#jxbht.com</td>
   </tr>
  </table>
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