<extend name="public/common" />
<block name="main">
 <div class="pubmain">
 <h1>添加管理员</h1>
  <form name="adminform" method="post" action="{:U('system/createuser')}" onSubmit="return sysadminuser(document.adminform)">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">登录ID：</td>
    <td height="32" align="left"><input type="text" value="" name="user" class="textlong ckuser"> <span class="text-warning"> * </span> <span class="u-result"></span> </td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">姓名：</td>
     <td height="32" align="left"><input type="text" value="" name="name" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">登录密码：</td>
     <td height="32" align="left"><input type="password" value="" name="pass" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">重复密码：</td>
     <td height="32" align="left"><input type="password" value="" name="notpass" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;</td>
     <td height="32" align="left">{:btn(array('vals'=>'提交','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'))}</td>
   </tr>
  </table>
  </form>
 </div>
 <script>
  function sysadminuser(td){
    if($.trim(td.user.value).length<2){swal('请输入后台管理员的登录ID','不得少于2位','error');return false;}
	if($.trim(td.name.value).length<2){swal('请输入后台管理员的姓名','不得少于2位','error');return false;}
	if($.trim(td.pass.value).length<6){swal('请输入后台管理员的登录密码','不得少于6位','error');return false;}
	if(td.pass.value!=td.notpass.value){swal('密码与确认密码不一致','请重新输入','error');return false;}
  }
  //检测用户名是否可用
  $(".ckuser").on("blur",function(e){
    var user = $.trim($(this).val());
	if(user!=''){
	   ajax({
		  method : 'post',
		  url : abspath+'/admin/ckuser',
		  data : {
			 'user' : user,
		  },
		  success : function (data) {
			 if(data==1){
			   $(".u-result").html('<font class="text-success"><span class="glyphicon glyphicon-ok-circle"></span> 可用</font>');
			 }else if(data==0){
			   $(".u-result").html('<font class="text-danger"><span class="glyphicon glyphicon-remove-circle"></span> 管理员ID被占用</font>');
			 }else{
			   $(".u-result").html('<font class="text-danger"><span class="glyphicon glyphicon-remove-circle"></span>'+data+'</font>');
			 }
		  },
		  async : true
	   });
	}else{
	  $(".u-result").html('<font class="text-danger"><span class="glyphicon glyphicon-remove-circle"></span> 请输入管理员登录ID</font>');
	}
  });
 </script>
</block>