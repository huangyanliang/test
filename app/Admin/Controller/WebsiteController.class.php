<?php
namespace Admin\Controller;
use Think\Controller;
class WebsiteController extends AdminCommonController {
  //关于我们
  public function aboutlist(){
	$tables  = I('get.tables');
	$sty     = I('get.sty',1,'intval');
	$send    = I('post.deldata','');
	if($tables=="") $this->error('数据表为空，无法获取数据',U('index/main'),2);
	if($send==''){
		$dobj    = M($tables);
		$page    = I('get.page',1,'intval');
		$order   = ($did==1) ? 'desc' : 'asc'; 
		$where   = '1=1 and sty='.$sty;
		$count   = $dobj->where($where)->count();
		$pobj    = new \Think\AdminPage($count,C('ADMINPAGE'));
		$data    = $dobj->field('*')->where($where)->order('ord asc')->limit($pobj->limit)->select();
		$datashow = array();
		$datashow['pageno']   = ($page-1)*$pobj->pagesize;
		$datashow['pageshow'] = ($count>C('ADMINPAGE')) ? $pobj->showpage() : '';
		$datashow['table']    = $tables;
		$this->assign('title','关于我们管理');
		$this->assign('dshow',$datashow);
		$this->assign('data',$data);
		$this->display();
	}else if($send=="删除"){
	    $deldata = isset($_POST['pubbox']) ? $_POST['pubbox'] : array();
	    if(count($deldata)>0){
	     //定义不能删除的 ID
		 $nodelArr = array();
		 $delcount = 0;
		 foreach($deldata as $val){
		   if(!in_array($val,$nodelArr)){
			 $del = $this->delbyid($tables,$val);
			 $delcount += ($del) ? 1 : 0;
		   }else{
		     $delcount +=0;
		   }
		 }
		 $this->success('数据操作成功，影响数据'.$delcount.'条');
	    }else{
	     $this->error('请至少选择一条数据进行操作');
	    }
	}
  }
  //资料添加
  public function aboutadd(){
	$send    = I('post.send','');
	$tables  = I('request.tables','');
	$sty     = I('request.sty',1);
	if($tables=="") $this->error('数据表为空，无法获取数据',U('index/main'),2);
	if($send==""){
	  $this->assign('upload',true);
	  $this->assign('editor',true);
	  $this->assign('tables',$tables);
	  $this->assign('sty',$sty);
	  $this->assign('title','添加资料');
	  $this->display();
	}else if($send=="提交"){
	  $topic   = I('post.topic','');
	  $pic     = I('post.pic','');
	  $domain  = I('post.domain','');
	  $intro   = I('post.intro','');
	  $content = cg();
	  $enabled = I('post.enabled',0,'intval');
	  $ord     = I('post.ord',0,'intval');
	  $dobj    = M($tables);
	  $dobj = $dobj->add(array('topic'=>$topic,'pic'=>$pic,'domain'=>$domain,'intro'=>$intro,'sty'=>$sty,'content'=>$content,'enabled'=>$enabled,'ord'=>$ord,'date'=>dates()));
	  if($dobj){
	   $this->success('资料添加成功',U('website/aboutlist','tables='.$tables.'&sty='.$sty),2);
	  }else{
	   $this->error('资料添加失败，请重新试试吧',U('website/aboutadd','tables='.$tables.'&sty='.$sty),2);
	  } 
	}
  }
  //资料编辑
  public function aboutmod(){
	$save    = I('post.send','');
	$tables  = I('request.tables','');
	$sty     = I('request.sty',1);
	$id      = I('request.id',0,'intval');
	if($tables=="") $this->error('数据表为空，无法获取数据',U('index/main'),2);
    if($id!=0){
	   if($save==""){
		 $dobj  = M($tables);	
		 $data  = $dobj->field('*')->where('Id='.$id)->find();
		 if($data){
			$this->assign('upload',true);
			$this->assign('title','编辑信息');
			$this->assign('editor',true);
		    $this->assign('tables',$tables);
		    $this->assign('sty',$sty);
			$this->assign('data',$data);
			$this->display();
		 }else{
			$this->error('资料不存在，请重新操作！');
		 }
	   }else if($save=='确定修改'){
		  $topic   = I('post.topic','');
		  $pic     = I('post.pic','');
		  $domain  = I('post.domain','');
		  $intro   = I('post.intro','');
		  $content = cg();
		  $enabled = I('post.enabled',0,'intval');
		  $ord     = I('post.ord',0,'intval');
		  $dobj = M($tables);
		  $dobj = $dobj->where('Id='.$id)->save(array('topic'=>$topic,'pic'=>$pic,'domain'=>$domain,'intro'=>$intro,'sty'=>$sty,'content'=>$content,'enabled'=>$enabled,'ord'=>$ord,'date'=>dates()));
		  if($dobj){
		    $this->success('数据更新成功',U('website/aboutlist','tables='.$tables.'&sty='.$sty),2);
		  }else{
		    $this->error('数据更新失败，请重新试试吧',U('website/aboutmod','tables='.$tables.'&sty='.$sty.'&id='.$id),2);
		  } 
	   }
	}else{
	 $this->error('ID未指定,无法获取任何数据');
	}
  }
   //新闻中心资料管理
  public function datalist(){
	$send      = I('post.deldata','');
	$tables    = I('request.tables','');
	$martables = I('request.martables','');
	$sty       = I('request.sty',1);
	if($tables=="") $this->error('数据表为空，无法获取数据',U('index/main'),2);
	if($send==''){
		$dobj    = M($tables);
		$page    = I('get.page',1,'intval');
		$where   = 'sty='.$sty;
		//search date by where start
		$topic   = I('post.topic','');
		$inftype = I('post.inftype',0,'intval');
		$enabled = I('post.enabled',0,'intval');
		$istop   = I('post.istop',0,'intval');
		if($topic!='')  $where .= " AND topic LIKE '%".$topic."%'";
		if($inftype!=0) $where .= ' AND inftype='.$inftype;
		if($enabled==1) $where .= ' AND enabled=0';
		if($enabled==2) $where .= ' AND enabled=1';
		if($istop==1)   $where .= ' AND istop=0';
		if($istop==2)   $where .= ' AND istop=1';
		//ending
		$count   = $dobj->where($where)->count();
		$pobj    = new \Think\AdminPage($count,C('ADMINPAGE'));
		$data    = $dobj->field('*')->where($where)->order('inftype asc,date desc')->limit($pobj->limit)->select();
		if ($data) {
		  foreach($data as $key=>$val) {
		    $data[$key]['inftopic'] = $this->gettopic($martables,$val['inftype']);
		  }
		}
		$datashow = array();
		$mobj    = M($martables);
		$mdata   = $mobj->field('Id,topic')->order('ord asc')->select();
		$datashow['pageno']    = ($page-1)*$pobj->pagesize;
		$datashow['pageshow']  = ($count>C('ADMINPAGE')) ? $pobj->showpage() : '';
		$datashow['table']     = $tables;
		$datashow['mdata']     = $mdata;
		$datashow['martable']  = $martables;
		$datashow['sty']       = $sty;
		$this->assign('title','资料管理');
		$this->assign('dshow',$datashow);
		$this->assign('data',$data);
		$this->display();
	}else if($send=="删除"){
	    $deldata = isset($_POST['pubbox']) ? $_POST['pubbox'] : array();
	    if(count($deldata)>0){
	     //定义不能删除的 ID
		 $nodelArr = array();
		 $delcount = 0;;
		 foreach($deldata as $val){
		   if(!in_array($val,$nodelArr)){
			 $del = $this->delbyid($tables,$val);
			 $delcount += ($del) ? 1 : 0;
		   }else{
		     $delcount +=0;
		   }
		 }
		 $this->success('数据操作成功，影响数据'.$delcount.'条');
	    }else{
	     $this->error('请至少选择一条数据进行操作');
	    }
	}
  }

