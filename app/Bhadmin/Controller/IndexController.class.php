<?php
namespace Bhadmin\Controller;
use Think\Controller;
class IndexController extends Controller {
	//定义缓存
	private $cache_time = 3600;
	//后台首页
	public function index(){
	   $adminuid = cookie("adminuid");
	   if($adminuid){
		 $tabid = cookie("tabid");
		 $tabid = ($tabid==0 || $tabid==null) ? 1 : $tabid;
		 C("SHOW_PAGE_TRACE",false); //设置外围的不需要开启 SHOW_PAGE_TRACE
		 $this->assign('title','深海瑞格后台管理');
		 $this->assign('adminmemu',array(null,'系统管理','网站管理'));
		 $this->assign('tabid',$tabid); //注册区分板块的ID
		 $this->display();
	   }else{
		 $this->error("登录超时，请重新登录",U("index/login"),2);	
	   }
	}
	//修改密码
	public function modpass(){
	  $adminuid = cookie("adminuid");
	  if($adminuid){
		if(I('post.send','')=="修改密码"){
		  $oldpass = I('post.pass','',false);
		  $newpass = I('post.newpass','',false);
		  if($oldpass!=$newpass){
		    $login  = D("AdminUser");
			if($login->ckpass($oldpass,$adminuid)){
			 $result = $login->modpass($newpass,$adminuid);
			 if($result){
			   $this->success('密码修改成功，下次登录有效',U('index/modpass'),2);
			 }else{
			   $this->error('密码修改失败，请重试',U('index/modpass'),2);
			 }
			}else{
			 $this->error('抱歉，您输入的旧密码有误，请重新输入',U('index/modpass'),2);
			}
		  }else{
		    $this->error('新密码不能和原密码一致',U('index/modpass'),2);
		  }
		}else{
		  $this->assign('title','修改密码');
	      $this->display();
		}
	  }else{
	    $this->error("登录超时，请重新登录",U("index/login"),2);	
	  }
	}
	//系统管理
	public function main(){
	  if(cookie('adminuid')){	
		$sys_info = array();
		$sys_info['os']            = PHP_OS;
		$sys_info['web_server']    = $_SERVER['SERVER_SOFTWARE'];
		$sys_info['php_ver']       = PHP_VERSION;
		$sys_info['mysql_ver']     = $this->mysql_version();
		$sys_info['zlib']          = function_exists('gzclose') ? '是' : '否';
		$sys_info['timezone']      = function_exists("date_default_timezone_get") ? date_default_timezone_get() : '无法检测';
		$sys_info['max_filesize']  = ini_get('upload_max_filesize');
		$gd                        = gd_info();
		$sys_info['gd']            = $gd['GD Version'];
		$sys_info['admin_ver']     = 'v1.5.1.0 WRITE 20151019';
		$sys_info['language']      = 'zh-cn';
		$sys_info['coding']        = 'UTF-8';
		//检测最好备份信息
		$databackup = $this->getarrays(C("DB_BACKUP"));
		$sys_info['backupcount']   = count($databackup); //备份记录
		$sdata      = array(); 
	    if(count($databackup)>0){
		  for($i=0;$i<count($databackup);$i++){
		    $sdata[$i]['time'] = date("Y-m-d H:i:s",filectime($databackup[$i]));
		  }
	    }
		$sys_info['backuptime']= $sdata[count($databackup)-1]['time'];
		if(!$c_cite = S('s_cite')){
		  $dobj = M('systemconfig');
		  $data = $dobj->field('c_site')->where('Id=1')->limit(1)->find();
		  S('s_cite',$data['c_site'],$this->cache_time);
		}
		$this->assign('c_site',$c_cite);
		$this->assign('title','系统管理');
		$this->assign('sysInfo',$sys_info); //注册系统信息
	    $this->display();
	  }else{
		$this->error("登录超时，请重新登录",U('index/login'),2);
	  } 
	}
	
