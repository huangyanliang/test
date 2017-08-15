var abspath = '';
/* 创建异步方法 */
function createXHR() {
	if (typeof XMLHttpRequest != 'undefined') {
		return new XMLHttpRequest();
	} else if (typeof ActiveXObject != 'undefined') {
		var version = [
									'MSXML2.XMLHttp.6.0',
									'MSXML2.XMLHttp.3.0',
									'MSXML2.XMLHttp'
		];
		for (var i = 0; version.length; i ++) {
			try {
				return new ActiveXObject(version[i]);
			} catch (e) {
				//跳过
			}	
		}
	} else {
		throw new Error('您的系统或浏览器不支持XHR对象！');
	}
}
//名值对转换为字符串
function paramsjoin(data) {
	var arr = [];
	for (var i in data) {
		arr.push(encodeURIComponent(i) + '=' + encodeURIComponent(data[i]));
	}
	return arr.join('&');
}
//封装ajax
function ajax(obj) {
	var xhr = createXHR();
	obj.url = obj.url + '/rand/' + Math.random();
	obj.data = paramsjoin(obj.data);
	if (obj.method === 'get') obj.url += obj.url.indexOf('?') == -1 ? '?' + obj.data : '&' + obj.data;
	if (obj.async === true) {
		xhr.onreadystatechange = function () {
			if (xhr.readyState == 4) {
				callback();
			}
		};
	}
	xhr.open(obj.method, obj.url, obj.async);
	if (obj.method === 'post') {
		xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
		xhr.send(obj.data);	
	} else {
		xhr.send(null);
	}
	if (obj.async === false) {
		callback();
	}
	function callback() {
		if (xhr.status == 200) {
			obj.success(xhr.responseText);			//回调传递参数
		} else {
			swal('获取数据错误！错误代号：' + xhr.status + '，错误信息：' + xhr.statusText,'','error');// 屏蔽错误信息
		}	
	}
}
/* JS常用函数 v.0.0.1 */
function G(objName){if(document.getElementById(objName)){return eval('document.getElementById("'+objName+'")')}else{return eval('document.all.'+objName)}} //取得Id的对象
function hide(a){
/*	a = G(a);
	if(!a) return;
	a.style.display = "none";
	a.style.visibility = 'hidden'; */
	movechild(a);
}
function movechild(a){a=G(a);if(!a) return;document.body.removeChild(a);}
/* 获取物理高度 */
var getheight=function(){
	var f=document,a=f.body,d=f.documentElement,c=f.compatMode=="BackCompat"?a:f.documentElement;
	return Math.max(d.scrollHeight,a.scrollHeight,c.clientHeight)
};
/* 获取物理宽度 */
var getwidth=function(){
	var f=document,a=f.body,d=f.documentElement,c=f.compatMode=="BackCompat"?a:f.documentElement;
	return Math.max(d.scrollWidth,a.scrollWidth,c.clientWidth)
};
//影藏遮罩层
function Hide(){
 hide('vmask');
 movechild('vmask');
}
/* 创建遮罩层 */
function cmask(){
	theBody=document.body;
	v = document.createElement("div");
	v.id = "vmask";
	v.className = "cscreen";
	v.style.display = "block";
	v.style.visibility = 'visible';
    v.style.width = getwidth()+"px";
	v.style.height = getheight()+"px";
    theBody.appendChild(v);
}
/* 优化遮罩层 ps:随着屏幕的扩大或者缩小自动铺满 */
window.onresize = function(){
  if(G("vmask")){
    var obj = G("vmask");
	obj.style.width = getwidth() + 'px';
	obj.style.height = getheight() + 'px';
  }
}
/*  */
$(document).ready(function(e) {
 
 //全选数据 v1.1.3
  $(".ckallbox input").on('ifChecked', function(event){
    $(".maintr").addClass("info");
	$('input').iCheck('check');
  });
  $(".ckallbox input").on('ifUnchecked', function(event){
	$(".maintr").removeClass("info");
	$("input").iCheck('uncheck');
  });  
 //单选数据 v1.1.3
  $('.maintr input').on('ifChecked', function(event){
     $(this).parent().parent().parent().addClass("info");
	 if($("input[type='checkbox']").length-2 == $(".maintr input[type='checkbox']:checked").length ){
	   $('input').iCheck('check');
	 }
  });
  $(".maintr input").on("ifUnchecked",function(event){
     $(this).parent().parent().parent().removeClass("info");
	 $(".icheckbox_minimal").first().removeClass("checked");
	 $(".icheckbox_minimal").last().removeClass("checked");
	 $(".ckallbox input").attr("checked",false);
  });
 //结束

/* 修改属性 */
$(".btn-enabled,.btn-disabled").click(function(e) {
  var tables = $(this).parent().data("tables");
  var id = $(this).parent().data("id");   
  var field = $(this).parent().data("field"); 
  var tip1 = $(this).parent().data("tip1"); 
  var tip2 = $(this).parent().data("tip2"); 
  var _this = $(this);
  var modval = (_this.data('mark')==1) ? 1 : 0;
  if(tables!='' && id!='' && field!=''){
	  $(this).attr("disabled",true).text('更改中..');
	  ajax({
		method : 'post',
		url : abspath+'/admin/modattr',
		data : {
			'tables' : tables,
			'field' : field,
			'id' : id,
			'val' : modval,
			'act' : 'modattr'
		},
		success : function (data) {
			_this.attr("disabled",false);
			if(data!=''){
			  if(_this.data("mark")==1){ //表示的启用
				_this.text(tip1);
				_this.removeClass("btn-default").addClass("btn-info");
				_this.parent().find(".btn-disabled").removeClass("active");
			  }else{ //表示禁用
				_this.text(tip2);
				_this.removeClass("active").addClass("active");
				_this.parent().find(".btn-enabled").removeClass("btn-info").addClass("btn-default");
			  }
			}else{
			  swal('数据有误，请重新操作！','','error');
			}
		},
		async : true
	});
  }else{
	swal('数据有误，请重新操作！','','error');
  }
});
 //上传图片	
 if($("#uppic").length>0){
    $('#uppic').uploadify({
	    formData : {'iswater' : 0},
		swf : upload+'/uploadify.swf',
		uploader : abspath+'/fileupload/picupload',
		width : 400,
		height : 29,
		fileTypeDesc : '图片类型',
		buttonText : '<span class="glyphicon glyphicon-folder-open"><b>选择..</b></span>',
		buttonClass : 'upload',
		multi : false,
		fileTypeExts : '*.jpg;*.png;*.gif;*.jpeg',
		fileSizeLimit : '10MB',
		overrideEvents : ['onSelectError'],
		onSelectError : function (file, errorCode, errorMsg) {
			switch (errorCode) {
				case -110 : 
				swal('文件已经超过10MB了','','error');
				break;
			}
		},
		onUploadStart : function () {
		   $("#uppic").uploadify("settings",'formData',{'iswater':($(".nowater").length>0)?1:0});
		},
		onUploadSuccess : function (file, data, response) {
		  var data = eval("("+data+")");
		  if(data==3){
		    swal('文件移动失败，请重新上传！','','error');
		  }else{
		    $("#pic").val(data);
			$(".uppicdiv").find(".picfoot b").html(data);
			$(".uppicdiv").show().find(".picdiv").html('<img src="'+upfile+data+'" data-action="zoom">');
		  }
		}
     });
  } 
  //删除图片
  $(".picfoot span").click(function(e) {
    $("#pic").val('');
	$(".uppicdiv").hide().find(".picdiv").html('');  
  });
//上传文件	
 if($("#upfile").length>0){
	$('#upfile').uploadify({
		formData : {'timestamp' : ''},
		swf : upload+'/uploadify/uploadify.swf',
		uploader : abspath+'/fileupload/fileupload',
		width : 400,
		height : 29,
		fileTypeDesc : '文件类型',
		buttonText : '<span class="glyphicon glyphicon-folder-open"><b>选择..</b></span>',
		buttonClass : 'fileupload',
		multi : false,
		fileTypeExts : '*',
		fileSizeLimit : '10MB',
		overrideEvents : ['onSelectError'],
		onSelectError : function (file, errorCode, errorMsg) {
			switch (errorCode) {
				case -110 : 
				swal('文件已经超过10MB了','','error');
				break;
			}
		},
		onUploadStart : function () {
		   
		},
		onUploadSuccess : function (file, data, response) {
		  var data = eval("("+data+")");
		  if(data==3){
			swal('文件上传失败，请重试','','error');
			return false;
		  }else{
			$("#filename").val(data);
			$(".upfilediv").show()
			$(".upfilename").html('<a href="'+upfile+data+'">'+data+'</a>');
		  }
		}
	 });
  }
  //删除文件
  $(".del-file").click(function(e) {
	$("#filename").val('');
	$(".upfilediv").hide().find(".upfilename").html('');
  });
  //下拉选择
  $(".dropdown-type li a").click(function(e) {
	$(this).parent().parent().parent().find(".drop-val").val($(this).data("id"));
	$(this).parent().parent().parent().find(".drop-topic").text($(this).text());
  });
  //下拉选择 联动方案
  $(".mydrop-menu-type1 li a").click(function(e) {
    $(this).parent().parent().parent().find(".drop-hide").val($(this).data("id"));
	$(this).parent().parent().parent().find(".drop-topic").text($(this).text()); 
	var _this = $(this);
	$(".btn-group-type2").find(".drop-topic").text('请选择子类');
	$(".btn-dropdownlink").find(".drop-hide").eq(1).val(0);
	ajax({
		  method : 'post',
		  url : 'bhajax/admin.php',
		  data : {
			 'tables' : _this.data("tables1"),
			 'tables2' : _this.data("tables2"),
			 'field' : _this.data("field1"),
			 'field2' : _this.data("field2"),
			 'id' : _this.data("id"),
			 'act' : 'droplink1'
		  },
		  success : function (data) {
			 $(".mydrop-menu-type2").html(data);
		  },
		  async : true
	 });
  });
  /* 下拉2 */ 
  $(".mydrop-menu-type2").on("click",".menu-li2",function(e){
    $(this).parent().parent().parent().find(".drop-hide").val($(this).data("id"));
	$(this).parent().parent().parent().find(".drop-topic").text($(this).text());
	var _this = $(this);
	var tables = $(this).data("tables");
	var field = $(this).data("field");
	if(field!='' && tables!=''){
	 //还原设置
	 $(".btn-group-type3").find(".drop-topic").text('请选择小类');
	 $(".btn-dropdownlink").find(".drop-hide").eq(2).val(0);
	 ajax({
		  method : 'post',
		  url : 'bhajax/admin.php',
		  data : {
			 'tables' : tables,
			 'field' : field,
			 'id' : _this.data("id"),
			 'act' : 'droplink2'
		  },
		  success : function (data) {
			 $(".mydrop-menu-type3").html(data);
		  },
		  async : true
	 });
	}
  });
  /* 下拉3 */
  $(".mydrop-menu-type3").on("click",".menu-li3",function(e){
    $(this).parent().parent().parent().find(".drop-hide").val($(this).data("id"));
	$(this).parent().parent().parent().find(".drop-topic").text($(this).text());
  });
   /* page跳转*/
  $(".mypage .jump_go").click(function(e) {
	 var page = $(".mypage .page_num").val();
     var url = $(".mypage .jump_url").val()+"/page/"+page;
	 if(page==''){
	   swal('请输入您要跳转的页码','','error');
	   $(".mypage .page_num").focus();
	   return false;
	 }
	 if(isNaN(page)){
	   swal('页码请输入数字','','error');
	   $(".mypage .page_num").val('');
	   $(".mypage .page_num").focus();
	   return false;
	 }
	 location.href = url;
  });
});
/* 添加广告 */
function sysadv(td){
  if(td.topic.value.length==0){swal('请输入广告标题','','error');td.topic.focus();return false;}
  if(td.linkurl.value.length==0){swal('请输入广告链接','','error');td.linkurl.focus();return false;}
  if(td.remark.value.length==0){swal('请输入广告备注','','error');td.remark.focus();return false;}
}
/* 类别的添加 */
function systype(td){
  if(td.topic.value.length==0){swal('请输入类别名称','','error');td.topic.focus();return false;}
}
/* 检测有没有数据操作 */
function pubdel(td){
 var objs = document.getElementsByTagName("input");
 var is = 0;
 for(var j=0;j<objs.length;j++){ if(objs[j].type=='checkbox'){ if(objs[j].checked == true){ is++;}}}
 if(is==0) {swal('请选择您要操作的数据','','error');return false;}
}
/* 添加资料 */
function sysdata(td){
 if(td.topic.value.length==0){swal('请输入资料名称','','error');td.topic.focus();return false;}
 if(td.inftype.value==0){swal('请选择资料所属','','error');return false;}
}
/*  */
function sysabout(td){
 if(td.topic.value.length==0){swal('请输入资料名称','','error');td.topic.focus();return false;}
}
function syslink(td){
 if(td.topic.value.length==0){swal('请输入链接名称','','error');td.topic.focus();return false;}
 if(td.linkurl.value.length==0){swal('请输入链接地址','','error');td.linkurl.focus();return false;}
}

