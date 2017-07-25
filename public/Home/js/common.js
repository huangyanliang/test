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
	if (obj.method === 'get') obj.url += obj.url.indexOf('?') == -1 ? '/' + obj.data : '/' + obj.data;
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
			alert('获取数据错误！错误代号：' + xhr.status + '，错误信息：' + xhr.statusText,'error');// 屏蔽错误信息
		}	
	}
}
/* JS常用函数 v.0.0.3 */
function G(objName){if(document.getElementById){return eval('document.getElementById("'+objName+'")')}else{return eval('document.all.'+objName)}} //取得Id的对象
function hide(a){
	a = G(a);
	if(!a) return;
	a.style.display = "none";
	a.style.visibility = 'hidden'; 
	return a
}
function BhmoveChild(a){a=G(a);if(!a) return;document.body.removeChild(a);}
/* 获取物理高度 */
var getHeight=function(){
	var f=document,a=f.body,d=f.documentElement,c=f.compatMode=="BackCompat"?a:f.documentElement;
	return Math.max(d.scrollHeight,a.scrollHeight,c.clientHeight)
};
/* 获取物理宽度 */
var getWidth=function(){
	var f=document,a=f.body,d=f.documentElement,c=f.compatMode=="BackCompat"?a:f.documentElement;
	return Math.max(d.scrollWidth,a.scrollWidth,c.clientWidth)
};
//影藏遮罩层
function Hide(){
 hide('vmask');
 BhmoveChild('vmask');
}
/* 创建遮罩层 */
function cmask(){
	theBody=document.body;
	v = document.createElement("div");
	v.id = "vmask";
	v.className = "cscreen";
	v.style.display = "block";
	v.style.visibility = 'visible';
    v.style.width = getWidth()+"px";
	v.style.height = getHeight()+"px";
    theBody.appendChild(v);
}
/* 优化遮罩层 ps:随着屏幕的扩大或者缩小自动铺满 */
window.onresize = function(){
  if(G("vmask")){
    var obj = G("vmask");
	obj.style.width = getWidth() + 'px';
	obj.style.height = getHeight() + 'px';
  }
}
/* 网站专用验证码 */
function webcode(){
	if(("checkid")){
	  var file = basic['module']+"/index/webcode";
	  G("codeid").innerHTML = '<img src="'+file+'?t='+Math.random()+'" title="点击刷新验证码" style="cursor:pointer;border:0;vertical-align:middle;height:24px;" onclick="this.src=\''+file+'?t=\'+Math.random()" />'
	}
}
