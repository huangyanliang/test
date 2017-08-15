<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <h1>添加友情链接</h1>
  <form name="adminform" method="post" action="" onSubmit="return syslink(document.adminform)">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">链接名称：</td>
    <td height="32" align="left"><input type="text" value="" name="topic" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">链接地址：</td>
     <td height="32" align="left"><input type="text" value="" name="linkurl" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">是否启用：</td>
     <td height="32" align="left">{:checkbox(0,1)} <span class="text-warning"> 注：勾选表示启用</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">资料排序：</td>
     <td height="32" align="left"><input type="text" value="0" name="ord" class="textsort"> <span class="text-warning"> 注：数字越小，排在越前。</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;</td>
     <td height="32" align="left">{:btn(array('vals'=>'提交','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'))}</td>
   </tr>
  </table>
  </form>
 </div>
</block>