 // 资料修改
  public function datamod(){
	$save      = I('post.send','');
	$tables    = I('request.tables','');
	$martables = I('request.martables','');
	$sty       = I('request.sty',1);
	$id        = I('request.id',0);
    if($tables=="") $this->error('数据表为空，无法获取数据',U('index/main'),2);
	if($id!=0){
		if($save==''){
			$dabj=M($tables);
			$data=$dabj->field('*')->where('id='.$id)->find();
			if($data){
				$mobj=M($martables);
				$mdata=$mobj->field('Id,topic')->order('ord asc')->select();
				$infto=$mobj->field('topic')->where('Id='.$data['inftype'])->find();
				$datashow['mdata'] = $mdata;
				$datashow['tables']=$tables;
				$datashow['martables']=$martables;
				$this->assign('inftopic',$infto['topic']);
				$this->assign('title','资料修改');
				$this->assign('upload',true);
				$this->assign('date',true);
				$this->assign('color',true);
				$this->assign('editor',true);
				$this->assign('dshow',$datashow);
				$this->assign('sty',$sty);
				$this->assign('data',$data);
				$this->display();
			}else{
				$this->error("资料不存在，请重新操作！");
			}
		}else if($save=='确定修改'){
		   $topic      = I('post.topic','');
		   $linkurl    = I('post.linkurl','');
		   $inftype    = I('post.inftype',0,'intval');
		   $pic        = I('post.pic','');
		   $oldpic     = I('post.oldpic','');
		   if($pic!=$oldpic && $oldpic!=''){ 
			 if(file_exists(C("UPLOAD_PATH").$oldpic)){
			  @unlink(C("UPLOAD_PATH").$oldpic);
			 }
		   }
		   $intro      = I('post.intro','');
		   $content    = cg();
		   $date       = I('post.date','');
		   $date       = ($date!='') ? date('Y-m-d H:i:s',strtotime($date)) : date("Y-m-d H:i:s"); 
		   $source     = I('post.source','');  
		   $author     = I('post.author','');  
		   $keyword    = I('post.keyword','');  
		   $metades    = I('post.metades',''); 
		   $topiccolor = I('post.topiccolor','#000000');
		   $topicsize  = I('post.topicsize',13,'intval');
		   $isstrong   = I('post.isstrong',0,'intval');
		   $enabled    = I('post.enabled',0,'intval');
		   $istop      = I('post.istop',0,'intval');
		   $ord        = I('post.ord',0,'intval');
		   $dobj       = M($tables);
		   $dobj=$dobj->where('Id='.$id)->save(array('topic'=>$topic,'sty'=>$sty,'linkurl'=>$linkurl,'inftype'=>$inftype,'isstrong'=>$isstrong,'pic'=>$pic,'intro'=>$intro,'content'=>$content,'source'=>$source,'author'=>$author,'keyword'=>$keyword,'metades'=>$metades,'topiccolor'=>$topiccolor,'topicsize'=>$topicsize,'istop'=>$istop,'enabled'=>$enabled,'ord'=>$ord,'date'=>$date));
		   if($dobj){
		     $this->success('资料修改成功！',U('website/datalist','tables='.$tables.'&sty='.$sty.'&martables='.$martables));
		   }else{
			 $this->error('资料修改失败，请重新试试吧',U('website/datamod','tables='.$tables.'&sty='.$sty.'&martables='.$martables.'&id='.$id),2);  
		   }
		}
	}else{
		$this->error("ID未指定,无法获取任何数据");
	}
  }

