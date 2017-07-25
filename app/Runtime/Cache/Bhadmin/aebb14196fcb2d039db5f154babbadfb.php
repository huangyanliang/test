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
   <?php echo btn(array('vals'=>'系统设置','size'=>3,'icon'=>'cog','scene'=>'default','url'=>U('system/sysmod')));?>
   <?php echo btn(array('vals'=>'水印设置','size'=>3,'icon'=>'tint','scene'=>'primary','url'=>U('system/syswater')));?>
  </div></h1>
  <form name="sysmod" method="post" action="" onSubmit="return sysck(document.sysmod)">
    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="<?php echo tabstyle();?>">
      <tr>
        <td width="132" height="42" align="right" valign="middle">水印图片：</td>
        <td height="42" align="left"><?php echo uppic($data['waterpic'],'请上传.gif,.png,.jpg格式的水印图片，图片大小不要过大。',1,1);?></td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">水印位置：</td>
        <td height="42" align="left">
         <div class="waterpos">
          <input type="hidden" value="<?php echo ($data['waterpos']); ?>" name="waterpos">
          <div data-id="1"<?php echo ($data['waterpos']==1) ? ' class="selected"' : '';?>>左上</div>
          <div data-id="2"<?php echo ($data['waterpos']==2) ? ' class="selected"' : '';?>>正上</div>
          <div data-id="3"<?php echo ($data['waterpos']==3) ? ' class="selected"' : '';?>>右上</div>
          <div data-id="4"<?php echo ($data['waterpos']==4) ? ' class="selected"' : '';?>>左中</div>
          <div data-id="5"<?php echo ($data['waterpos']==5) ? ' class="selected"' : '';?>>中间</div>
          <div data-id="6"<?php echo ($data['waterpos']==6) ? ' class="selected"' : '';?>>右中</div>
          <div data-id="7"<?php echo ($data['waterpos']==7) ? ' class="selected"' : '';?>>左下</div>
          <div data-id="8"<?php echo ($data['waterpos']==8) ? ' class="selected"' : '';?>>中下</div>
          <div data-id="9"<?php echo ($data['waterpos']==9) ? ' class="selected"' : '';?>>右下</div>
         </div>
        </td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">水印透明值：</td>
        <td height="42" align="left"><input type="text" value="<?php echo ($data['wateralpha']); ?>" class="textsort" name="wateralpha"> <span class="text-warning">水印透明度，1-100的整数</span></td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">水印文字：</td>
        <td height="42" align="left"><input type="text" value="<?php echo ($data['fonttext']); ?>" class="text" name="fonttext"> <span class="text-warning">水印文字，建议用字母或文字</span></td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">文字大小：</td>
        <td height="42" align="left"><div class="input-group input-group-sm" style="width:80px;"<?php echo tooltip('水印文字的大小');?>><input type="text" value="<?php echo ($data['fontsize']); ?>" name="fontsize" class="form-control"><span class="input-group-addon">px</span></div></td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">水印文字颜色：</td>
        <td height="42" align="left">
         <input type="text" value="<?php echo ($data['fontcolor']); ?>" name="fontcolor" class="textsort colorselect"<?php echo tooltip('水印文字的颜色');?> style="width:120px;">
        </td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">字体水印样式：</td>
        <td height="42" align="left">
         <div class="text-warning"><?php echo icon('info-sign');?> 从左到右 分别是水印字体A~G的水印样式，字体(B~G)由 THINKPHP 提供。</div>
         <div class="waterview">
          <input type="hidden" value="<?php echo ($data['facetype']); ?>" name="facetype">
          <div data-id="0" class="waterdemo<?php echo ($data['facetype']==0) ? ' selected' : '';?>"<?php echo tooltip('字体样式A');?>><img src="/fxcl/public/Bhadmin/images/water/A.jpg"></div>
          <div data-id="1" class="waterdemo<?php echo ($data['facetype']==1) ? ' selected' : '';?>"<?php echo tooltip('字体样式B');?>><img src="/fxcl/public/Bhadmin/images/water/B.jpg"></div>
          <div data-id="2" class="waterdemo<?php echo ($data['facetype']==2) ? ' selected' : '';?>"<?php echo tooltip('字体样式C');?>><img src="/fxcl/public/Bhadmin/images/water/C.jpg"></div>
          <div data-id="3" class="waterdemo<?php echo ($data['facetype']==3) ? ' selected' : '';?>"<?php echo tooltip('字体样式D');?>><img src="/fxcl/public/Bhadmin/images/water/D.jpg"></div>
          <div data-id="4" class="waterdemo<?php echo ($data['facetype']==4) ? ' selected' : '';?>"<?php echo tooltip('字体样式E');?>><img src="/fxcl/public/Bhadmin/images/water/E.jpg"></div>
          <div data-id="5" class="waterdemo<?php echo ($data['facetype']==5) ? ' selected' : '';?>"<?php echo tooltip('字体样式F');?>><img src="/fxcl/public/Bhadmin/images/water/F.jpg"></div>
          <div data-id="6" class="waterdemo<?php echo ($data['facetype']==6) ? ' selected' : '';?>"<?php echo tooltip('字体样式G');?>><img src="/fxcl/public/Bhadmin/images/water/G.jpg"></div>
          <div data-id="7" class="waterdemo<?php echo ($data['facetype']==7) ? ' selected' : '';?>"<?php echo tooltip('字体样式H');?>><img src="/fxcl/public/Bhadmin/images/water/H.jpg"></div>
         </div>
        </td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">文字位置：</td>
        <td height="42" align="left">
        <div class="waterpos">
          <input type="hidden" value="<?php echo ($data['fontpos']); ?>" name="fontpos">
          <div data-id="1"<?php echo ($data['fontpos']==1) ? ' class="selected"' : '';?>>左上</div>
          <div data-id="2"<?php echo ($data['fontpos']==2) ? ' class="selected"' : '';?>>正上</div>
          <div data-id="3"<?php echo ($data['fontpos']==3) ? ' class="selected"' : '';?>>右上</div>
          <div data-id="4"<?php echo ($data['fontpos']==4) ? ' class="selected"' : '';?>>左中</div>
          <div data-id="5"<?php echo ($data['fontpos']==5) ? ' class="selected"' : '';?>>中间</div>
          <div data-id="6"<?php echo ($data['fontpos']==6) ? ' class="selected"' : '';?>>右中</div>
          <div data-id="7"<?php echo ($data['fontpos']==7) ? ' class="selected"' : '';?>>左下</div>
          <div data-id="8"<?php echo ($data['fontpos']==8) ? ' class="selected"' : '';?>>中下</div>
          <div data-id="9"<?php echo ($data['fontpos']==9) ? ' class="selected"' : '';?>>右下</div>
         </div>
        </td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">开启水印功能：</td>
        <td height="42" align="left"><?php echo checkbox($data['iswater'],0,'iswater');?><span class="text-warning"> &nbsp;注：勾选表示开启水印功能。</span></td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　</td>
        <td height="50"><?php echo btn(array('vals'=>'确定保存','size'=>3,'type'=>'submit','icon'=>'tint','scene'=>'primary'));?></td>
      </tr>
    </table>
    </form>
    <script>
     $(".waterpos div,.waterview div").click(function(e) {
       var id = $(this).data("id");
	   $(this).parent().find("input").val(id);
	   $(this).parent().find("div").removeClass("selected");
	   $(this).addClass("selected"); 
     });
	 
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