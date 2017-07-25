<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <h1>添加资料</h1>
  <form name="adminform" method="post" action="" onSubmit="return sysdata(document.adminform)">
  <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="{:tabstyle()}">
   <tr>
    <td width="10%" height="32" align="right" valign="middle">资料标题：</td>
    <td height="32" align="left"><input type="text" value="" name="topic" class="textlong"> <span class="text-warning"> * </span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">资料所属：</td>
     <td height="32" align="left">{:dropdown($dshow['mdata'])}</td>
   </tr>
   <tr class="hide">
     <td height="32" align="right" valign="middle">跳转链接：</td>
     <td height="32" align="left"><input type="text" value="" name="linkurl" class="textlong"> <span class="text-warning">&nbsp;注：跳转链接请提填此项，没有请勿填写。</span></td>
   </tr>
   <tr class="hide">
     <td height="32" align="right" valign="middle">资料来源：</td>
     <td height="32" align="left"><input type="text" value="" name="source" class="textsort">&nbsp;&nbsp;作者：<input type="text" value="" name="author" class="textsort" ></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">资料简介：</td>
     <td height="32" align="left"><textarea name="intro" rows="6" cols="80" class="textareatext"></textarea>&nbsp;<span class="text-warning">(资料简介，没有要求填写，可以为空！)</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">上传图片：</td>
     <td height="32" align="left">{:uppic('','资料配图，没有要求可以不用上传！')}</td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">资料内容：</td>
     <td height="32" align="left"><textarea name="content" class="pubtextarea" style="width:90%;height:450px;"></textarea></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">关键词：</td>
     <td height="32" align="left"><textarea name="keyword" rows="6" cols="80" class="textareatext"></textarea><span class="text-warning">&nbsp;(资料关键词，未填的话，默认标题为关键词)</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">页面描述：</td>
     <td height="32" align="left"><textarea name="metades" rows="6" cols="80" class="textareatext"></textarea><span class="text-warning">&nbsp;(资料描述，未填的话，默认标题为页面描述)</span></td>
   </tr>
   <tr class="hide">
     <td height="32" align="right" valign="middle">标题颜色：</td>
     <td height="32" align="left"><input type="text" value="#000000" name="topiccolor" class="textsort colorselect" {:tooltip('标题颜色')} style="width:120px;"></td>
   </tr>
   <tr class="hide">
     <td height="32" align="right" valign="middle">标题大小：</td>
     <td height="32" align="left"><div class="input-group input-group-sm" style="width:100px;" {:tooltip('标题文字的大小，请输入小于30的整数，以免影响页面布局')}><input type="text" value="13" name="topicsize" class="form-control"><span class="input-group-addon">px</span></div></td>
   </tr>
   <tr class="hide">
     <td height="32" align="right" valign="middle">是否加粗：</td>
     <td height="32" align="left">{:checkbox(0,0,'isstrong')} <span class="text-warning"> 注：勾选表示加粗资料标题</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">是否置顶：</td>
     <td height="32" align="left">{:checkbox(0,0,'istop')} <span class="text-warning"> 注：勾选表示启用</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">是否启用：</td>
     <td height="32" align="left">{:checkbox(0,1)} <span class="text-warning"> 注：勾选表示启用</span></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">资料排序：</td>
     <td height="32" align="left"><input type="text" value="0" name="ord" class="textsort"></td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">发布日期：</td>
     <td height="32" align="left">
      <div class="input-group input-group-sm" style="width:300px;"{:tooltip('请按照 2015-08-01 08:00:00 格式改写发布日期')}><input type="text" value="{:date("Y-m-d H:i:s")}" name="date" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" class="form-control"><span class="input-group-addon">{:icon('calendar')}</span></div>
     </td>
   </tr>
   <tr>
     <td height="32" align="right" valign="middle">&nbsp;</td>
     <input type="hidden" value="{$tables}" name="tables">
     <input type="hidden" value="{$martables}" name="martables">
     <input type="hidden" value="{$sty}" name="sty">
     <td height="32" align="left">{:btn(array('vals'=>'提交','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'))}</td>
   </tr>
  </table>
  </form>
 </div>
</block>