  //添加资料
  
  public function dataadd(){
	  $send       = I('post.send','');
      $tables     = I('request.tables','');
	  $martables  = I('request.martables','');
	  $sty        = I('request.sty',1);
	  if($tables=="") $this->error('数据表为空，无法获取数据',U('index/main'),2);
	  if($send==""){
		$mobj=M($martables);
		$mdata=$mobj->field('Id,topic')->order('ord asc')->select();
		$datashow['mdata'] = $mdata;
		$this->assign('dshow',$datashow);
		$this->assign('upload',true);
		$this->assign('date',true);
		$this->assign('color',true);
		$this->assign('editor',true);
		$this->assign('tables',$tables);
		$this->assign('martables',$martables);
		$this->assign('sty',$sty);
		$this->assign('title','添加资料');
		$this->display();
	  }else if($send=="提交"){
		$topic      = I('post.topic','');
		$linkurl    = I('post.linkurl','');
		$inftype    = I('post.inftype',0,'intval');
		$pic        = I('post.pic','');
		$intro      = I('post.intro','');
		$content    = cg();
		$date       = I('post.date','');
		$date       = ($date!='') ? date('Y-m-d H:i:s',strtotime($date)) : date("Y-m-d H:i:s"); 
		$source     = I('post.source','');  
		$author     = I('post.author','');  
		$keyword    = I('post.keyword','');  
		$metades    = I('post.metades','');  
		$topiccolor = I('post.topiccolor','#000000');
		$topicsize  = I('post.topicsize',13,'intval');
		$isstrong   = I('post.isstrong',0,'intval');
		$enabled    = I('post.enabled',0,'intval');
		$istop      = I('post.istop',0,'intval');
		$ord        = I('post.ord',0,'intval');
		$dobj       = M($tables);
		$dobj=$dobj->add(array('topic'=>$topic,'linkurl'=>$linkurl,'sty'=>$sty,'inftype'=>$inftype,'pic'=>$pic,'intro'=>$intro,'content'=>$content,'source'=>$source,'author'=>$author,'keyword'=>$keyword,'metades'=>$metades,'topiccolor'=>$topiccolor,'topicsize'=>$topicsize,'isstrong'=>$isstrong,'istop'=>$istop,'enabled'=>$enabled,'ord'=>$ord,'date'=>dates()));
		if($dobj){
		   $this->success('资料添加成功！',U('website/datalist','tables='.$tables.'&sty='.$sty.'&martables='.$martables),2);
		}else{
		   $this->error('资料添加失败，请重新试试吧',U('website/dataadd','tables='.$tables.'&sty='.$sty.'&martables='.$martables),2);
		} 
	  }
  }
  
