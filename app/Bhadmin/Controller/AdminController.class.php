<?php
namespace Bhadmin\Controller;
use Think\Controller;
class AdminController extends AdminCommonController {
  //修改属性
  public function modattr(){
   $tables = I('post.tables','');
   $field  = I('post.field','');
   $id     = I('post.id',0,'intval');
   $val    = I('post.val','');
   if($tables!='' && $field!='' && $id!=0){
	 $dobj = M($tables);
	 if($val!=''){
	   $val = intval($val);
	   $result = $dobj->where('Id='.$id)->limit(1)->save(array($field=>$val));
	 }else{
	    $data = $dobj->field($field)->where('Id='.$id)->find();
	    if($data[$field]==1){
	       $result = $dobj->where('Id='.$id)->limit(1)->save(array($field=>0));
	    }else{
	       $result = $dobj->where('Id='.$id)->limit(1)->save(array($field=>1));
	    }
	  }
	  $this->ajaxReturn($result);
   }
  }
  //修改排序
  public function modord(){
    $tables = I('post.tables','');
    $ord    = I('post.ord',0,'intval');
    $id     = I('post.id',0,'intval');
    if($tables!='' && $id!=0){
     $dobj = M($tables);
	 $result = $dobj->where('Id='.$id)->limit(1)->save(array('ord'=>$ord));
	 $this->ajaxReturn($result);
    }
  }
  //修复数据表
  public function setdata(){
    $acts   = I('post.acts','');
    $tables = I('post.tables','');
	$tables = ($tables!='') ? str_replace(C('DB_PREFIX'),'',$tables) : '';
	$conn   = M();
    if($acts=="opt"){
      $conn->query("OPTIMIZE TABLE `$tables`"); //优化
	  $this->ajaxReturn(1);
    }else if($acts=="repair"){
      $conn->query("REPAIR TABLE `$tables`"); //修复
	  $this->ajaxReturn(1);
    }else{
      $this->ajaxReturn(0);
    }
  }
  //检测用户是否存在
  public function ckuser(){
    $user = I('post.user','');
	if($user!=''){
      $login = D("AdminUser");
	  $this->ajaxReturn($login->ckuser($user));  
	}
  }
}