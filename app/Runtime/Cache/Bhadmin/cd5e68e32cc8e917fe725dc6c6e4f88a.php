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
  <h1><div class="pull-left">
   <?php echo btn(array('vals'=>'系统设置','size'=>3,'icon'=>'cog','scene'=>'primary','url'=>U('system/sysmod')));?>
   <?php echo btn(array('vals'=>'水印设置','size'=>3,'icon'=>'tint','scene'=>'default','url'=>U('system/syswater')));?>
  </div></h1>
<form name="sysmod" method="post" action="" onSubmit="return sysck(document.sysmod)">
    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="<?php echo tabstyle();?>">
      <tr>
        <td width="132" height="42" align="right" valign="middle">　站点名称：</td>
        <td height="42" align="left"><input type="text" value="<?php echo ($data['metatitle']); ?>" name="metatitle" class="textlong"> <span class="text-warning">( 应用程序名称，用在站点显示中 )</span></td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　站点ICP备案号：</td>
        <td height="32"><input type="text" value="<?php echo ($data['icpnote']); ?>" name="icpnote" class="text"> <span class="text-warning"> (如果没有，<a href="http://www.miibeian.gov.cn/" target="_blank">点这里申请</a>。申请过程是免费的,没有ICP备案号表示该网站不合法) </span> </td>
      </tr>
      <tr>
        <td width="132" height="82" align="right" valign="middle">　描述信息：</td>
        <td height="82" align="left"><textarea name="metades" rows="6" cols="80" class="textareatext"><?php echo ($data['metades']); ?></textarea></td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　公司名称：</td>
        <td height="32"><input type="text" value="<?php echo ($data['companyname']); ?>" name="companyname" class="text"> </td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　站点网址：</td>
        <td height="32"><input type="text" value="<?php echo ($data['companyurl']); ?>" name="companyurl" class="text"> </td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　地址：</td>
        <td height="32"><input type="text" value="<?php echo ($data['address']); ?>" name="address" class="text"> </td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　电话：</td>
        <td height="32"><input type="text" value="<?php echo ($data['tel']); ?>" name="tel" class="text"> </td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　传真：</td>
        <td height="32"><input type="text" value="<?php echo ($data['fax']); ?>" name="fax" class="text"> </td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　邮箱：</td>
        <td height="32"><input type="text" value="<?php echo ($data['email']); ?>" name="email" class="text"> </td>
      </tr>
      <tr class="hide">
        <td height="32" align="right" valign="middle">系统通知：</td>
        <td height="32"><textarea name="sys_notice" rows="6" cols="80" class="textareatext"><?php echo ($data['sys_notice']); ?></textarea>&nbsp;<span class="text-warning">(该段话显示在所有页面的头部)</span></td>
      </tr>
      <tr>
        <td width="132" height="82" align="right" valign="middle">　可放代码：</td>
        <td height="82" align="left"><textarea name="sys_code" rows="6" cols="80" class="textareatext"><?php echo ($data['sys_code']); ?></textarea>&nbsp;<span class="text-warning">(您可以把第三方的代码放在这里，例如：百度统计代码)</span></td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　是否关闭项目：</td>
        <td height="32" align="left"><?php echo checkbox($data['c_site'],0,'c_site');?><span class="text-warning">&nbsp;注：勾选表示关闭项目。</span></td>
      </tr>
      <tr>
        <td width="132" height="82" align="right" valign="middle">　关闭说明：</td>
        <td height="82" align="left"><textarea name="c_text" rows="6" cols="80" class="textareatext"><?php echo ($data['c_text']); ?></textarea>&nbsp;<span class="text-warning">(若项目选择关闭，显示该属性内容)</span></td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　后台分页值：</td>
        <td height="32" align="left"><input type="text" value="<?php echo ($data['adminpage']); ?>" name="adminpage" class="textsort">&nbsp;<span class="text-warning">(设置后台资料管理分页值，大于1的整数，清除缓存后生效)</span></td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　</td>
        <td height="50"><?php echo btn(array('vals'=>'确定保存','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'));?></td>
      </tr>
    </table>
    </form>
 <script>
  function sysck(td){
    if($.trim(td.metatitle.value)==''){swal('请输入站点名称','','error');return false;}
	if($.trim(td.metades.value)==''){swal('请输入站点描述','','error');return false;}
	if($.trim(td.metakey.value)==''){swal('请输入站点关键词','','error');return false;}
  }
 </script>
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