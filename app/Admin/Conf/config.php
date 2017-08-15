<?php
  return array(
	//设置模版替换变量
	'TMPL_PARSE_STRING' => array(
		'__css__'   =>__ROOT__.'/public/'.MODULE_NAME.'/css',
		'__js__'    =>__ROOT__.'/public/'.MODULE_NAME.'/js',
		'__img__'   =>__ROOT__.'/public/'.MODULE_NAME.'/images',
		'__editor__'=>__ROOT__.'/public/kindedit',
		'__upload__'=>__ROOT__.'/public/'.MODULE_NAME.'/uploadify',	 //上传插件
		'__upfile__'=>__ROOT__.'/uploads/',
	),
	'COOKIE_key'          => 'jxbh',	     //COOKIE密钥
	'TMPL_ACTION_ERROR'   => 'public/jump',  //默认错误跳转对应的模板文件
	'TMPL_ACTION_SUCCESS' => 'public/jump',  //默认成功跳转对应的模板文
	'DEFAULT_THEME'        =>'skin',                 //设置默认主题目录件
	'ADMINPAGE'           => 15,	         //分页数量/后台
	'URL_HTML_SUFFIX'     => '',             //伪静态后缀
	'DB_BACKUP'           => './backup/',    //后台数据库备份
  );
  //图标操作 bootstrap 图标配置
  function icon($icon,$code='span',$add=''){
     $add = ($add=='') ? '' : ' '.$add;
     return '<'.$code.' class="glyphicon glyphicon-'.$icon.$add.'"></'.$code.'>';
  }
  //表单操作 bootstrap 按钮配置
  function btn($conf = array()){
	 $btn_conf = array(
	              'scene' => isset($conf['scene']) ? $conf['scene'] : 'info',   //情景
				  'vals'  => isset($conf['vals'])  ? $conf['vals']  : '',       //文本
				  'icon'  => isset($conf['icon'])  ? $conf['icon']  : '',       //图标
				  'size'  => isset($conf['size'])  ? $conf['size']  : '4',      //尺寸 默认超小 1,2,3,4
				  'ban'   => isset($conf['ban'])   ? $conf['ban']   : 0,        //按钮是否可用
				  'type'  => isset($conf['type'])  ? $conf['type']  : 'button', //按钮类型 
				  'dir'   => isset($conf['dir'])   ? $conf['dir']   : 'top',    //提示的方向
				  'tips'  => isset($conf['tips'])  ? $conf['tips']  : '',       //提示文字
				  'url'   => isset($conf['url'])   ? $conf['url']   : '',       //跳转到
				  'add'   => isset($conf['add'])   ? $conf['add']   : '',       //需要新增的类
				  'name'  => isset($conf['name'])  ? $conf['name']  : 'send',   //名称	
				  'line'  => isset($conf['line'])  ? $conf['line']  : 0,        //bootstrap4.0 outline属性  
				  );
     //初始化
	 $scene = ($btn_conf['scene']!='') ? 'btn-'.$btn_conf['scene'] : ''; //情景颜色
	 $scene = ($btn_conf['line']) ? $scene.'-outline' : $scene;          //outline属性
	 $icon  = ($btn_conf['icon']!='') ? icon($btn_conf['icon']) : ''; //定义自定义图标
	 $tips  = ($btn_conf['tips']!='') ? tooltip($btn_conf['tips'],$btn_conf['dir']) : ''; //启用按钮tooltips
	 $size  = $btn_conf['size']; //按钮尺寸
	 switch($size){
	   case 1:
	   $size = ' btn-lg';
	   break;
	   case 2:
	   $size = '';
	   break;
	   case 3:
	   $size = ' btn-sm';
	   break;
	   case 4:
	   $size = ' btn-xs';
	   break;
	 }
	 $ban   = ($btn_conf['ban']) ? ' disabled="disabled"' : '';
	 $vals  = $btn_conf['vals']; //按钮文字
	 $icon  = ($vals!='') ? $icon.'&nbsp;' : $icon;
	 $type  = $btn_conf['type']; //类型
	 $add   = ($btn_conf['add']!='') ? ' '.$btn_conf['add'] : ''; //需要额外新增的类
	 $name  = $btn_conf['name'];	 
	 $ckurl = ($btn_conf['url']!='') ? " onClick=\"location.href='".$btn_conf['url']."'\"" : '';
	 $btn   = '<button type="'.$type.'" value="'.$vals.'" name="'.$name.'"'.$ckurl.' class="btn '.$scene.$size.$add.'" '.$tips.$ban.'>'.$icon.$vals.'</button>';
	 return $btn;
  }
  //提示操作 bootstrap tooltip,popover
  function tooltip($tips,$placement='top',$tiptype=1){
	if($tiptype==1){
      return ' data-toggle="tooltip" data-placement="top" title="'.$tips.'"';
	}else{
	  return ' data-container="body" data-toggle="popover" data-trigger="focus" data-placement="'.$placement.'" data-content="'.$tips.'"';
	}
  }
  //表格样式 bootstrap table
  function tabstyle(){
	 return 'table table-striped table-bordered table-hover';
  }
  //全选单选框 checkbox
  function ckall($type='bottom'){
	 return '<span class="ckallbox"><input type="checkbox" value="0" class="ckall"></span>';
  }
  //维护单选框
  function ckbox($id,$i,$isck=0,$isban=0){
	 if(!$isban){
	   return ($isck==0) ? '<input type="checkbox" value="'.$id.'" name="pubbox[]" class="myselect">' : '<input type="checkbox" value="'.$id.'" name="pubbox[]" checked class="myselect">';
	 }else{
	   return '<input type="checkbox" value="0" name="pubbox[]" disabled class="myselect">';
	 }
  }
  //维护单选框
  function checkbox($id=0,$isck=0,$name='enabled'){
	 if($isck){
       return '<input type="checkbox" name="'.$name.'" value="1" checked="checked">';
	 }else{
	   return (!$id) ? '<input type="checkbox" name="'.$name.'" value="1">' : '<input type="checkbox" name="'.$name.'" value="1" checked="checked">';
	 }
  }
  //返回各类排序
  function dataord($name,$val,$url,$def=0){
	  if($val[0]==0) return (!$def) ? '<a href="'.$url.'&'.$name.'=2"'.tooltip('点击按照 '.$val[1].' 倒序排序').'>'.icon('arrow-down').' '.$val[1].'</a>' : '<a href="'.$url.'&'.$name.'=1"'.tooltip('点击按照 '.$val[1].' 顺序排序').'>'.$this->icon('arrow-up').' '.$val[1].'</a>';
  }
  //获取没有数据
  function cg($name='content',$default='',$method='post'){
	if($method=='get'){
	  return isset($_GET[$name]) ? trim($_GET[$name]) : $default;
	}else if($method=='post'){
	  return isset($_POST[$name]) ? trim($_POST[$name]) : $default;
	}
  }
  //图片上传
  function uppic($pic='',$tips='',$iswater=0,$friend=0){
	  $tips = ($tips!='') ? '<div class="uptips text-warning">'.icon('info-sign').' '.$tips.'</div>' : '';
	  $bgstyle = ($friend) ? ' style="background:#3178b6;color:#fff;"' : '';
	  $iswater = ($iswater==0) ? '' : '<div class="nowater"></div>'; 
      if($pic==''){
	    return '<input id="uppic" name="uppic" type="file"><input id="pic" name="pic" type="hidden" value="">'.$tips.'<div class="uppicdiv"><div class="picshow"><div class="picdiv"></div><div class="picfoot"><b class="glyphicon glyphicon-picture"></b>'.icon('trash').'</div></div></div>'.$iswater;
	  }else{
		$isfile = (file_exists(C("UPLOAD_PATH").$pic)) ? 1 : 0;
		$showpic = ($isfile) ? __ROOT__.'/'.C("UPLOAD_PATH").$pic  : __ROOT__.'/public/'.MODULE_NAME.'/images/404.jpg';
	    return '<input id="uppic" name="uppic" type="file"><input name="oldpic" type="hidden" value="'.$pic.'"><input id="pic" name="pic" type="hidden" value="'.$pic.'">'.$tips.'<div class="uppicdiv" style="display:block;"><div class="picshow"'.$bgstyle.'><div class="picdiv"><img src="'.$showpic.'" data-action="zoom"></div><div class="picfoot"><b class="glyphicon glyphicon-picture">'.($pic).'</b>'.icon('trash').'</div></div></div>'.$iswater;
	  }
  }
  //文件上传
  
  
  //修改排序
  function modord($ord,$id,$tables){
    $click = " onClick=\"modord('".$tables."','".$id."')\"";
    return '<input type="text" value="'.$ord.'" name="modord'.$id.'" class="textord" /><button type="button" class="btn btn-default btn-xs btn-ord"'.tooltip('点击可以修改排序').$click.'>'.icon('edit').'修改</button>';
  }
  //修改属性值
  function modattr($id,$val,$tables,$field='enabled',$tip=array('启用','禁用')){
      if($val==1){
	   return '<div class="btn-group" data-id="'.$id.'" data-tables="'.$tables.'" data-field="'.$field.'" data-tip1="'.$tip[0].'" data-tip2="'.$tip[1].'"><button type="button" class="btn btn-info btn-xs btn-enabled" data-mark="1" data-toggle="tooltip" data-placement="top" title="点击'.$tip[0].'数据">'.$tip[0].'</button><button type="button" class="btn btn-default btn-disabled btn-xs" data-mark="2" data-toggle="tooltip" data-placement="top" title="点击'.$tip[1].'数据">'.$tip[1].'</button></div>';
	  }else{
	   return '<div class="btn-group" data-id="'.$id.'" data-tables="'.$tables.'" data-field="'.$field.'" data-tip1="'.$tip[0].'" data-tip2="'.$tip[1].'"><button type="button" class="btn btn-default btn-xs btn-enabled" data-mark="1" data-toggle="tooltip" data-placement="top" title="点击'.$tip[0].'数据">'.$tip[0].'</button><button type="button" class="btn btn-default btn-xs btn-disabled active" data-mark="2" data-toggle="tooltip" data-placement="top" title="点击'.$tip[1].'数据">'.$tip[1].'</button></div>';
	  }
 }
 /*
  @下拉选择类别
  @data 数组 
  @id 表示修改时选中的值
  @sel 表示需要默认放置的文本
  @name 选中的值
 */
 function dropdown($data,$id=0,$sel='请选择类别',$name="inftype"){
	  $return = '<div class="btn-group"><input type="hidden" value="'.$id.'" id="'.$name.'" class="drop-val" name="'.$name.'"><button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="drop-topic">'.$sel.'</span> <span class="caret"></span></button>';
	  if($data==1) $data = array(
	                            0=>array('Id'=>2,'topic'=>'启用'),
								1=>array('Id'=>1,'topic'=>'禁用')
								);
	  if($data==2) $data = array(
	                            0=>array('Id'=>2,'topic'=>'置顶'),
								1=>array('Id'=>1,'topic'=>'非置顶')
								);
	  if($data==3) $data = array(
	                            0=>array('Id'=>1,'topic'=>'标题'),
								1=>array('Id'=>2,'topic'=>'图片+标题'),
								2=>array('Id'=>3,'topic'=>'标题+简介'),
								3=>array('Id'=>4,'topic'=>'图片+标题+简介')
								);
	  if($data && is_array($data)>0){
		 $return .= '<ul class="dropdown-menu dropdown-type">';
		 $sel = (!$id) ? $sel : '请选择一项';
		 $return .= '<li><a href="javascript:void(0)" data-id="0">'.$sel.'</a></li>';
		 $return .= '<li role="separator" class="divider"></li>';
		 foreach($data as $mrkey=>$marval){
		   $return .= '<li><a href="javascript:void(0)" data-id="'.$marval['Id'].'">'.$marval['topic'].'</a></li>';
		 }
		 $return .= '</ul>'; 
	  }
	  $return .= '</div>';
	  return $return;
  }
  /*
  @下拉选择多联动类别
  @data 数组 
  @id 表示修改时选中的值
  @sel 表示需要默认放置的文本
  @name 选中的值
  */
  function dropdownlink($data,$field,$tables,$type=2,$dropname=array(),$dropid=array()){
	  $field1   = (isset($field[0]) && $field[0]!='') ? $field[0] : '';
	  $field2   = (isset($field[1]) && $field[1]!='') ? $field[1] : '';
	  $tables1  = (isset($tables[0]) && $tables[0]!='') ? $tables[0] : '';
	  $tables2  = (isset($tables[1]) && $tables[1]!='') ? $tables[1] : '';
	  $dropname = (count($dropname)>0) ? $dropname : array('请选择大类','请选择子类','请选择小类');
	  $dropid   = (count($dropid)>0) ? $dropid : array(0,0,0);
	  $return = '<div class="btn-dropdownlink pull-left"><div class="btn-group btn-group-type1">
	             <input type="hidden" value="'.$dropid[0].'" name="ctag" class="drop-hide">
				 <button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="drop-topic">'.$dropname[0].'</span> <span class="caret"></span></button>';
	  if($data && is_array($data)>0){
		 $return .= '<ul class="dropdown-menu mydrop-menu-type1">';
		 $return .= '<li><a href="javascript:void(0)" data-id="0">请选择大类</a></li>';
		 $return .= '<li role="separator" class="divider"></li>';
		 foreach($data as $mrkey=>$marval){
		   $return .= '<li><a href="javascript:void(0)" data-id="'.$marval['Id'].'" data-tables1="'.$tables1.'" data-tables2="'.$tables2.'" data-field1="'.$field1.'" data-field2="'.$field2.'">'.$marval['topic'].'</a></li>';
		 }
		 $return .= '</ul>'; 
	  }
	  $return .= '</div>';
	  $return .= '&nbsp;<div class="btn-group btn-group-type2">   
	              <input type="hidden" value="'.$dropid[1].'" name="mtag" class="drop-hide">
				  <button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="drop-topic">'.$dropname[1].'</span> <span class="caret"></span></button>';
	 $return .= '<ul class="dropdown-menu mydrop-menu-type2">';
	 $return .= '<li><a href="javascript:void(0)" data-id="0">请先选择大类</a></li>';
	 $return .= '</ul>';
	 $return .= '</div>';
	 if($type==3){
	  $return .= '&nbsp;<div class="btn-group btn-group-type3">   
	              <input type="hidden" value="'.$dropid[2].'" name="stag" class="drop-hide">
				  <button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="drop-topic">'.$dropname[2].'</span> <span class="caret"></span></button>';
	  $return .= '<ul class="dropdown-menu mydrop-menu-type3">';
	  $return .= '<li><a href="javascript:void(0)" data-id="0">请先选择子类</a></li>';
	  $return .= '</ul>';
	  $return .= '</div>';
	 }			  
	 return $return.'</div>';
 }
 //返回日期 
 function dates(){
   return date("Y-m-d H:i:s"); //返回当前日期
 }
 function showdate($date){
   return date("Y-m-d",strtotime($date));
 }
 //返回内容选择
 function showdata($str){
    return $str;
 }
  
  