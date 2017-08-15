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
 <h1>数据库备份</h1>
 <form name="publist" method="post" action="" onSubmit=""> 
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="<?php echo tabstyle();?>">
   <tr class="active">
     <td width="45" align="center" valign="middle" height="35"><?php echo ckall();?></td>
     <td width="140" align="left" valign="middle">数据表名称</td>
     <td width="140" align="left" valign="middle">数据表备注</td>
     <td width="140" align="left" valign="middle">记录数</td>
     <td align="left" valign="middle">操作</td>
   </tr>
   <?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($i % 2 );++$i;?><tr class="maintr">
    <td align="center" valign="middle" height="35"><input type="checkbox" value="<?php echo ($obj['table']); ?>" name="datebasename[]" class="myselect" /></td>
    <td align="left" valign="middle"><?php echo ($obj['table']); ?></td>
    <td align="left" valign="middle">***</td>
    <td align="left" valign="middle"><?php echo ($obj['count']); ?></td>
    <td align="left" valign="middle">
     &nbsp;<a href="javascript:void(0)" onClick="setData('<?php echo ($obj['table']); ?>','opt')"><?php echo btn(array('vals'=>'优化','tips'=>'优化数据表结构，清除索引数据','icon'=>'random','scene'=>'warning'));?></a>
     &nbsp;<a href="javascript:void(0)" onClick="setData('<?php echo ($obj['table']); ?>','repair')"><?php echo btn(array('vals'=>'修复','tips'=>'修复数据表','icon'=>'wrench','scene'=>'success'));?></a>
    </td>
   </tr><?php endforeach; endif; else: echo "" ;endif; ?>
   <tr>
     <td height="35" align="center" valign="middle"><?php echo ckall();?></td>
     <td colspan="4" align="left" valign="middle">
     &nbsp;<?php echo btn(array('vals'=>'优化','type'=>'submit','tips'=>'优化数据表结构，清除索引数据','icon'=>'random','scene'=>'warning'));?>
     &nbsp;<?php echo btn(array('vals'=>'修复','type'=>'submit','tips'=>'修复数据表','icon'=>'wrench','scene'=>'success'));?>
     &nbsp;<?php echo btn(array('vals'=>'备份','type'=>'submit','tips'=>'对整个数据库的数据及结构进行备份处理，备份文件在服务器内','icon'=>'duplicate','scene'=>'primary'));?>
     &nbsp;<font class="text-warning">&nbsp;<?php echo icon('warning-sign');?> 提示，建议您定期对数据库进行备份处理，防止数据丢失</font>
     </td>
   </tr>
  </table>
  </form>
 </div>
 <script>
 /* 修复/优化表 */
	function setData(db,act){
		if(db!='' && act!=''){  
		  ajax({
			method : 'post',
			url : abspath+'/admin/setdata',
			data : {
				'tables' : db,
				'acts' : act,
				'act' : 'setdata'
			},
			success : function (data) {
				if(data==1){
					if(act=="opt"){
					  swal('数据表['+db+']优化完成！','','success');
					}else if(act=="repair"){
					  swal('数据表['+db+']修复完成！','','success');
					}else{
					  swal('非系统命令，无法执行','','error');
					}
				}else{
				  swal(data,'','error');
				}
			},
			async : true
		});
	  }else{
		swal('数据提交有误','','error');
	  }
	}
	/* 结束 */
 </script>



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