function sysmtag(td){
 if(td.topic.value.length==0){swal('请输入类别名称','','error');td.topic.focus();return false;}
 if(td.inftype.value==0){swal('请选择类别所属','','error');return false;}
}
function sysstag(td){
 if(td.topic.value.length==0){swal('请输入类别名称','','error');td.topic.focus();return false;}
 if(td.ctag.value==0){swal('请选择大类','','error');return false;}
 if(td.mtag.value==0){swal('请选择子类','','error');return false;}
}
function syspro(td){
 if(td.productname.value.length==0){swal('请输入产品名称','','error');return false;} 
 if(td.productno.value.length==0){swal('请输入产品编号','','error');return false;} 
 if(td.ctag.value==0){swal('请选择产品大类','','error');return false;}
 if(td.mtag.value==0){swal('请选择产品子类','','error');return false;}
}
function sysattr(td){
  if(td.topic.value.length==0){swal('请输入属性名称','','error');td.topic.focus();return false;}
}
function sysexpress(td){
  if(td.topic.value.length==0){swal('请输入快递公司名称','','error');td.topic.focus();return false;}
  if(td.linkurl.value.length==0){swal('请输入快递公司官方网站','','error');td.linkurl.focus();return false;}
}

/* 修改排序 */
function modord(tables,id){
   var inp = "modord"+id;
   var ord = document.getElementsByName(inp)[0].value;//排序号
   if(tables!='' && id!=''){
	   ajax({
		  method : 'post',
		  url : abspath+'/admin/modord',
		  data : {
			 'tables' : tables,
			 'id' : id,
			 'ord' : ord,
			 'act' : 'modord'
		  },
		  success : function (data) {
			 if(data==1){
			   window.location.reload();
			 }else{
			   swal('排序修改失败，请重试','','error');
			 }
		  },
		  async : true
	   });
   }
}