	//返回mysql版本
	private function mysql_version(){
	  if(!$ver = S('sql_ver')){
       $mobj = new \Think\Model();
       $version = $mobj->query("select version() as ver");
	   S('sql_ver',$version[0]['ver'],3600*24); //缓存MYSQL版本
       return $version[0]['ver'];
	  }else{
	   return $ver;
	  }
	}
	//返回数据库备份信息
    private static $filepath = array();	
    private function getfile($path){
		global $filepath;
		foreach(scandir($path) as $afile){
		  if($afile=='.'||$afile=='..') continue; 
		   if(is_dir($path.'/'.$afile)) { 
				$this->getfile($path.'/'.$afile);
			}
		else { 
				$filepath[]=$path.'/'.$afile;
			} 
		 } 
     }
     private function getarrays($path){
		global $filepath;
		$this->getfile($path);
		return $filepath;
     }
	//生成cookie来区分板块
	public function switchtab(){
	   $tabid = I('post.tabid',1,'intval');
	   cookie('tabid',$tabid);
	}
	//删除缓存内容
	public function cleancache() {
		// 清文件缓存
		$dirs = array (
				'./app/Runtime/',
				'./app/Html' 
		);
		
		// 清理缓存
		foreach ( $dirs as $value ) {
			$this->_rmdirr ( $value );
		}
        $this->success('系统缓存清除成功',U('index/main'),2);
		//@mkdir ( './app/runtime', 0777, true );
	}
	private function _rmdirr($dirname) {
		if (! file_exists ( $dirname )) {
			return false;
		}
		if (is_file ( $dirname ) || is_link ( $dirname )) {
			return unlink ( $dirname );
		}
		$dir = dir ( $dirname );
		if ($dir) {
			while ( false !== $entry = $dir->read () ) {
				if ($entry == '.' || $entry == '..') {
					continue;
				}
				$this->_rmdirr ( $dirname . DIRECTORY_SEPARATOR . $entry );
			}
		}
		$dir->close ();
		return rmdir ( $dirname );
	}
	//检测是否有权限
	public function login(){
	  if(!cookie('adminuid')){
		$this->display();
	  }else{
		$this->redirect('index');
	  }
	}
	//退出登录
	public function logout(){
	  cookie("adminuid",null);
	  cookie('adminuser',null);
	  cookie('tabid',null);
	  $this->success("账户已安全退出",U("index/login"),2);	
	}
	//验证登录
	public function checklogin(){
	  $user = I('post.user');
	  $pass = I('post.pass','',false);
	  $code = I('post.code');
	  if($user!='' && $pass!='' && $code!=''){
		$webcode  = cookie("admincode");
		if($code == $webcode){
		  $this->ajaxReturn(D("AdminUser")->login($user,$pass));
		}else{
		  $this->ajaxReturn(3);
		}
	  }else{
		$this->ajaxReturn(4);
	  }
	}
	//登录验证码
	public function logincode($facetype = 7,$num = 5, $size = 25, $width = 0, $height = 0) {
		!$width && $width = $num * $size * 4 / 5 + 15;
		!$height && $height = $size + 5;
		$str = "0123456789";
		$code = '';
		for ($i = 0; $i < $num; $i++) {
		  $code .= $str[mt_rand(0, strlen($str)-1)];
		}
		$im = imagecreatetruecolor($width, $height);
		$back_color = imagecolorallocate($im, 255, 255, 255);
		$boer_color = imagecolorallocate($im, 255, 255, 255);
		$text_color = imagecolorallocate($im, mt_rand(0, 100), mt_rand(0, 150), mt_rand(0, 200));
		imagefilledrectangle($im, 0, 0, $width, $height, $back_color);
		imagerectangle($im, 0, 0, $width-1, $height-1, $boer_color);
		$facetype = ($facetype==0) ? 'c:\\WINDOWS\\Fonts\\simsun.ttc' : THINK_PATH.'Library/Think/Verify/ttfs/'.$facetype.'.ttf';
		@imagefttext($im, 30 , 0, 5, $size + 3, $text_color, $facetype, $code);
		cookie('admincode',$code,3600*2);
		header("Cache-Control: max-age=1, s-maxage=1, no-cache, must-revalidate");
		header("Content-type: image/png;charset=gb2312");
		imagepng($im);
		imagedestroy($im);
	}
}