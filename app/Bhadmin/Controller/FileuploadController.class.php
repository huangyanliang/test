<?php
namespace Bhadmin\Controller;
use Think\Controller;
/* 公用上传类 */
class FileuploadController extends Controller {
  
  //文件上传
  public function picupload(){
	 $file = D('File');
	 $this->ajaxReturn($file->picupload());
  } 
  
}