<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <h1>IP过滤设置</h1>
   <form name="sysmod" method="post" action="">
    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="{:tabstyle()}">
      <tr>
        <td width="15%" height="30" align="left" valign="middle">参数说明</td>
        <td align="left" valign="middle">参数值</td>
      </tr>
      <tr>
        <td align="left" valign="middle">过滤IP:<br/> <span class="full999" style="font-size:11px;">（IP地址）用|分开<br/> 但不要在结尾加，例如：127.0.0.1|127.0.0.2<br/>添加在文本框内的IP将不能访问您的站点项目</span></td>
        <td align="left" valign="middle"><textarea name="shieldip" class="pubtextarea" style="width:50%;height:150px;">{$data['shieldip']}</textarea></td>
      </tr>
      <tr>
        <td align="left" valign="middle">提示说明：</td>
        <td align="left" valign="middle"><input type="text" value="{$data['iptips']}" name="iptips" class="text" /></td>
      </tr>
      <tr>
        <td align="left" height="35" valign="middle">保存</td>
        <td align="left" valign="middle">{:btn(array('vals'=>'确定保存','size'=>3,'type'=>'submit','icon'=>'cog','scene'=>'primary'))}</td>
      </tr>
    </table>
    </form>
 </div>
</block>