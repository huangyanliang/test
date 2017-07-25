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
 <h1>资料管理<div class="pull-right"><?php echo btn(array('vals'=>'添加资料','size'=>3,'icon'=>'plus','scene'=>'primary','url'=>U('website/dataadd','tables='.$dshow['table'].'&martables='.$dshow['martable'])));?></div></h1>
 <form name="pubserch" method="post" action=""> 
  <div class="search">
   资料名称：<input type="text" class="text" name="topic" style="width:150px;">
   &nbsp;资料分类：<?php echo dropdown($dshow['mdata']);?>
   &nbsp;是否启用：<?php echo dropdown(1,0,'请选择','enabled');?>
   &nbsp;是否置顶：<?php echo dropdown(2,0,'请选择','istop');?>
   <input type="hidden" value="<?php echo ($dshow['table']); ?>" name="tables">
   <input type="hidden" value="<?php echo ($dshow['martable']); ?>" name="martables">
   <input type="hidden" value="<?php echo ($dshow['sty']); ?>" name="sty">
   &nbsp;<?php echo btn(array('vals'=>'查询','type'=>'submit','icon'=>'search','name'=>'searchdata','line'=>1,'scene'=>'primary'));?>
  </div>
  </form>
  <form name="publist" method="post" action="" onSubmit="return pubdel(document.publist)"> 
  <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" class="<?php echo tabstyle();?>">
   <tr class="active">
     <td width="45" align="center" valign="middle" height="37"><?php echo ckall();?></td>
     <td width="60" align="left" valign="middle">序号</td>
     <td align="left" valign="middle">资料标题</td>
     <td width="130" align="center" valign="middle">资料所属</td>
     <td width="100" align="center" valign="middle">资料排序</td>
     <td width="110" align="center" valign="middle">资料置顶</td>
     <td width="110" align="center" valign="middle">资料启用</td>
     <td width="100" align="center" valign="middle">更新日期</td>
     <td width="100" align="center" valign="middle">资料操作</td>
   </tr>
   <?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($i % 2 );++$i;?><tr class="maintr">
    <td align="center" valign="middle" height="37"><?php echo ckbox($obj['Id'],$i-1);?></td>
    <td align="left" valign="middle"><?php echo ($dshow['pageno']+$i); ?></td>
    <td align="left" valign="middle">
     <?php echo ($obj['topic']); ?>
     <?php if($obj['pic'] != ''): echo icon('picture'); endif; ?>
     </td>
    <td align="center" valign="middle"><?php echo ($obj['inftopic']); ?></td>
    <td align="center" valign="middle"><?php echo modord($obj['ord'],$obj['Id'],$dshow['table']);?></td>
    <td align="center" valign="middle"><?php echo modattr($obj['Id'],$obj['istop'],$dshow['table'],'istop',array('置顶','取消'));?></td>
    <td align="center" valign="middle"><?php echo modattr($obj['Id'],$obj['enabled'],$dshow['table']);?></td>
    <td align="center" valign="middle"><?php echo showdate($obj['date']);?></td>
    <td align="center" valign="middle"><?php echo btn(array('vals'=>'编辑','icon'=>'edit','tips'=>'点击编辑数据','url'=>U('website/datamod','tables='.$dshow['table'].'&martables='.$dshow['martable'].'&id='.$obj['Id'])));?></td>
   </tr><?php endforeach; endif; else: echo "" ;endif; ?>
   <tr>
    <td height="37" align="center" valign="middle"><?php echo ckall();?></td>
    <td height="35" colspan="8" align="left" valign="middle">
    <?php echo btn(array('vals'=>'删除','type'=>'submit','name'=>'deldata','icon'=>'trash','scene'=>'danger'));?>
    <font class="text-warning">&nbsp;<?php echo icon('warning-sign');?> 提示，任何形式删除的数据都无法找回，请谨慎操作！</font>
    <?php echo ($dshow['pageshow']); ?>
    </td>
   </tr>
   </table>
   </form>
 </div>



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