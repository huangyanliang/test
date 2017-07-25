<extend name="public/common" />
<block name="main">
 <div class="pubmain">
 <h1>编辑管理员</h1>
  <form name="adminform" method="post" action="" onSubmit="return sysadminuser(document.adminform)">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">登录ID：</td>
    <td height="32" align="left"><input type="text" value="{$data['user']}" name="user" disabled class="textlong"> <span class="text-warning"> * </span> <span class="u-result"></span> </td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">姓名：</td>
     <td height="32" align="left"><input type="text" value="{$data['realname']}" name="name" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">修改密码：</td>
     <td height="32" align="left"><input type="password" value="" name="pass" class="textlong"> <span class="text-warning"> 留空表示不修改密码 </span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;</td>
     <input type="hidden" value="{$data['Id']}" name="id">
     <td height="32" align="left">{:btn(array('vals'=>'确定修改','size'=>3,'type'=>'submit','icon'=>'edit','scene'=>'primary'))}</td>
   </tr>
  </table>
  </form>
 </div>
</block>