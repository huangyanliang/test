<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <h1>编辑广告信息</h1>
  <form name="adminform" method="post" action="" onSubmit="return sysadv(document.adminform)">
  <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="{:tabstyle()}">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">广告标题：</td>
    <td height="32" align="left"><input type="text" value="{$data['topic']}" name="topic" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">广告链接：</td>
     <td height="32" align="left"><input type="text" value="{$data['linkurl']}" name="linkurl" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">广告备注：</td>
     <td height="32" align="left"><input type="text" value="{$data['remark']}" name="remark" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">上传图片：</td>
     <td height="32" align="left">{:uppic($data['pic'],'请上传与属性一致的图片。',1)}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">图片宽度：</td>
     <td height="32" align="left"><input type="text" value="{$data['picwidth']}" name="picwidth" class="textsort"> px 图片高度：<input type="text" value="{$data['picheight']}" name="picheight" class="textsort"> px</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">是否启用：</td>
     <td height="32" align="left">{:checkbox($data['enabled'])} <span class="text-warning"> 注：勾选表示启用</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">广告排序：</td>
     <td height="32" align="left"><input type="text" value="{$data['ord']}" name="ord" class="textsort"></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;<input type="hidden" value="{$data['Id']}" name="id"></td>
     <td height="32" align="left">{:btn(array('vals'=>'确定修改','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'))}</td>
   </tr>
  </table>
  </form>
 </div>
</block>