  //资料类别列表
  public function datatypelist(){
	$tables  = I('get.tables');
	$sty     = I('get.sty',1,'intval');
	$send    = I('post.deldata','');
	if($tables=='') $this->error('数据表为空，无法获取数据',U('index/main'),2);
	if($send==''){
		$page    = I('get.page',1,'intval');
		$dobj=M($tables);
		$where='1=1 and sty='.$sty;
		$count=$dobj->where($where)->count();
		$pobj    = new \Think\AdminPage($count,C('ADMINPAGE'));
		$data    = $dobj->field('*')->where($where)->order('ord asc')->limit($pobj->limit)->select();
		$datashow = array();
		$datashow['pageno']   = ($page-1)*$pobj->pagesize;
		$datashow['pageshow'] = ($count>C('ADMINPAGE')) ? $pobj->showpage() : '';
		$datashow['table']    = $tables;
		$this->assign('title','资料类别管理');
		$this->assign('dshow',$datashow);
		$this->assign('data',$data);
  		$this->display();
	}elseif($send=='删除'){
		$deldata=isset($_POST['pubbox']) ? $_POST['pubbox'] : array();
		if(count($deldata)>0){
			$nodelArr = array();//定义不能删除的 ID
			$delcount = 0;
			foreach($deldata as $val){
				if(!in_array($val,$nodelArr)){
			        $del = $this->delbyid($tables,$val);
			        $delcount += ($del) ? 1 : 0;
				}else{
					$delcount +=0;
				}
			}
			$this->success('数据操作成功，影响数据'.$delcount.'条');
		}else{
			$this->error('请至少选择一条数据进行操作');
		}
	}
  }
  //资料类别修改
  public function datatypemod(){
	  $save    = I('post.send','');
	  $tables  = I('request.tables','');
	  $sty     = I('request.sty',1);
	  $id      = I('request.id',0,'intval');
	  if($tables=='') $this->error('数据表为空，无法获取数据',U('index/main'),2);
	  if($id!=0){
		  if($save==''){
			$disstyle=array("暂无","标题","图片+标题","标题+简介","图片+标题+简介");
		  	$dobj=M($tables);
			$data=$dobj->field('*')->where('Id='.$id)->find();
			$this->assign('disstyle',$disstyle);
			$this->assign('upload',true);
			$this->assign('tables',$tables);
		    $this->assign('sty',$sty);
			$this->assign('data',$data);
			$this->display();
		  }elseif($save=='确定修改'){
		  	$topic   = I('post.topic','');
			$pic     = I('post.pic','');
			$oldpic     = I('post.oldpic','');
		    if($pic!=$oldpic && $oldpic!=''){ 
			  if(file_exists(C("UPLOAD_PATH").$oldpic)){
			   @unlink(C("UPLOAD_PATH").$oldpic);
			  }
		    }
			$enabled = I('post.enabled',0,'intval');
			$ord     = I('post.ord',0,'intval');
			$showtype= I('post.showtype',0,'intval');
			$domain  = I('post.domain','');
			$dobj    = M($tables);
			$dobj    = $dobj->where('Id='.$id)->save(array('topic'=>$topic,'sty'=>$sty,'pic'=>$pic,'showtype'=>$showtype,'domain'=>$domain,'enabled'=>$enabled,'ord'=>$ord,'date'=>dates()));
			if($dobj){
				$this->success('资料修改成功',U('website/datatypelist','tables='.$tables.'&sty='.$sty),2);
			}else{
				$this->error('资料修改失败',U('website/datatypemod','tables='.$tables.'&sty='.$sty.'&Id=&'.$Id),2);
			}
		  }
	  }else{
	  	$this->error("ID未指定,无法获取任何数据");
	  }
  }
  //添加资料类别
  public function datatypeadd(){
	   $tables = I('request.tables','');
	   $send   = I('post.send','');
	   $sty    = I('request.sty',1,'intval');
	   if($tables=="") $this->error('数据表为空，无法获取数据',U('index/main'),2);
	   if($send==''){
		   $this->assign('title','添加资料类别');
		   $this->assign('tables',$tables);
		   $this->assign('upload',true);
		   $this->assign('sty',$sty);
  	   	   $this->display();
	   }elseif($send=='提交'){
	   	   $topic   = I('post.topic','');
		   $pic     = I('post.pic','');
		   $enabled = I('post.enabled',0,'intval');
		   $ord     = I('post.ord',0,'intval');
		   $showtype= I('post.showtype',0,'intval');
		   $domain  = I('post.domain','');
		   $dobj    = M($tables);
		   $dobj    = $dobj->add(array('topic'=>$topic,'sty'=>$sty,'pic'=>$pic,'showtype'=>$showtype,'domain'=>$domain,'enabled'=>$enabled,'ord'=>$ord,'date'=>dates()));
		   if($dobj){
			   $this->success('资料添加成功',U('website/datatypelist','tables='.$tables.'&sty='.$sty),2);
		   }else{
		   	   $this->error('类别添加失败，请重新试试吧',U('website/datatypeadd','tables='.$tables.'&sty='.$sty),2);
		   }
	   }
  }
  //在线留言列表
  public function message(){
	$tables  = 'message';
	$send    = I('post.deldata','');
	if($send==''){
		$page    = I('get.page',1,'intval');
		$dobj    = M($tables);
		$where   = '1=1';
		$count   = $dobj->where($where)->count();
		$pobj    = new \Think\AdminPage($count,C('ADMINPAGE'));
		$data    = $dobj->field('*')->where($where)->order('date desc')->limit($pobj->limit)->select();
		$datashow = array();
		$datashow['pageno']   = ($page-1)*$pobj->pagesize;
		$datashow['pageshow'] = ($count>C('ADMINPAGE')) ? $pobj->showpage() : '';
		$datashow['table']    = $tables;
		$this->assign('title','留言信息管理');
		$this->assign('dshow',$datashow);
		$this->assign('data',$data);
  		$this->display();
	}else if($send=='删除'){
		$deldata=isset($_POST['pubbox']) ? $_POST['pubbox'] : array();
		if(count($deldata)>0){
			$nodelArr = array();//定义不能删除的 ID
			$delcount = 0;
			foreach($deldata as $val){
				if(!in_array($val,$nodelArr)){
			        $del = $this->delbyid($tables,$val);
			        $delcount += ($del) ? 1 : 0;
				}else{
					$delcount +=0;
				}
			}
			$this->success('数据操作成功，影响数据'.$delcount.'条');
		}else{
			$this->error('请至少选择一条数据进行操作');
		}
	}
  }
  //处理查看留言信息
  public function messageshow(){
	  $save    = I('post.send','');
	  $id      = I('request.id',0,'intval');
	  $tables  = 'message';
	  if($id!=0){
		  if($save==''){
		  	$dobj = M($tables);
			$data = $dobj->field('*')->where('Id='.$id)->find();
			$this->assign('title','查看留言信息');
			$this->assign('data',$data);
			$this->display();
		  }else if($save=='处理留言'){
			$enabled = I('post.enabled',0,'intval');
			$dobj    = M($tables);
			$dobj    = $dobj->where('Id='.$id)->save(array('enabled'=>$enabled,'redate'=>dates()));
			if($dobj){
			  $this->success('留言处理成功',U('website/message'),2);
			}else{
			  $this->error('留言处理失败',U('website/messageshow','id=&'.$Id),2);
			}
		  }
	  }else{
	  	$this->error("ID未指定,无法获取任何数据");
	  }
  }
  //友情链接管理
  public function linkslist(){
	$tables  = 'links';
	$send    = I('post.deldata','');
	if($tables=='') $this->error('数据表为空，无法获取数据',U('index/main'),2);
	if($send==''){
		$page    = I('get.page',1,'intval');
		$dobj    = M($tables);
		$where   = '1=1';
		$count   = $dobj->where($where)->count();
		$pobj    = new \Think\AdminPage($count,C('ADMINPAGE'));
		$data    = $dobj->field('*')->where($where)->order('date desc')->limit($pobj->limit)->select();
		$datashow = array();
		$datashow['pageno']   = ($page-1)*$pobj->pagesize;
		$datashow['pageshow'] = ($count>C('ADMINPAGE')) ? $pobj->showpage() : '';
		$this->assign('title','友情链接管理');
		$this->assign('dshow',$datashow);
		$this->assign('data',$data);
  		$this->display();
	}else if($send=='删除'){
		$deldata=isset($_POST['pubbox']) ? $_POST['pubbox'] : array();
		if(count($deldata)>0){
			$nodelArr = array();//定义不能删除的 ID
			$delcount = 0;
			foreach($deldata as $val){
				if(!in_array($val,$nodelArr)){
			        $del = $this->delbyid($tables,$val);
			        $delcount += ($del) ? 1 : 0;
				}else{
					$delcount +=0;
				}
			}
			$this->success('数据操作成功，影响数据'.$delcount.'条');
		}else{
			$this->error('请至少选择一条数据进行操作');
		}
	}
  }
  //添加友情链接
  public function linksadd(){
   $send   = I('post.send','');
   if($send==''){
	   $this->assign('title','添加友情链接');
	   $this->display();
   }elseif($send=='提交'){
	   $topic   = I('post.topic','');
	   $linkurl = I('post.linkurl','');
	   $enabled = I('post.enabled',0,'intval');
	   $ord     = I('post.ord',0,'intval');
	   $pic     = I('post.pic','');
	   $dobj    = M('links');
	   $dobj    = $dobj->add(array('topic'=>$topic,'linkurl'=>$linkurl,'pic'=>$pic,'enabled'=>$enabled,'ord'=>$ord,'date'=>dates()));
	   if($dobj){
		   $this->success('友情链接添加成功',U('website/linkslist'),2);
	   }else{
		   $this->error('友情链接添加失败，请重新试试吧',U('website/linksadd'),2);
	   }
   }
  }
  //编辑友情链接
  public function linksmod(){
	  $save    = I('post.send','');
	  $id      = I('request.id',0,'intval');
	  $tables  = 'links';
	  if($id!=0){
		  if($save==''){
		  	$dobj = M($tables);
			$data = $dobj->field('*')->where('Id='.$id)->find();
			$this->assign('title','编辑友情链接');
			$this->assign('data',$data);
			$this->display();
		  }else if($save=='确定修改'){
		    $topic   = I('post.topic','');
		    $linkurl = I('post.linkurl','');
		    $enabled = I('post.enabled',0,'intval');
		    $ord     = I('post.ord',0,'intval');
		    $pic     = I('post.pic','');
			$dobj    = M($tables);
			$dobj    = $dobj->where('Id='.$id)->save(array('topic'=>$topic,'linkurl'=>$linkurl,'pic'=>$pic,'enabled'=>$enabled,'ord'=>$ord,'date'=>dates()));
			if($dobj){
			  $this->success('链接修改成功',U('website/linkslist'),2);
			}else{
			  $this->error('链接修改失败',U('website/linksmod','id=&'.$Id),2);
			}
		  }
	  }else{
	  	$this->error("ID未指定,无法获取任何数据");
	  }
  }
   
}