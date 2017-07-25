<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <h1><div class="pull-left">
   {:btn(array('vals'=>'系统设置','size'=>3,'icon'=>'cog','scene'=>'primary','url'=>U('system/sysmod')))}
   {:btn(array('vals'=>'水印设置','size'=>3,'icon'=>'tint','scene'=>'default','url'=>U('system/syswater')))}
  </div></h1>
<form name="sysmod" method="post" action="" onSubmit="return sysck(document.sysmod)">
    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="{:tabstyle()}">
      <tr>
        <td width="132" height="42" align="right" valign="middle">　站点名称：</td>
        <td height="42" align="left"><input type="text" value="{$data['metatitle']}" name="metatitle" class="textlong"> <span class="text-warning">( 应用程序名称，用在站点显示中 )</span></td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　站点ICP备案号：</td>
        <td height="32"><input type="text" value="{$data['icpnote']}" name="icpnote" class="text"> <span class="text-warning"> (如果没有，<a href="http://www.miibeian.gov.cn/" target="_blank">点这里申请</a>。申请过程是免费的,没有ICP备案号表示该网站不合法) </span> </td>
      </tr>
      <tr>
        <td width="132" height="82" align="right" valign="middle">　描述信息：</td>
        <td height="82" align="left"><textarea name="metades" rows="6" cols="80" class="textareatext">{$data['metades']}</textarea></td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　公司名称：</td>
        <td height="32"><input type="text" value="{$data['companyname']}" name="companyname" class="text"> </td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　站点网址：</td>
        <td height="32"><input type="text" value="{$data['companyurl']}" name="companyurl" class="text"> </td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　地址：</td>
        <td height="32"><input type="text" value="{$data['address']}" name="address" class="text"> </td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　电话：</td>
        <td height="32"><input type="text" value="{$data['tel']}" name="tel" class="text"> </td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　传真：</td>
        <td height="32"><input type="text" value="{$data['fax']}" name="fax" class="text"> </td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　邮箱：</td>
        <td height="32"><input type="text" value="{$data['email']}" name="email" class="text"> </td>
      </tr>
      <tr class="hide">
        <td height="32" align="right" valign="middle">系统通知：</td>
        <td height="32"><textarea name="sys_notice" rows="6" cols="80" class="textareatext">{$data['sys_notice']}</textarea>&nbsp;<span class="text-warning">(该段话显示在所有页面的头部)</span></td>
      </tr>
      <tr>
        <td width="132" height="82" align="right" valign="middle">　可放代码：</td>
        <td height="82" align="left"><textarea name="sys_code" rows="6" cols="80" class="textareatext">{$data['sys_code']}</textarea>&nbsp;<span class="text-warning">(您可以把第三方的代码放在这里，例如：百度统计代码)</span></td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　是否关闭项目：</td>
        <td height="32" align="left">{:checkbox($data['c_site'],0,'c_site')}<span class="text-warning">&nbsp;注：勾选表示关闭项目。</span></td>
      </tr>
      <tr>
        <td width="132" height="82" align="right" valign="middle">　关闭说明：</td>
        <td height="82" align="left"><textarea name="c_text" rows="6" cols="80" class="textareatext">{$data['c_text']}</textarea>&nbsp;<span class="text-warning">(若项目选择关闭，显示该属性内容)</span></td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　后台分页值：</td>
        <td height="32" align="left"><input type="text" value="{$data['adminpage']}" name="adminpage" class="textsort">&nbsp;<span class="text-warning">(设置后台资料管理分页值，大于1的整数，清除缓存后生效)</span></td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　</td>
        <td height="50">{:btn(array('vals'=>'确定保存','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'))}</td>
      </tr>
    </table>
    </form>
 <script>
  function sysck(td){
    if($.trim(td.metatitle.value)==''){swal('请输入站点名称','','error');return false;}
	if($.trim(td.metades.value)==''){swal('请输入站点描述','','error');return false;}
	if($.trim(td.metakey.value)==''){swal('请输入站点关键词','','error');return false;}
  }
 </script>
 </div>
</block>