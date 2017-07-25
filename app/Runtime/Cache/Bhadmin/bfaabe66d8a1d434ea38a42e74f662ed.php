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
  <h1>添加资料</h1>
  <form name="adminform" method="post" action="" onSubmit="return sysdata(document.adminform)">
  <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="<?php echo tabstyle();?>">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">资料标题：</td>
    <td height="32" align="left"><input type="text" value="" name="topic" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">资料所属：</td>
     <td height="32" align="left"><?php echo dropdown($dshow['mdata']);?></td>
   </tr>
   <tr class="hide">
     <td height="32" align="right" valign="middle">跳转链接：</td>
     <td height="32" align="left"><input type="text" value="" name="linkurl" class="textlong"> <span class="text-warning">&nbsp;注：跳转链接请提填此项，没有请勿填写。</span></td>
   </tr>
   <tr class="hide">
     <td height="32" align="right" valign="middle">资料来源：</td>
     <td height="32" align="left"><input type="text" value="" name="source" class="textsort">&nbsp;&nbsp;作者：<input type="text" value="" name="author" class="textsort" ></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">资料简介：</td>
     <td height="32" align="left"><textarea name="intro" rows="6" cols="80" class="textareatext"></textarea>&nbsp;<span class="text-warning">(资料简介，没有要求填写，可以为空！)</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">上传图片：</td>
     <td height="32" align="left"><?php echo uppic('','资料配图，没有要求可以不用上传！');?></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">资料内容：</td>
     <td height="32" align="left"><textarea name="content" class="pubtextarea" style="width:90%;height:450px;"></textarea></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">关键词：</td>
     <td height="32" align="left"><textarea name="keyword" rows="6" cols="80" class="textareatext"></textarea><span class="text-warning">&nbsp;(资料关键词，未填的话，默认标题为关键词)</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">页面描述：</td>
     <td height="32" align="left"><textarea name="metades" rows="6" cols="80" class="textareatext"></textarea><span class="text-warning">&nbsp;(资料描述，未填的话，默认标题为页面描述)</span></td>
   </tr>
   <tr class="hide">
     <td height="32" align="right" valign="middle">标题颜色：</td>
     <td height="32" align="left"><input type="text" value="#000000" name="topiccolor" class="textsort colorselect" <?php echo tooltip('标题颜色');?> style="width:120px;"></td>
   </tr>
   <tr class="hide">
     <td height="32" align="right" valign="middle">标题大小：</td>
     <td height="32" align="left"><div class="input-group input-group-sm" style="width:100px;" <?php echo tooltip('标题文字的大小，请输入小于30的整数，以免影响页面布局');?>><input type="text" value="13" name="topicsize" class="form-control"><span class="input-group-addon">px</span></div></td>
   </tr>
   <tr class="hide">
     <td height="32" align="right" valign="middle">是否加粗：</td>
     <td height="32" align="left"><?php echo checkbox(0,0,'isstrong');?> <span class="text-warning"> 注：勾选表示加粗资料标题</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">是否置顶：</td>
     <td height="32" align="left"><?php echo checkbox(0,0,'istop');?> <span class="text-warning"> 注：勾选表示启用</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">是否启用：</td>
     <td height="32" align="left"><?php echo checkbox(0,1);?> <span class="text-warning"> 注：勾选表示启用</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">资料排序：</td>
     <td height="32" align="left"><input type="text" value="0" name="ord" class="textsort"></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">发布日期：</td>
     <td height="32" align="left">
      <div class="input-group input-group-sm" style="width:300px;"<?php echo tooltip('请按照 2015-08-01 08:00:00 格式改写发布日期');?>><input type="text" value="<?php echo date("Y-m-d H:i:s");?>" name="date" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="form-control"><span class="input-group-addon"><?php echo icon('calendar');?></span></div>
     </td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;</td>
     <input type="hidden" value="<?php echo ($tables); ?>" name="tables">
     <input type="hidden" value="<?php echo ($martables); ?>" name="martables">
     <input type="hidden" value="<?php echo ($sty); ?>" name="sty">
     <td height="32" align="left"><?php echo btn(array('vals'=>'提交','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'));?></td>
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