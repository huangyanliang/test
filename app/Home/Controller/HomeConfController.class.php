<?php
 namespace Home\Controller;
 use Think\Controller;
 class HomeConfController extends Controller{ 
  protected $homecache_time = 3600 ; //设置常量的缓存的时间
  public function _initialize(){
	if(!$sysconf = S("sysconf")){  
	 $sys = M("systemconfig");
	 $needfield = 'metatitle,metades,metakey,companyname,address,en_metatitle,en_metades,en_metakey,en_companyname,en_address,email,tel,contact,mobile,icpnote,fax,c_site,c_text,sys_code,shieldip,iptips'; 
	 $sysconf   = $sys->field($needfield)->where('Id=1')->find();
	 S("sysconf",$sysconf,$this->homecache_time);
	}
	if($sysconf){
	 if(!$sysconf['c_site']){
	   $this->shieldip(get_client_ip(),$sysconf['shieldip'],$sysconf['iptips']);
	   $this->assign('metatitle',$sysconf['metatitle']);
	   $this->assign('metakey',$sysconf['metakey']);
	   $this->assign('metades',$sysconf['metades']);
	   $this->assign('en_metakey',$sysconf['en_metakey']);
	   $this->assign('en_metades',$sysconf['en_metades']);
	   $this->assign('sysconf',$sysconf);                              
	 }else{
	   header('Content-Type: text/html;charset=utf-8');
	   echo ($sysconf['c_text']!='') ? ('<h1 style="text-align:center;line-height:380px;color:#666;">'.$sysconf['c_text'].'</h1>') : ('<h1 style="text-align:center;line-height:380px;color:#666;">网站项目维护中..</h1>');
       exit();
	 }
	}else{
	  exit('<h1 style="text-align:center;line-height:250px;color:#666;">NO SYSTEM DATA</h1>');
	}
	if (!$link = S('indexlink')) {
	  $link   = M('links')->field('Id,topic,linkurl')->where('enabled=1')->order('ord asc,date desc')->limit(8)->select();
	  S('indexlink',$link,$this->homecache_time);
	}
	$this->assign('link',$link);//友情连接
  }
  //屏蔽IP
  private function shieldip($ip,$shieldip,$iptips=''){
    if($ip!='' && $shieldip!=''){
     $shieldip = ($shieldip!='') ? explode("|",$shieldip) : array();
	 if(count($shieldip)>0){
	  foreach($shieldip as $key=>$val){
	    if($val==$ip){
		  header('Content-Type: text/html;charset=utf-8');
	      echo ($iptips!='') ? ('<h1 style="text-align:center;line-height:380px;color:#666;">'.$iptips.'</h1>') : ('<h1 style="text-align:center;line-height:380px;color:#666;">抱歉，您的IP将禁用一段时间。</h1>');
		  exit();
	    }
	  }
	 }
    }
  }
 //公用防止屏蔽字符
 protected function shield($string){
   if($string!=''){
	 if(!$shield = S("wordsfilter")){
	   $shield = M("systemconfig")->field("wordfilter")->where('Id=1')->find();
	   S("wordsfilter",$shield,$this->homecache_time);
	 }
	 if($shield){
	   $words = ($shield['wordfilter']=="") ? array() : explode("|",$shield['wordfilter']);
	   if(count($words)>0){
	     foreach($words as $key=>$val){
		   $string = str_ireplace($words,"*",$string);
	     }
	   }
	 }
	 return $string;
   }
 }
} 
