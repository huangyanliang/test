<extend name="public/common" />
<block name="main">
 <div class="pubmain">
 <h1>修改密码</h1>
 <form name="adminform" method="post" action="{:U('index/modpass')}" onSubmit="return modpass(document.adminform)">
 <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}" style="margin:10px auto;">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">登录ID：</td>
    <td height="32" align="left"><input type="text" value="{:cookie('adminuser')}" name="user" disabled class="textlong"> <span class="text-warning"> * </span> <span class="u-result"></span> </td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">登录密码：</td>
     <td height="32" align="left"><input type="password" value="" name="pass" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">新密码：</td>
     <td height="32" align="left"><input type="password" value="" name="newpass" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">确认新密码：</td>
     <td height="32" align="left"><input type="password" value="" name="notpass" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;</td>
     <td height="32" align="left">{:btn(array('vals'=>'修改密码','size'=>3,'type'=>'submit','icon'=>'edit','scene'=>'primary'))}</td>
   </tr>
 </table>
 </form>
 </div>
 <script>
 function modpass(td){
   if(td.pass.value.length<6){swal('请输入登录密码','不的少于6位','error');return false;}
   if(td.newpass.value.length<6){swal('请输入新密码','不的少于6位','error');return false;}
   if(td.newpass.value!=td.notpass.value){swal('密码与确认密码不一致','请重新输入','error');return false;}
 }
 </script>
</block>