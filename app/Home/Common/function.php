<?php
//获取数据
function getdata($tables,$id,$field='topic'){
  if($tables!='' && $id!=0){
	$data=M($tables)->field($field)->where('Id='.$id)->find();
	 return ($data) ? $data[$field] : '';
  }else{
     return '';
  }
}
//返回日期 
function dates(){
   	return date("Y-m-d H:i:s"); //返回当前日期
}
?>