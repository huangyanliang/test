<?php
namespace Bhadmin\Controller;
use Think\Controller;
class SystemController extends AdminCommonController {
  //系统设置
  public function sysmod(){
	$save   = I('post.send','');
	if($save==''){
		$dobj   = M("systemconfig");
		$data   = $dobj->field('*')->where('Id=1')->find();
		if($data){
		  $this->assign('title','系统设置');
		  $this->assign('data',$data);
		  $this->display();
		}else{
		  $this->error('资料不存在，请重新操作！');
		}
	}else if($save=='确定保存'){
		 $metatitle   = I('post.metatitle','');
		 $icpnote     = I('post.icpnote','');
		 $metades     = I('post.metades','');
		 $metakey     = I('post.metakey','');
		 $companyname = I('post.companyname','');
		 $address     = I('post.address','');
		 $companyurl  = I('post.companyurl','');
		 $tel         = I('post.tel','');
		 $fax         = I('post.fax','');
		 $email       = I('post.email','');
		 $sys_notice  = I('post.sys_notice','');
		 $sys_code    = cg('sys_code');
		 $c_site      = I('post.c_site',0,'intval');
		 $c_text      = I('post.c_text','');
		 $adminpage   = I('post.adminpage',15,'intval');
		 $adminpage   = ($adminpage<1) ? 1 : $adminpage;
		 $dobj        = M("systemconfig");
		 $dobj = $dobj->where('Id=1')->save(array('metatitle'=>$metatitle,'icpnote'=>$icpnote,'metades'=>$metades,'metakey'=>$metakey,'companyname'=>$companyname,'address'=>$address,'companyurl'=>$companyurl,'tel'=>$tel,'fax'=>$fax,'email'=>$email,'sys_notice'=>$sys_notice,'sys_code'=>$sys_code,'c_site'=>$c_site,'c_text'=>$c_text,'adminpage'=>$adminpage));
		 if($dobj){
		   $this->success('资料更新成功');
		 }else{
		   $this->error('资料更新失败，请重新试试吧');
		 }
	}
  }
  //水印设置
  public function syswater(){
	$save   = I('post.send','');
	if($save==''){
		$dobj   = M("systemconfig");
		$data   = $dobj->field('*')->where('Id=1')->find();
		if($data){
		  $facearr = array('A','B','C','D','E','F','G','H');//7个字体
		  $this->assign('title','水印设置');
		  $this->assign('facetitle','字体'.$facearr[$data['facetype']]);
		  $this->assign('data',$data);
		  $this->assign('upload',true);
		  $this->assign("color",true);
		  $this->display();
		}else{
		  $this->error('资料不存在，请重新操作！');
		}
	}else if($save=='确定保存'){
		 $pic         = I('post.pic','');
		 $oldpic      = I('post.oldpic','');
		 if($pic!=$oldpic && $oldpic!=''){ 
		   if(file_exists(C("UPLOAD_PATH").$oldpic)){
		     @unlink(C("UPLOAD_PATH").$oldpic); //额外冗余图片
		   }
		 }
		 $waterpos    = I('post.waterpos',9,'intval');
		 $fonttext    = I('post.fonttext','');
		 $fontsize    = I('post.fontsize',20,'intval'); 
		 $fontcolor   = I('post.fontcolor','');
		 $wateralpha  = I('post.wateralpha',1,'intval');
		 $fontpos     = I('post.fontpos',9,'intval');
		 $iswater     = I('post.iswater',0,'intval'); 
		 $facetype    = I('post.facetype',0,'intval');  
		 $facetype    = ($facetype>7) ? 7 : $facetype;
		 $dobj        = M("systemconfig");
		 $dobj = $dobj->where('Id=1')->save(array('waterpos'=>$waterpos,'wateralpha'=>$wateralpha,'fonttext'=>$fonttext,'fontsize'=>$fontsize,'fontcolor'=>$fontcolor,'facetype'=>$facetype,'fontpos'=>$fontpos,'iswater'=>$iswater,'waterpic'=>$pic));
		 if($dobj){
		   $this->success('数据更新成功');
		 }else{
		   $this->error('数据更新失败，请重新试试吧');
		 }
	} 
  }
  //词汇过滤设置
  public function wordfilter(){
	$save   = I('post.send','');
	if($save==''){
		$dobj   = M("systemconfig");
		$data   = $dobj->field('wordfilter')->where('Id=1')->find();
		if($data){
		  $this->assign('title','词汇过滤设置');
		  $this->assign('data',$data);
		  $this->display();
		}else{
		  $this->error('资料不存在，请重新操作！');
		}
	}else if($save=='确定保存'){
		 $wordfilter  = I('post.wordfilter','');  
		 $dobj        = M("systemconfig");
		 $dobj = $dobj->where('Id=1')->save(array('wordfilter'=>$wordfilter));
		 if($dobj){
		   $this->success('数据更新成功');
		 }else{
		   $this->error('数据更新失败，请重新试试吧');
		 }
	} 
  }
  //ip过滤设置
  public function ipfilter(){
	$save   = I('post.send','');
	if($save==''){
		$dobj   = M("systemconfig");
		$data   = $dobj->field('shieldip,iptips')->where('Id=1')->find();
		if($data){
		  $this->assign('title','IP过滤设置');
		  $this->assign('data',$data);
		  $this->display();
		}else{
		  $this->error('资料不存在，请重新操作！');
		}
	}else if($save=='确定保存'){
		 $shieldip    = I('post.shieldip','');  
		 $iptips      = I('post.iptips',''); 
		 $dobj        = M("systemconfig");
		 $dobj = $dobj->where('Id=1')->save(array('shieldip'=>$shieldip,'iptips'=>$iptips));
		 if($dobj){
		   $this->success('数据更新成功');
		 }else{
		   $this->error('数据更新失败，请重新试试吧');
		 }
	} 
  }
  //用户列表
  public function userlist(){
    $send = I('post.deldata','');
	if($send==''){
		$dobj  = M("adminuser");
		$did   = I('get.did',1,'intval');
		$page  = I('get.page',1,'intval');
		$count = $dobj->count();
		$pobj  = new \Think\AdminPage($count,C('ADMINPAGE'));
		$data  = $dobj->field('*')->order('last_time desc')->limit($pobj->limit)->select();
		$datashow = array();
		$datashow['pageno']   = ($page-1)*$pobj->pagesize;
		$datashow['pageshow'] = ($count>C('ADMINPAGE')) ? $pobj->showpage() : '';
		$datashow['adminuid'] = cookie('adminuid');
		$this->assign('title','管理员列表');
		$this->assign('dshow',$datashow);
		$this->assign('data',$data);
		$this->display();
	}else if($send=='删除'){
	   $deldata = isset($_POST['pubbox']) ? $_POST['pubbox'] : array();
	   if(count($deldata)>0){
	     //定义不能删除的 ID
		 $nodelArr = array(1);
		 $delcount = 0;
		 $delobj   = M('adminuser');
		 foreach($deldata as $val){
		   if(!in_array($val,$nodelArr)){
			 $delobj->delete($val);
			 $delcount += 1;
		   }else{
		     $delcount +=0;
		   }
		 }
		 $this->success('数据操作成功，影响数据'.$delcount.'条',U('system/userlist'),2);
	   }else{
	     $this->error('请至少选择一条数据进行操作',U('system/userlist'),2);
	   }
	}
  }
  //用户编辑
  public function usermod(){
    $id = I('request.id',0,'intval');
	$save   = I('post.send','');
    if($id!=0){
	   if($save==""){
		 $dobj  = M("adminuser");	
		 $data  = $dobj->field('*')->where('Id='.$id)->find();
		 if($data){
			$this->assign('title','用户编辑');
			$this->assign('data',$data);
			$this->display();
		 }else{
			$this->error('资料不存在，请重新操作！');
		 }
	   }else if($save=='确定修改'){
	     $pass = I('post.pass');
		 $name = I('post.name');
		 $dobj = M("adminuser");
		 $dobj = $dobj->where('Id='.$id)->save(array('realname'=>$name));
		 if($dobj){
		   $this->success('数据更新成功');
		 }else{
		   $this->error('数据更新失败，请重新试试吧');
		 } 
	   }
	}else{
	 $this->error('ID未指定,无法获取任何数据');
	}
  }
  //用户添加
  public function useradd(){
	$this->assign('title','添加管理员');
	$this->display();
  }
  //创建用户
  public function createuser(){
	$user = I('post.user','');
	$pass = I('post.pass','');
	$name = I('post.name','');
	if($user!='' && $pass!='' && $name!=''){
      $uobj = D("AdminUser");
	  if($uobj->adduser($user,$pass,$name)){
	    $this->success('管理员添加成功',U('system/userlist'),2);
	  }else{
	    $this->success('管理员添加失败，请重试',U('system/useradd'),2);
	  }
	}else{
	  $this->error('请先完善管理员信息',U('system/useradd'),2);
	}
  }
  //登录日志
  public function history(){
    $dobj  = M("adminrecord");
	$did   = I('get.did',1,'intval');
	$page  = I('get.page',1,'intval');
	$order = ($did==1) ? 'desc' : 'asc'; 
	$count = $dobj->count();
	$pobj  = new \Think\AdminPage($count,C('ADMINPAGE'));
	$data  = $dobj->field('*')->order('date '.$order)->limit($pobj->limit)->select();
	$datashow = array();
	$datashow['pageno']   = ($page-1)*$pobj->pagesize;
	$datashow['pageshow'] = ($count>C('ADMINPAGE')) ? $pobj->showpage() : '';
	$datashow['did']      = $did;
	$datashow['url']      = U('system/history','page='.$page);
	$this->assign('title','系统登录日志');
    $this->assign('dshow',$datashow);
	$this->assign('data',$data);
	$this->display();
  }
  //广告列表
  public function advlist(){
	$tables  = 'advdata';
	$send    = I('post.deldata','');
	if($send==''){
		$dobj    = M($tables);
		$page    = I('get.page',1,'intval');
		$count   = $dobj->count();
		$pobj    = new \Think\AdminPage($count,C('ADMINPAGE'));
		$data    = $dobj->field('*')->order('Id asc,ord asc')->limit($pobj->limit)->select();
		$datashow = array();
		$datashow['pageno']   = ($page-1)*$pobj->pagesize;
		$datashow['pageshow'] = ($count>C('ADMINPAGE')) ? $pobj->showpage() : '';
		$datashow['table']    = $tables;
		$this->assign('title','广告管理');
		$this->assign('dshow',$datashow);
		$this->assign('data',$data);
		$this->display();
	}else if($send=="删除"){
	    $delid = isset($_POST['pubbox']) ? $_POST['pubbox'] : array();
	    if(count($delid)>0){
	     //定义不能删除的 ID
		 $nodelArr = array(1);
		 $delcount = 0;
		 foreach($delid as $val){
		   if(!in_array($val,$nodelArr)){
			 $del = $this->delbyid($tables,$val);
			 $delcount += ($del) ? 1 : 0;
		   }else{
		     $delcount +=0;
		   }
		 }
		 $this->success('数据操作成功，影响数据'.$delcount.'条',U('system/advlist'),2);
	    }else{
	     $this->error('请至少选择一条数据进行操作',U('system/advlist'),2);
	    }
	}
  }
  public function getdata(){
   print_r($_POST);
  }
  //广告添加
  public function advadd(){
	$send  = I('post.send','');
	if($send==""){
	  $this->assign('upload',true);
	  $this->assign('title','广告添加');
	  $this->display();
	}else if($send=="提交"){
	  $topic     = I('post.topic','');
	  $linkurl   = I('post.linkurl','');
	  $remark    = I('post.remark','');
	  $pic       = I('post.pic','');
	  $picwidth  = I('post.picwidth','');
	  $picheight = I('post.picheight','');
	  $enabled   = I('post.enabled',0,'intval');
	  $ord       = I('post.ord',0,'intval');
	  $dobj      = M("advdata");
	  $dobj = $dobj->add(array('topic'=>$topic,'linkurl'=>$linkurl,'remark'=>$remark,'pic'=>$pic,'picwidth'=>$picwidth,'picheight'=>$picheight,'enabled'=>$enabled,'ord'=>$ord,'date'=>dates()));
	  if($dobj){
	   $this->success('广告添加成功');
	  }else{
	   $this->error('广告添加失败，请重新试试吧');
	  } 
	}
  }
  //广告修改
  public function advmod(){
    $id = I('request.id',0,'intval');
	$save   = I('post.send','');
    if($id!=0){
	   if($save==""){
		 $dobj  = M("advdata");	
		 $data  = $dobj->field('*')->where('Id='.$id)->find();
		 if($data){
			$this->assign('title','编辑广告信息');
			$this->assign('upload',true);
			$this->assign('data',$data);
			$this->display();
		 }else{
			$this->error('资料不存在，请重新操作！');
		 }
	   }else if($save=='确定修改'){
		  $topic     = I('post.topic','');
		  $linkurl   = I('post.linkurl','');
		  $remark    = I('post.remark','');
		  $pic       = I('post.pic','');
		  $oldpic    = I('post.oldpic','');
		  if($pic!=$oldpic && $oldpic!=''){ 
		    if(file_exists(C("UPLOAD_PATH").$oldpic)){
			 @unlink(C("UPLOAD_PATH").$oldpic);
			}
		  }
		  $picwidth  = I('post.picwidth','0','intval');
		  $picheight = I('post.picheight','0','intval');
		  $enabled   = I('post.enabled',0,'intval');
		  $ord       = I('post.ord',0,'intval');
		  $dobj = M("advdata");
		  $dobj = $dobj->where('Id='.$id)->save(array('topic'=>$topic,'linkurl'=>$linkurl,'remark'=>$remark,'pic'=>$pic,'picwidth'=>$picwidth,'picheight'=>$picheight,'enabled'=>$enabled,'ord'=>$ord,'date'=>dates()));
		  if($dobj){
		    $this->success('数据更新成功');
		  }else{
		    $this->error('数据更新失败，请重新试试吧');
		  } 
	   }
	}else{
	 $this->error('ID未指定,无法获取任何数据');
	}
  }
  //数据库管理
  public function databackup(){
	$send = I('post.send','');
	if($send==''){
		$this->assign('title','数据库备份');
		if(!$tabarr = S('tabarr')){
			$dataArr = array(); 
			$tabobj  = D('Baksql');
			$data    = $tabobj->getTables();
			if(count($data)>0){
			  for($i=0;$i<count($data);$i++){
				$dataArr[$i]['table'] = $data[$i];
				$dobj                 = M(str_replace(C('DB_PREFIX'),'',$data[$i]));
				$dataArr[$i]['count'] = $dobj->count(); 
			  }
			}
			$tabarr = $dataArr;
			S('tabarr',$dataArr,3600); //缓存字段信息
		}
		$this->assign('data',$tabarr);
		$this->display();
	}else if($send=="优化"){
	  $table = isset($_POST['datebasename']) ? $_POST['datebasename'] : array();
	  if(count($table)>0){
		$conn    = M();
	    foreach($table as $val){
		  $val = ($val!='') ? str_replace(C('DB_PREFIX'),'',$val) : '';
	      $conn->query("OPTIMIZE TABLE `$val`");
		}
		$this->success('数据表优化成功！','',1);
	  }else{
	    $this->error('请至少选择一条数据进行操作',U('system/databackup'),2);
	  }
	}else if($send=="修复"){
	  $table = isset($_POST['datebasename']) ? $_POST['datebasename'] : array();
	  if(count($table)>0){
		$conn    = M();
	    foreach($table as $val){
		  $val = ($val!='') ? str_replace(C('DB_PREFIX'),'',$val) : '';
	      $conn->query("REPAIR TABLE `$val`");
		}
		$this->success('数据表修复成功！','',1);
	  }else{
	    $this->error('请至少选择一条数据进行操作',U('system/databackup'),2);
	  } 
	}else if($send=="备份"){
	  $bck    = D('Baksql');
	  $result = $bck->backall(); //备份全部
	  if($result){
	    $this->success('数据库备份成功',U('system/databackup'),2);
	  }else{
	    $this->error('数据库备份失败，请重试',U('system/databackup'),2);
	  }
	}
  }
  //备份列表非数据库版
  public function databackuplist(){
    $data  = $this->getarrays(C('DB_BACKUP'));
	$sdata = array();
	if(count($data)>0){
		for($i=0;$i<count($data);$i++){
		  $sdata[$i]['size'] = (file_exists($data[$i])) ? $this->size(filesize($data[$i])) : 0;
		  $sdata[$i]['time'] = date("Y-m-d H:i:s",filectime($data[$i]));
		  $sdata[$i]['path'] = str_replace(C("DB_BACKUP").'/','',$data[$i]);
		}
	}
	krsort($sdata);
	$datauparr = array('isdel'=>1,'isre'=>0); //是否开启删除和还原
	$this->assign('title','数据库备份管理');
	$this->assign('data',$sdata);
	$this->assign('datasys',$datauparr);
	$this->display();
  }
  //size
  private function size($_size){
	  $_rand = ceil(($_size/1024));	
	  if($_rand<1) return $_size."bit";	
	  if($_rand>1 && $_rand<1024) return $_rand."KB";
	  if($_rand>1024) return ceil(($_rand/1024))."MB";
	  if($_rand==1) return $_rand."KB";
	  if($_rand==1024) return $_rand."MB";
  }
  //删除备份
  public function deldataup(){
    $delpath = I('get.delpath','',false);
	if($delpath!=''){
	  @unlink(C('DB_BACKUP').$delpath.'.sql');
	  $this->error('数据删除成功',U('system/databackuplist'),2); 
	}else{
	  $this->error('数据删除失败，数据不存在，请检查',U('system/databackuplist'),2);
	}
  }
  //下载备份
  public function downdataup(){
	$downpath = I('get.downpath','',false);
	if($downpath!=''){
	  $bck = D('Baksql');
	  $bck->downloadBak(C('DB_BACKUP').$downpath.'.sql');
	}else{
	  $this->error('数据下载失败，数据不存在，请检查',U('system/databackuplist'),2);
	}
  }
  //还原备份 //慎用
  public function redataup(){
	$repath = I('get.repath','',false);
	if($repath!=''){
	  $bck    = D('Baksql');
	  $result = $bck->recover($repath.'.sql');
	  if($result){
	      $this->success('备份还原成功',U('index/main'),2);
	  }else{
		  $this->error('备份还原失败，请重试',U('index/main'),2);
	  }
	}else{
	  $this->error('数据还原失败，数据不存在，请检查',U('system/databackuplist'),2);
	}
  }
  //图片管理器
  public function syspic(){
    $act  = I('get.act',1,'intval');
	$path = isset($_GET['path']) ? $_GET['path'] : '';
	$path = C("UPLOAD_PATH").$path;
	$act  = ($act<1 || $act>4) ? 1 : $act;
    if($act==1) $scene = array('primary','default','default');
    if($act==2) $scene = array('default','primary','default');
    if($act==3 || $act==4) $scene = array('default','default','primary');
	$data  = $this->getarrays($path);
	$count = count($data);
	$pageS = ($act==2 || $act==4) ? C('ADMINPAGE')*2 : C('ADMINPAGE');
	$sdata = array();
	if($act!=3){
		$pobj  = new \Think\AdminPage($count,$pageS);
		$start = explode(",",$pobj->limit);
		$start = isset($start[0]) ? $start[0] : 0;
		$page  = I('get.page',1,'intval');
		$pagesize  = ($count>=$pageS*$page) ? $pageS*$page : $count;
		$normalpic = ($act!=3) ? $this->normalpic() : array(); //model3 no check
		for($i=$start;$i<$pagesize;$i++){
		  $sdata[$i]['size'] = (file_exists($data[$i])) ? $this->size(filesize($data[$i])) : 0;
		  $sdata[$i]['time'] = date("Y-m-d H:i:s",filectime($data[$i]));
		  $sdata[$i]['spic'] = str_replace($path.'/',"",$data[$i]);
		  $sdata[$i]['pic']  = $data[$i]; 
		  if($act!=4){
			$sdata[$i]['isou'] = (in_array(str_replace(C("UPLOAD_PATH").'/',"",$data[$i]),$normalpic)) ? 1 : 0;
		  }else{
			$sdata[$i]['isou'] = (in_array(str_replace(C("UPLOAD_PATH"),"",$data[$i]),$normalpic)) ? 1 : 0;
		  }
		}
	}
	//文件夹模式
	$objfile = array();
	if($act==3){
	 $handle = opendir($path);
	 $dwsArr = array ('.','..');
	 $j = 0;
	 while (($file = readdir($handle))!==false) {
		if (!in_array($file,$dwsArr)) {	
		  $objfile[$j]['file']  = $file;
		  $objfile[$j]['count'] = $this->filecount($path.$file.'/');
		  $j++;	
		}
	 }
	 closedir($handle);
	}
	//ending
	krsort($sdata);
	$datashow['pageshow']  = ($count>$pageS && $act!=3) ? $pobj->showpage() : '';
	$this->assign('dshow',$datashow);
	$this->assign("file",$objfile);
	$this->assign('data',$sdata);
	$this->assign("act",$act);
	$this->assign('scene',$scene);
	$this->display();
  }
  //删除图片数据
  public function sysdelpic(){
    $send = I('post.deldata');
	if($send=="删除" || $send=="选中删除"){
	  $delpic = I('post.pubbox',array(),false);
	  $succ   = 0;
	  if(count($delpic)>0){
	    for($i=0;$i<count($delpic);$i++){
		  if (file_exists($delpic[$i])){
		    $succ = @unlink($delpic[$i]) ? $succ+1 : $succ+0;
		  }
		}
		//you must delete cache of piccache
		S("normalpic",null);
		$this->success('图片操作成功，共计删除图片 '.$succ.' 张');
		//ending
	  }else{
	   $this->error('请至少选择一条数据操作');
	  }
	}
  }
  //获取文件夹下文件数量
  private function filecount($path){
    $handle = opendir($path);
	$f = 0;
	$dwsArr  = array ('.','..');
	while (($file = readdir($handle))!==false) {
	  if (!in_array($file,$dwsArr)) {		
		$f++;
	  }
	}
	closedir($handle);
    //没有返回的话就清除空的文件夹
	($f==0) ? @rmdir($path) : '';
	return $f;
  }
  //读取图片
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
   //获取有效的图片信息
   private function normalpic($addField=array()){
	//设置缓存信息
	 $tobj    = D('Baksql');
	 $tables  = $tobj->getTables();
	 $normal  = array();
	 if(count($tables)>0){
	   foreach($tables as $val){
		 if($this->ckfields($val)){
		   $obj   = M(str_replace(C('DB_PREFIX'),'',$val));
		   $odata = $obj->field('pic')->select();
		   if($odata){
		    foreach($odata as $okey=>$oval){
			   if($oval['pic']!=''){
			     $normal[] = $oval['pic'];
			   }
		    }
		   }
		 }
	   }
	 }
	 return $normal; //返回数据库的图片
   }
  //检测是否包含字段
  private function ckfields($table,$field='pic'){
     if($table!=''){
	   $obj      = M();
	   $fdata    = $obj->query("SHOW COLUMNS FROM `$table`");
	   $fieldarr = array();
	   foreach($fdata as $key=>$val){
	     $fieldarr[] = $val['Field'];
	   }
	   return (in_array($field,$fieldarr)) ? true : false;
	 }else{
	   return false;
	 }
  }
   
}