<extend name="public/common" />
<block name="main">
<div class="pubmain">
  <h1>添加类别</h1>
  <form name="adminform" method="post" action="" onSubmit="return systype(document.adminform)">
  <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="{:tabstyle()}">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">类别名称：</td>
    <td height="32" align="left"><input type="text" value="" name="topic" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr class="hide">
     <td height="32" align="right" valign="middle">上传图片：</td>
     <td height="32" align="left">{:uppic('','类别图片，没有要求可以不用上传！')}</td>
   </tr>
   <tr class="hide">
     <td height="32" align="right" valign="middle">展示形式：</td>
     <td height="32" align="left">{:dropdown(3,0,'请选择展示形式',"showtype")}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">是否启用：</td>
     <td height="32" align="left">{:checkbox(0,1)} <span class="text-warning"> 注：勾选表示启用</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">类别排序：</td>
     <td height="32" align="left"><input type="text" value="0" name="ord" class="textsort"></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;</td>
     <input type="hidden" value="{$tables}" name="tables">
     <input type="hidden" value="{$sty}" name="sty">
     <td height="32" align="left">{:btn(array('vals'=>'提交','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'))}</td>
   </tr>
  </table>
  </form>
</div>
</block>