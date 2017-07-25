<?php
namespace Bhadmin\Controller;
use Think\Controller;
class AdminCommonController extends Controller {
  
  public function _initialize(){
    if(!cookie("adminuid")){
	  $this->error("登录超时，请重新登录",U("index/login"),3);	
	}else{
	  //设置后台分页值
	  if(!$admin_conf = S('admin_conf')){
	    $dobj         =  M("systemconfig");
	    $admin_conf   = $dobj->field('adminpage')->where('Id=1')->find();
		S('admin_conf',$admin_conf,600); //分页值缓存
	  }
	  C('ADMINPAGE',$admin_conf['adminpage']);
	  $this->assign('title','深海瑞格后台管理');
	}
  }
  /*
	@ 根据ID删除数据
	@ 自动检测表内是否有pic字段,有的话检测是否有图片，有的话删除图片数据
  */
  protected function delbyid($tables,$id){
    if($tables!='' && $id!=''){
	  $obj = M($tables);
	  $data = $obj->where('Id='.$id)->find();
	  if($data){
	    $pic = $obj->where('Id='.$id)->getField('pic');//检测是否有图片
		if($pic){
		   if(file_exists(C("UPLOAD_PATH").$pic)){
		     @unlink(C("UPLOAD_PATH").$pic); //额外删除图片
		   }
		}
		return $obj->delete($id); //删除数据
	  }else{
	    return false;
	  }
	}
  }
  
   //返回topic
  protected function gettopic($tables,$id,$field='topic'){
    if ($tables!='' && $id!=0) {
	  $dobj = M($tables)->field($field)->where(array('Id='.$id))->find();
	  return ($dobj) ? $dobj[$field] : '--';
	} else {
	  return '--';
	}
  }

}