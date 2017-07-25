<?php
 namespace Home\Controller;
 use Think\Controller;
 class IndexController extends HomeConfController {
   
   public function index(){
	 if(!$adv = S('indexadv')) {
	   $adv   = M('advdata')->field('pic,topic,linkurl')->where('enabled=1')->order('ord asc,date desc')->limit('4')->select();
	   S('indexadv',$adv,$this->homecache_time);
	 }
	 $pro     = M('proshow')->field('pic,topic,en_topic,Id,intro,en_intro')->where('enabled=1')->order('ord asc,date desc')->limit('20')->select();
	 $about   = M('aboutus')->field('pic,intro,en_intro')->where('enabled=1 and Id=1')->find();
	 $new     = M('information')->field('Id,topic,en_topic,intro,en_intro,pic,date')->where('enabled=1 and inftype<>3')->order('ord asc,date desc')->limit(4)->select();
	 $advan   = M('advantage')->field('Id,topic,en_topic,intro,en_intro')->where('enabled=1')->order('ord asc,date desc')->limit(5)->select();
	 $this->assign('adv',$adv);
	 $this->assign('pro',$pro);
	 $this->assign('about',$about);
	 $this->assign('metatitle','');
	 $this->assign('en_metatitle','');
	 $this->assign('new',$new);
	 $this->assign('advan',$advan);
	 $this->assign('mark','index');
     $this->display('index');
   }
   //关于我们
   public function about(){
	 $id   = I('get.id',0,'intval');
	 if (!$id) $this->error('Valid data is not found, please try again。');
	 if($id == 1){$abs='about';}elseif($id==2){$abs='abouts';}elseif($id==3){$abs='smyt';}elseif($id==4){$abs='join';}
	 $data = M('aboutus')->field('topic,en_topic,content,en_content')->where('Id='.$id)->find();
	 if(!$data) $this->error('There is no data！！！');
	 $this->assign('data',$data);
	 $this->assign('about',$this->getdbdata());
	 $this->assign('id',$id);
	 $this->assign('metatitle',$data['topic']);
	 $this->assign('en_metatitle',$data['en_topic']);
	 $this->assign('mark',$abs);
	 $this->display('aboutus');
   }
   //新闻列表
   public function newlist(){
	 $inftype = I('get.inftype',0,'intval');
	 if($inftype==3){$new_t='join';}else{$new_t='new';}
	 $page    = I('get.p',1,'intval');
	 $title   = '新闻动态';
	 $en_title= 'News';
	 $search  = '1=1 AND enabled=1';
	 if($inftype != 0){
		$title =getdata('inftype',$inftype,'topic');
		$en_title =getdata('inftype',$inftype,'en_topic');
		if($title=='') $this->error('There is no data！！！');
		$search .= ' AND inftype='.$inftype;
     }
	 $count     = M('information')->where($search)->count();
	 $pagesize  = 12;
	 $pagecount = ceil($count/$pagesize);
	 if($page>$pagecount) $page=$pagecount;
	 $pobj    = new \Think\Page($count,$pagesize);
	 $new     = M('information')->field('Id,topic,en_topic,date')->where($search)->order('istop desc,ord asc,date desc')->page($page,$pagesize)->select();
	 $this->assign('newtype',$this->getdbdata('inftype'));
	 $this->assign('new',$new);
	 $this->assign('page',$pobj->show());
	 $this->assign('inftype',$inftype);
	 $this->assign('metatitle',$title);
	 $this->assign('en_metatitle',$en_title);
	 $this->assign('mark',$new_t);  
   	 $this->display('newlist');	
   }
   //新闻详情
   public function news(){
	 $id      = I('get.id',0,'intval');
	 if (!$id) $this->error('Valid data is not found, please try again。');
	 $data    = M('information')->field('date,hit,content,en_content,topic,en_topic,inftype')->where('enabled=1 and Id='.$id)->find();
	 if(!$data) $this->error('There is no data！！！');
	 M('information')->where('Id='.$id)->setInc('hit') ;
	 $title   = getdata('inftype',$data['inftype'],'topic');
	 $en_title   = getdata('inftype',$data['inftype'],'en_topic');
	 $this->assign('newtype',$this->getdbdata('inftype'));
	 $this->assign('data',$data);
	 $this->assign('metatitle',$title);
	 $this->assign('metades',$data['metades']);
	 $this->assign('metakey',$data['keyword']);
	 $this->assign('en_metatitle',$en_title);
	 $this->assign('mark','new'); 
     $this->display('new');
   }
   
   public function prolist(){
	   $inftype = I('get.inftype',0,'intval');
	   $page    = I('get.p',1,'intval');
	   $title   = '产品展示';
	   $en_title= 'Products';
	   $search  = 'enabled=1';
	   if($inftype!=0){
		  $title =getdata('protype',$inftype,'topic');
		  $en_title =getdata('protype',$inftype,'en_topic');
		  if($title=='') $this->error('There is no data！！！');
		  $search .= ' and inftype='.$inftype;
	   }
	   $count     = M('proshow')->where($search)->count();
	   $pagesize  = 6;
	   $pagecount = ceil($count/$pagesize);
	   if($page>$pagecount) $page=$pagecount;
	   $pobj    = new \Think\Page($count,$pagesize);
	   $pro     = M('proshow')->field('Id,topic,en_topic,pic,intro,en_intro')->where($search)->order('istop desc,ord asc,date desc')->page($page,$pagesize)->select();
	   $this->assign('pro',$pro);
	   $this->assign('page',$pobj->show());
	   $this->assign('protype',$this->getdbdata('protype'));
	   $this->assign('inftype',$inftype);
	   $this->assign('metatitle',$title);
	   $this->assign('en_metatitle',$en_title);
	   $this->assign('mark','product'); 
	   $this->display('prolist');
   }
   //产品详情
   public function proshow(){
   	   $id      = I('get.id',0,'intval');
	   if (!$id) $this->error('Valid data is not found, please try again。');
	   $data    = M('proshow')->field('*')->where('enabled=1 AND Id='.$id)->find();
	   if(!$data) $this->error('There is no data！！！');
	   $title   = getdata('protype',$data['inftype'],'topic');
	   $en_title   = getdata('protype',$data['inftype'],'en_topic');
	   $this->assign('data',$data);
	   $this->assign('protype',$this->getdbdata('protype'));
	   $this->assign('metatitle',$title);
	   $this->assign('en_metatitle',$en_title);
	   $this->assign('metades',$data['metades']);
	   $this->assign('metakey',$data['keyword']);
	   $this->assign('mark','product'); 
	   $this->display('proshow');
   }
   
   public function advan(){
	 $id   = I('get.id',0,'intval');
	 if (!$id) $this->error('Valid data is not found, please try again。');
	 $data = M('advantage')->field('topic,en_topic,content,en_content')->where('Id='.$id)->find();
	 if(!$data) $this->error('There is no data！！！');
	 $this->assign('data',$data);
	 $this->assign('about',$this->getdbdata('advantage'));
	 $this->assign('id',$id);
	 $this->assign('metatitle',$data['topic']);
	 $this->assign('en_metatitle',$data['en_topic']);
	 $this->assign('mark','index');
	 $this->display('advantage');
   }
   
   public function picshow(){
	 $page     = I('get.p',1,'intval');
	 $count    = M('picshow')->where('enabled=1')->count();
	 $pagesize = 9;
	 $pagecount= ceil($count/$pagesize);
	 if($page>$pagecount) $page=$pagecount;
	 $pobj     = new \Think\Page($count,$pagesize);
	 $picshow  = M('picshow')->field('Id,topic,en_topic,pic')->where('enabled=1')->order('ord asc,date desc')->page($page,$pagesize)->select();
	 $this->assign('picshow',$picshow);
	 $this->assign('about',$this->getdbdata());
	 $this->assign('page',$pobj->show());
	 $this->assign('metatitle','公司相册');
	 $this->assign('en_metatitle','Photos');
	 $this->assign('mark','picshow'); 
	 $this->display('picshow');
   }

   //在线留言
   public function feedback(){
	   $send    = I('post.send');
	   if($send == '提交'||$send == 'send'){
		 $user    = $this->shield(I('post.user',''));
		 $topic   = $this->shield(I('post.topic',''));
		 $email   = $this->shield(I('post.email',''));
		 $tel     = $this->shield(I('post.tel',''));
		 $content = $this->shield(I('post.content',''));
		 $code    = I('post.checkcode','');
		 $webcode = cookie("code");   
		 if($code == $webcode && $code!=''){
		 	$data = M('message')->add(array('user'=>$user,'topic'=>$topic,'email'=>$email,'phone'=>$tel,'content'=>$content,'date'=>dates()));
			if($data){
				$this->success('thankyou！！！',U('index/feedback'),2);
				exit();
	  		}else{
	   			$this->error('The message failed, please try again later！',U('index/feedback'),2);
			}
		 }else{ 
			$this->error('Check code is incorrect, please enter again！',U('index/feedback'),2);
		 }
	   }
       $this->assign('about',$this->getdbdata('aboutus'));
	   $this->assign('mark','feedback');
   	   $this->display('feedback');
   }
   //返回验证码
   public function code($num = 5, $size = 25, $width = 0, $height = 0) {
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
		$facetype = THINK_PATH.'Library/Think/Verify/ttfs/7.ttf';
		@imagefttext($im, 30 , 0, 5, $size + 3, $text_color, $facetype, $code);
		cookie('code',$code,3600*2);
		header("Cache-Control: max-age=1, s-maxage=1, no-cache, must-revalidate");
		header("Content-type: image/png;charset=gb2312");
		imagepng($im);
		imagedestroy($im);
	}
	//返回 单表 about
	private function getdbdata($db='aboutus') {
      if ($db != '') {
	    if (!$data = S($db.'_data')) {
		  $data = M($db)->field('Id,topic,en_topic,domain')->where('1=1 AND enabled=1')->order('ord ASC')->select();
		  S($db.'_data',$data,$this->homecache_time);
		} 
		return $data;
	  } else {
	    return '';
	  }
	}
   
   
 }