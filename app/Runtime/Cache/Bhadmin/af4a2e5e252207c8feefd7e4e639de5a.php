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
   <h1>图片管理
  <div class="pull-right">
   <?php echo btn(array('vals'=>'','size'=>3,'icon'=>'th-list','scene'=>$scene[0],'url'=>U('system/syspic','act=1')));?>
   <?php echo btn(array('vals'=>'','size'=>3,'icon'=>'th','scene'=>$scene[1],'url'=>U('system/syspic','act=2')));?>
   <?php echo btn(array('vals'=>'','size'=>3,'icon'=>'folder-open','scene'=>$scene[2],'url'=>U('system/syspic','act=3')));?>
  </div></h1>
  <?php if($act == 1): ?><form name="publist" method="post" action="<?php echo U('system/sysdelpic');?>" onSubmit="return pubdel(document.publist)">
  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="<?php echo tabstyle();?>">
   <tr class="active">
     <td width="45" align="center" valign="middle" height="30"><?php echo ckall('top');?></td>
     <td width="35%" align="left" valign="middle"><?php echo icon('picture');?> 文件夹/图片名称</td>
     <td width="100" align="left" valign="middle">大小</td>
     <td width="150" align="left" valign="middle"><?php echo icon('time');?> 上传时间</td>
     <td width="80" align="left" valign="middle">是否冗余</td>
     <td align="left" valign="middle"><?php echo icon('eye-open');?> 查看</td>
   </tr>
   <?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($i % 2 );++$i; if($obj['isou'] == 1): ?><tr class="maintr">
   <?php else: ?>
   <tr class="maintr info"><?php endif; ?>
    <td align="center" valign="middle" height="25">
    <?php if($obj['isou'] == 1): echo ckbox($obj['pic'],$i-1,0,1);?>
    <?php else: ?>
     <?php echo ckbox($obj['pic'],$i-1,1); endif; ?>
    </td>
    <td align="left" valign="middle"><?php echo ($obj['spic']); ?></td>
    <td align="left" valign="middle"><?php echo ($obj['size']); ?></td>
    <td align="left" valign="middle"><?php echo ($obj['time']); ?></td>
    <td align="left" valign="middle">
     <?php if($obj['isou'] == 1): ?><font color="green">正常</font>
     <?php else: ?>
      <font color="red">冗余</font><?php endif; ?>
    </td>
    <td align="left" valign="middle">
     <div class="zomm-pic"><img src="/fxcl/<?php echo ($obj['pic']); ?>" data-action="zoom"></div>
    </td>
   </tr><?php endforeach; endif; else: echo "" ;endif; ?>
   <tr>
    <td align="center" valign="middle"><?php echo ckall();?></td>
    <td height="35" align="left" valign="middle" colspan="5">
	 <?php echo btn(array('vals'=>'删除','type'=>'submit','icon'=>'trash','name'=>'deldata','scene'=>'danger'));?>&nbsp;
     <font class="text-warning">&nbsp;<?php echo icon('warning-sign');?> 提示，任何图片删除都无法找回，建议只删除冗余的图片！</font>
     <?php echo ($dshow['pageshow']); ?>
    </td>
   </tr>
  </table>
  </form><?php endif; ?>
  
  <?php if(($act == 2) OR ($act == 4)): ?><form name="publist" method="post" action="<?php echo U('system/sysdelpic');?>" onSubmit="return pubdel(document.publist)">
  <?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$obj): $mod = ($i % 2 );++$i;?><div class="syspicshow">
       <div class="sysmypic"><img src="/fxcl/<?php echo ($obj['pic']); ?>" class="img-thumbnail" data-action="zoom"></div>
       <div class="sysmypic-foot">
	     <?php if($obj['isou'] == 1): ?><font color="green">正常</font>  <?php echo ckbox($obj['pic'],$i-1,0,1);?>
         <?php else: ?>
          <font color="red">冗余</font>  <?php echo ckbox($obj['pic'],$i-1,1); endif; ?>
       </div>
      </div><?php endforeach; endif; else: echo "" ;endif; ?>
  <div class='delmostdiv'><?php echo ckall($type='bottom').btn(array('vals'=>'选中删除','type'=>'submit','size'=>3,'icon'=>'trash','name'=>'deldata','scene'=>'danger'));?>
  <?php echo ($dshow['pageshow']); ?>
  </div>
  </form><?php endif; ?>
  
  <?php if($act == 3): if(is_array($file)): $i = 0; $__LIST__ = $file;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$fobj): $mod = ($i % 2 );++$i; if($fobj['count'] == 0): ?><a href="javascript:void(0)">
    <?php else: ?>
    <a href="<?php echo U('system/syspic','act=4&path='.$fobj['file']);?>"><?php endif; ?>
    <div class="myfolder">
     <div class="myfilenum"><span><?php echo ($fobj['count']); ?></span></div>
     <div class="myicon"><?php echo icon('folder-open');?></div>
     <div class="mytips"><?php echo ($fobj['file']); ?></div>
    </div></a><?php endforeach; endif; else: echo "" ;endif; endif; ?>
  
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