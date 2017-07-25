 <script src="__js__/bootstrap.min.js" type="text/javascript"></script>
 <script src="__js__/alert.min.js" type="text/javascript"></script>
 <script src="__js__/common.js" type="text/javascript"></script>
 <script src="__js__/zoom.js" type="text/javascript"></script>
 <script src="__js__/screenfull.min.js" type="text/javascript"></script>
 <?php if(isset($upload) && $upload){?>
 <script type="text/javascript" src="__upload__/uploadify.js"></script>
 <?php }?>
 <?php if(isset($color) && $color){?>
 <script src="__js__/color.js" type="text/javascript"></script>
 <link href="__css__/color.css" rel="stylesheet">
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
  var img     = '__img__';
  var abspath = '__MODULE__';
  var upload  = '__upload__';
  var upfile  = '__upfile__';
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
 <script src="__js__/datejs/WdatePicker.js" type="text/javascript"></script>
 <?php } ?>
 <!--结束-->
 <!--加载编辑器-->
 <?php if(isset($editor) && $editor){?>
 <link rel="stylesheet" href="__editor__/themes/default/default.css" />
 <link rel="stylesheet" href="__editor__/plugins/code/prettify.css" />
 <script charset="utf-8" src="__editor__/kindeditor.js" type="text/javascript"></script>
 <script charset="utf-8" src="__editor__/lang/zh_CN.js" type="text/javascript"></script>
 <script charset="utf-8" src="__editor__/plugins/code/prettify.js" type="text/javascript"></script>
 <script type="text/javascript">
	KindEditor.ready(function(K) {
		var editor1 = K.create('textarea[name="content"]', {
			cssPath : '__editor__/plugins/code/prettify.css',
			uploadJson : '__editor__/php/upload_json.php',
			//uploadJson : abspath+'/fileupload/kindupload',
			fileManagerJson : '__editor__/php/file_manager_json.php',
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
			cssPath : '__editor__/plugins/code/prettify.css',
			uploadJson : '__editor__/php/upload_json.php',
			//uploadJson : abspath+'/fileupload/kindupload',
			fileManagerJson : '__editor__/php/file_manager_json.php',
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
