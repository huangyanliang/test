// JavaScript Document
window.onload = function () {(window.onresize = function () {
	//获取可见宽度
	var width = document.documentElement.clientWidth - 178;
	//获取可见高度
	var height = document.documentElement.clientHeight - 50;
	//如果有宽度，给值
	if (width >= 0) document.getElementById('rightmain').style.width = width + 'px';
	//如果有高度，给值
	if (height >= 0) {
		document.getElementById('sidebar').style.height = height + 'px';
		document.getElementById('rightmain').style.height = height + 'px';
		document.getElementById("iframdiv").style.height = parseInt(((height-36)*0.99)) + 'px';
	}
})()};
/* 结束 */
$(document).ready(function(e) {
  //基础事件
  $(".f5").click(function(e) {var url = right.location.href;right.location.href = url;});
  $(".back").click(function(e){right.history.back(-1);});
  $(".going").click(function(e){right.history.go(1);});
  $(".menu-header,.menu-header2").click(function(e) {
    var obj = $(this).parent().find(".menu-dd");
	if(!obj.is(":hidden")){
	 obj.animate({"height":'0px'},200,function(){obj.hide()});
	 $(this).find("b").removeClass("glyphicon-menu-down").addClass("glyphicon-menu-up");
	 $(this).css({"border-bottom":'none'});
	}else{
	 obj.show().animate({"height":'32px'},200,function(){});
	 $(this).find("b").removeClass("glyphicon-menu-up").addClass("glyphicon-menu-down");
	 $(this).css({"border-bottom":'solid 1px #dbdbdb',"border-top":'solid 1px #dbdbdb'});
	}
  });
  $(".adminmenu li a,.admin-menu-ul li a").click(function(e) {
    var id = $(this).data("id");
	if(id!=0){
		ajax({
			method : 'post',
			url : abspath+'/index/switchtab',
			data : {
				'tabid' : id
			},
			success : function (data) {
			  window.location.reload();
			},
			async : true
		});
	}
  });
  //响应式
  $(".mymenu").click(function(e) {
    if($(".admin-menu-ul").is(":hidden")){
	 $(".admin-menu-ul").show().animate({"right":'0px'},300,function(){});
	}else{
	 $(".admin-menu-ul").animate({"right":'-90px'},300,function(){$(".admin-menu-ul").hide()});
	}  
  });
  //选择导航效果
  $(".menu-dd a").click(function(e) {
    $(".menu-dd a").removeClass("selected");
	$(this).addClass("selected");    
  });
  
});