<extend name="public/common" />
<block name="main">
 <div class="pubmain">
 <h1>后台管理中心</h1>
 <div class="success-div text-success bg-success">
  &nbsp;{:icon('cog')}&nbsp;&nbsp;系统提示：当您新增或者修改了数据信息时，请点击 {:btn(array('vals'=>'清除缓存','icon'=>'trash','scene'=>'primary','url'=>U('index/cleancache')))} ，删除掉系统缓存，保证前台显示最新的数据。
 </div>
 <if condition="$sysInfo['backupcount'] gt 0">
 <div class="success-div text-success bg-success">
  &nbsp;{:icon('info-sign')}&nbsp;&nbsp;您有 {$sysInfo['backupcount']} 条数据库备份信息，建议您定时 {:btn(array('vals'=>'备份','icon'=>'duplicate','scene'=>'primary','url'=>U('system/databackup')))} 您的数据库信息，您上次备份数据的时间为 {$sysInfo['backuptime']}。
 </div>
 </if>
 <if condition="$c_site eq 1">
 <div class="warning-div text-warning bg-warning">
  &nbsp;{:icon('alert')}&nbsp;&nbsp;您的网站项目处于关闭状态。点击 {:btn(array('vals'=>'设置','icon'=>'cog','scene'=>'primary','url'=>U('system/sysmod')))} 去开启项目。
 </div>
 </if>
 <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}" style="margin:10px auto;">
   <tr class="active"><td colspan="4" align="left" valign="middle">系统信息</td></tr>
   <tr>
     <td align="left" width="25%" valign="middle" height="25">服务器操作系统：</td>
     <td align="left" width="25%" valign="middle">{$sysInfo['os']}</td>
     <td align="left" width="25%" valign="middle">Web 服务器：</td>
     <td align="left" width="25%" valign="middle">{$sysInfo['web_server']}</td>
   </tr>
   <tr>
     <td align="left" valign="middle" height="25">PHP 版本：</td>
     <td align="left" valign="middle">{$sysInfo['php_ver']}</td>
     <td align="left" valign="middle">MySQL 版本：</td>
     <td align="left" valign="middle">{$sysInfo['mysql_ver']}</td>
   </tr>
   <tr>
     <td align="left" valign="middle" height="25">GD 版本：</td>
     <td align="left" valign="middle">{$sysInfo['gd']}</td>
     <td align="left" valign="middle">时区设置：</td>
     <td align="left" valign="middle">{$sysInfo['timezone']}</td>
   </tr>
   <tr>
     <td align="left" valign="middle" height="25">文件上传的最大大小：</td>
     <td align="left" valign="middle">{$sysInfo['max_filesize']}</td>
     <td align="left" valign="middle">Zlib 支持：</td>
     <td align="left" valign="middle">{$sysInfo['zlib']}</td>
   </tr>
   <tr>
     <td align="left" valign="middle" height="25">语言：</td>
     <td align="left" valign="middle">{$sysInfo['language']}</td>
     <td align="left" valign="middle">编码：</td>
     <td align="left" valign="middle">{$sysInfo['coding']}</td>
   </tr>
   <tr>
     <td align="left" valign="middle" height="25">后台版本：</td>
     <td align="left" valign="middle" title="power by thinkphp3.2 and bootstrap 3.0">{$sysInfo['admin_ver']}</td>
     <td align="left" valign="middle">联系邮箱：</td>
     <td align="left" valign="middle">bh#jxbht.com</td>
   </tr>
  </table>
 </div>
</block>