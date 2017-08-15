<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <h1>资料编辑</h1>
  <form name="adminform" method="post" action="" onSubmit="return sysabout(document.adminform)">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">资料标题：</td>
    <td height="32" align="left"><input type="text" value="{$data['topic']}" name="topic" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">上传图片：</td>
     <td height="32" align="left">{:uppic($data['pic'],'资料配图，没有要求可以不用上传！')}</td>
   </tr>
   <if condition="$tables neq 'picshow'">
   <tr>
     <td height="32" align="right" valign="middle">资料简介：</td>
     <td height="32" align="left"><textarea name="intro" rows="6" cols="80" class="textareatext">{$data['intro']}</textarea>&nbsp;<span class="text-warning">(资料简介，没有要求填写，可以为空！)</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">资料内容：</td>
     <td height="32" align="left"><textarea name="content" class="pubtextarea" style="width:90%;height:450px;">{:showdata($data['content'])}</textarea></td>
   </tr>
   </if>
   <tr>
     <td height="32" align="right" valign="middle">是否启用：</td>
     <td height="32" align="left">{:checkbox($data['enabled'])} <span class="text-warning"> 注：勾选表示启用</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">资料排序：</td>
     <td height="32" align="left"><input type="text" value="{$data['ord']}" name="ord" class="textsort"> <span class="text-warning"> 注：数字越小，排在越前。</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;
     <input type="hidden" value="{$tables}" name="tables">
     <input type="hidden" value="{$sty}" name="sty">
     <input type="hidden" value="{$data['Id']}" name="id">
     </td>
     <td height="32" align="left">{:btn(array('vals'=>'确定修改','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'))}</td>
   </tr>
  </table>
  </form>
 </div>
</block>