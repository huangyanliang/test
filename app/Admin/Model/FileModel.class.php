<?php
namespace Admin\Model;
use Think\Model;
use Think\Upload;
use Think\Image;

//文件上传类
class FileModel extends Model {
  //图片上传
  public function picupload(){
	$uppic = new Upload();
	$uppic->rootPath = C('UPLOAD_PATH');
	$uppic->maxSize  = 10485760;
	$uppic->exts     = array('jpg', 'gif', 'png', 'jpeg');
	$uppic->subName  = array('date','Ymd');
	$info = $uppic->upload();
	if ($info) {
	  $savePath = $info['Filedata']['savepath'];
	  $saveName = $info['Filedata']['savename'];
	  $imgPath  = $savePath.$saveName;
	  $iswater  = I('post.iswater',0,'intval'); //是否加水印
	  return $this->addwater($imgPath,$iswater);
	} else {
	  return 3;
	} 
  } 
  /*
   添加水印类
  */
  private function addwater($imgPath,$iswater=0,$iskind = 0){
	  $data  = $this->table(C('DB_PREFIX').'systemconfig')->field('iswater,fontpos,waterpos,waterpic,fonttext,fontsize,fontcolor,facetype,rotation,wateralpha')->where('Id=1')->find();
	  if($iswater){
	   return ($imgPath);
	  }
	  if(($data['iswater']==1 && $data['waterpic']!='') || ($data['iswater']==1 && $data['fonttext']!='')){
	    $image    = new Image();
	    $abspath  = (!$iskind) ? C('UPLOAD_PATH') : '';
		if($data['waterpic']!=''){ //加图片水印
	      $image->open($abspath.$imgPath);
	      $image->water($abspath.$data['waterpic'],$data['waterpos'],$data['wateralpha'])->save($abspath.$imgPath);
		  return ($imgPath);
		}
		if($data['fonttext']!=''){ //添加文字水印
	      $image->open($abspath.$imgPath);
		  $facetype = ($data['facetype']==0) ? 'c:\\WINDOWS\\Fonts\\simsun.ttc' : THINK_PATH.'Library/Think/Verify/ttfs/'.$data['facetype'].'.ttf';
		  $image->text($data['fonttext'],$facetype,$data['fontsize'],$data['fontcolor'],$data['fontpos'])->save($abspath.$imgPath);
		  return ($imgPath);
		}
	  }
	  return $imgPath;
  }
  /* 裁剪图片类
	@ h w 需要裁剪的宽高
	@ file 基于该图进行操作
	@ savefile 可自定义保存文件名称
    @ type 表示裁剪类型
      1=等比例缩放类型
	  2=缩放后填充类型
	  3=居中裁剪类型
	  4=左上角裁剪类型
	  5=右下角裁剪类型
	  6=固定尺寸缩放类型
   */
  public function thumb($h,$w,$file,$type=1,$savefile=''){
     $abspath  = C('UPLOAD_PATH');
     if(!file_exists($abspath.$file)){
	   return false;
	 }else{
	   $img = new Image();
	   $img->open($abspath.$file);
	   if($savefile==''){
		 $info = pathinfo($file);  
	     $savefile = '';
		 $savefile .= (isset($info['dirname']) && $info['dirname']!='') ? $info['dirname'].'/' : '';
		 $savefile .= $info['filename'].'_'.$h.'_'.$w.'.'.$info['extension'];
	   }
	   $img->thumb($h,$w,$type)->save($abspath.$savefile);
	   return $savefile;
	 }
  }
}