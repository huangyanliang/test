<?php
namespace Admin\Model;
use Think\Model;

class AdminUserModel extends Model {
  //返回真实的表
  private function tab($t=1){
    return ($t==1) ? C('DB_PREFIX').'adminuser' : C('DB_PREFIX').'adminrecord';
  }
  //管理员登录
  public function login($user,$pass){
    if($user!='' && $pass!=''){
	 $map = array(
	               'user'=>$user,
	             );
	 $check = $this->table($this->tab())->field("Id,user,userpass,randcode")->where($map)->find();
	 if($check['userpass'] == md5($check['randcode'].$pass)){
	   //生成cookie//更新登录的信息
	   $randcode = $this->getcode();
	   $savedata = array(
	                    'last_time' => date('Y-m-d H:i:s'),
						'last_ip'   => get_client_ip(),
						'randcode'  => $randcode,
						'userpass'  => md5($randcode.$pass)
	                    );
	   //访问量+1
	   $this->table($this->tab())->where($map)->setInc('count');
	   $this->table($this->tab())->where($map)->limit(1)->save($savedata);
	   //新增访问历史数据
	   $createdata = array(
	                       'user' => $user,
						   'ip'   => get_client_ip(),
						   'date' => date('Y-m-d H:i:s')
						  );
	   $this->table($this->tab(2))->add($createdata);
	   cookie('adminuid',$check['Id'],3600*2);
	   cookie('adminuser',$check['user'],3600*2);
	   return 1;
	 }else{
	   return 2;
	 }
	}else{
	 return 0;
	}
  }
  //修改密码
  public function modpass($pass,$uid){
    if($pass!='' && $uid!=''){
	  $randcode = $this->getcode();
	  $savedata = array(
	                   'randcode' => $randcode,
					   'userpass' => md5($randcode.$pass),
					   );
	  $result = $this->table($this->tab())->where(array('Id'=>$uid))->limit(1)->save($savedata);
	  return ($result) ? true : false;
	}else{
	  return false;
	}
  }
  //检测密码是否正确
  public function ckpass($pass,$uid){
   if($pass!='' && $uid!=''){
    $data = $this->table($this->tab())->field('userpass,randcode')->where(array('Id'=>$uid))->find();
	if($data){
	  return ($data['userpass'] == md5($data['randcode'].$pass)) ? true : false;
	}else{
	  return false;
	}
   }else{
     return false;
   }
  }
  //检测用户是否存在
  public function ckuser($user){
    if($user!=''){
      $data = $this->table($this->tab())->where(array('user'=>$user))->find();
	  return ($data) ? 0 : 1;
	}else{
	  return 0;
	}
  }
  //创建管理员
  public function adduser($user,$pass,$name,$auth=''){
    if($user!='' && $pass!=''){
	  if($this->ckuser($user)){
	    $randcode = $this->getcode();
	    $savedata = array(
		               'user'     => $user,
					   'realname' => $name,
	                   'randcode' => $randcode,
					   'userpass' => md5($randcode.$pass),
					   'auth'     => $auth,
					   'reg_time' => date("Y-m-d H:i:s")
					   ); 
		$result = $this->table($this->tab())->add($savedata);
		return ($result) ? true : false;
	  }else{
	    return false;
	  }
	}else{
	  return false;
	}
  }
  //更新随机码
  private function getcode($len=6){
	 $str = "0123456789";
	 $code = '';
	 for ($i = 0; $i < $len; $i++) {
	    $code .= $str[mt_rand(0, strlen($str)-1)];
	 }
	 return $code;
  }
  
}