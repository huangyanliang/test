<extend name="public/common" />
<block name="main">
 <div class="pubmain">
 <h1>数据库备份</h1>
 <form name="publist" method="post" action="" onSubmit=""> 
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" class="{:tabstyle()}">
   <tr class="active">
     <td width="45" align="center" valign="middle" height="35">{:ckall()}</td>
     <td width="140" align="left" valign="middle">数据表名称</td>
     <td width="140" align="left" valign="middle">数据表备注</td>
     <td width="140" align="left" valign="middle">记录数</td>
     <td align="left" valign="middle">操作</td>
   </tr>
   <volist name="data" id="obj">
   <tr class="maintr">
    <td align="center" valign="middle" height="35"><input type="checkbox" value="{$obj['table']}" name="datebasename[]" class="myselect" /></td>
    <td align="left" valign="middle">{$obj['table']}</td>
    <td align="left" valign="middle">***</td>
    <td align="left" valign="middle">{$obj['count']}</td>
    <td align="left" valign="middle">
     &nbsp;<a href="javascript:void(0)" onClick="setData('{$obj['table']}','opt')">{:btn(array('vals'=>'优化','tips'=>'优化数据表结构，清除索引数据','icon'=>'random','scene'=>'warning'))}</a>
     &nbsp;<a href="javascript:void(0)" onClick="setData('{$obj['table']}','repair')">{:btn(array('vals'=>'修复','tips'=>'修复数据表','icon'=>'wrench','scene'=>'success'))}</a>
    </td>
   </tr>
   </volist>
   <tr>
     <td height="35" align="center" valign="middle">{:ckall()}</td>
     <td colspan="4" align="left" valign="middle">
     &nbsp;{:btn(array('vals'=>'优化','type'=>'submit','tips'=>'优化数据表结构，清除索引数据','icon'=>'random','scene'=>'warning'))}
     &nbsp;{:btn(array('vals'=>'修复','type'=>'submit','tips'=>'修复数据表','icon'=>'wrench','scene'=>'success'))}
     &nbsp;{:btn(array('vals'=>'备份','type'=>'submit','tips'=>'对整个数据库的数据及结构进行备份处理，备份文件在服务器内','icon'=>'duplicate','scene'=>'primary'))}
     &nbsp;<font class="text-warning">&nbsp;{:icon('warning-sign')} 提示，建议您定期对数据库进行备份处理，防止数据丢失</font>
     </td>
   </tr>
  </table>
  </form>
 </div>
 <script>
 /* 修复/优化表 */
	function setData(db,act){
		if(db!='' && act!=''){  
		  ajax({
			method : 'post',
			url : abspath+'/admin/setdata',
			data : {
				'tables' : db,
				'acts' : act,
				'act' : 'setdata'
			},
			success : function (data) {
				if(data==1){
					if(act=="opt"){
					  swal('数据表['+db+']优化完成！','','success');
					}else if(act=="repair"){
					  swal('数据表['+db+']修复完成！','','success');
					}else{
					  swal('非系统命令，无法执行','','error');
					}
				}else{
				  swal(data,'','error');
				}
			},
			async : true
		});
	  }else{
		swal('数据提交有误','','error');
	  }
	}
	/* 结束 */
 </script>
</block>