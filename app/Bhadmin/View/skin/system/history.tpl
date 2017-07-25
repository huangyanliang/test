<extend name="public/common" />
<block name="main">
 <div class="pubmain">
 <h1>后台管理员登录记录</h1>
  <form name="publist" method="post" action="" onSubmit="return pubdel(document.publist)"> 
  <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr class="active">
     <td width="45" align="center" valign="middle" height="37">{:ckall()}</td>
     <td width="60" align="left" valign="middle">序号</td>
     <td align="left" valign="middle">登录名</td>
     <td width="120" align="center" valign="middle">登录IP</td>
     <td width="160" align="center" valign="middle">登录时间</td>
     <td width="100px" align="center" valign="middle">操作</td>
   </tr>
   <volist name="data" id="obj">
   <tr class="maintr">
    <td align="center" valign="middle" height="37">{:ckbox($obj['Id'],$i-1)}</td>
    <td align="left" valign="middle">{$dshow['pageno']+$i}</td>
    <td align="left" valign="middle">{$obj['user']}</td>
    <td align="center" valign="middle">{$obj['ip']}</td>
    <td align="center" valign="middle">{$obj['date']}</td>
    <td align="center" valign="middle">{:btn(array('vals'=>'编辑','icon'=>'edit','scene'=>'default','ban'=>1))}</td>
   </tr>
   </volist>
   <tr>
    <td height="37" align="center" valign="middle">{:ckall()}</td>
    <td height="35" colspan="5" align="left" valign="middle">
    {:btn(array('vals'=>'删除','type'=>'submit','name'=>'deldata','icon'=>'trash','scene'=>'danger','ban'=>1))}
    <font class="text-warning">&nbsp;{:icon('warning-sign')} 提示，后台登录日志暂时不支持删除 ！</font>
    {$dshow['pageshow']}
    </td>
   </tr>
   </table>
   </form>
 </div>
</block>