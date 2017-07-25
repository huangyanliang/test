<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <h1>查看留言信息</h1>
  <form name="adminform" method="post" action="" onSubmit="return sysabout(document.adminform)">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">留言标题：</td>
    <td height="32" align="left"><input type="text" value="{$data['topic']}" name="topic" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">留言内容：</td>
     <td height="32" align="left"><textarea name="intro" rows="6" cols="80" class="textareatext">{$data['content']}</textarea></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">留言名称：</td>
     <td height="32" align="left">{$data['user']}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">联系电话：</td>
     <td height="32" align="left">{$data['tel']}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">手机号码：</td>
     <td height="32" align="left">{$data['phone']}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">联系地址：</td>
     <td height="32" align="left">{$data['address']}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">留言时间：</td>
     <td height="32" align="left">{$data['date']}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">是否处理：</td>
     <td height="32" align="left">{:checkbox($data['enabled'])} <span class="text-warning"> 注：勾选表示处理</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">留言IP：</td>
     <td height="32" align="left">{$data['ip']}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;</td>
     <input type="hidden" value="{$data['Id']}" name="id">
     <td height="32" align="left">{:btn(array('vals'=>'处理留言','size'=>3,'type'=>'submit','icon'=>'comment','scene'=>'primary'))}</td>
   </tr>
  </table>
  </form>
 </div>
</block>