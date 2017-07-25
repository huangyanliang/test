<extend name="public/common" />
<block name="main">
 <div class="pubmain">
  <h1><div class="pull-left">
   {:btn(array('vals'=>'系统设置','size'=>3,'icon'=>'cog','scene'=>'default','url'=>U('system/sysmod')))}
   {:btn(array('vals'=>'水印设置','size'=>3,'icon'=>'tint','scene'=>'primary','url'=>U('system/syswater')))}
  </div></h1>
  <form name="sysmod" method="post" action="" onSubmit="return sysck(document.sysmod)">
    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2" class="{:tabstyle()}">
      <tr>
        <td width="132" height="42" align="right" valign="middle">水印图片：</td>
        <td height="42" align="left">{:uppic($data['waterpic'],'请上传.gif,.png,.jpg格式的水印图片，图片大小不要过大。',1,1)}</td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">水印位置：</td>
        <td height="42" align="left">
         <div class="waterpos">
          <input type="hidden" value="{$data['waterpos']}" name="waterpos">
          <div data-id="1"<?php echo ($data['waterpos']==1) ? ' class="selected"' : '';?>>左上</div>
          <div data-id="2"<?php echo ($data['waterpos']==2) ? ' class="selected"' : '';?>>正上</div>
          <div data-id="3"<?php echo ($data['waterpos']==3) ? ' class="selected"' : '';?>>右上</div>
          <div data-id="4"<?php echo ($data['waterpos']==4) ? ' class="selected"' : '';?>>左中</div>
          <div data-id="5"<?php echo ($data['waterpos']==5) ? ' class="selected"' : '';?>>中间</div>
          <div data-id="6"<?php echo ($data['waterpos']==6) ? ' class="selected"' : '';?>>右中</div>
          <div data-id="7"<?php echo ($data['waterpos']==7) ? ' class="selected"' : '';?>>左下</div>
          <div data-id="8"<?php echo ($data['waterpos']==8) ? ' class="selected"' : '';?>>中下</div>
          <div data-id="9"<?php echo ($data['waterpos']==9) ? ' class="selected"' : '';?>>右下</div>
         </div>
        </td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">水印透明值：</td>
        <td height="42" align="left"><input type="text" value="{$data['wateralpha']}" class="textsort" name="wateralpha"> <span class="text-warning">水印透明度，1-100的整数</span></td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">水印文字：</td>
        <td height="42" align="left"><input type="text" value="{$data['fonttext']}" class="text" name="fonttext"> <span class="text-warning">水印文字，建议用字母或文字</span></td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">文字大小：</td>
        <td height="42" align="left"><div class="input-group input-group-sm" style="width:80px;"{:tooltip('水印文字的大小')}><input type="text" value="{$data['fontsize']}" name="fontsize" class="form-control"><span class="input-group-addon">px</span></div></td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">水印文字颜色：</td>
        <td height="42" align="left">
         <input type="text" value="{$data['fontcolor']}" name="fontcolor" class="textsort colorselect"{:tooltip('水印文字的颜色')} style="width:120px;">
        </td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">字体水印样式：</td>
        <td height="42" align="left">
         <div class="text-warning">{:icon('info-sign')} 从左到右 分别是水印字体A~G的水印样式，字体(B~G)由 THINKPHP 提供。</div>
         <div class="waterview">
          <input type="hidden" value="{$data['facetype']}" name="facetype">
          <div data-id="0" class="waterdemo<?php echo ($data['facetype']==0) ? ' selected' : '';?>"{:tooltip('字体样式A')}><img src="__img__/water/A.jpg"></div>
          <div data-id="1" class="waterdemo<?php echo ($data['facetype']==1) ? ' selected' : '';?>"{:tooltip('字体样式B')}><img src="__img__/water/B.jpg"></div>
          <div data-id="2" class="waterdemo<?php echo ($data['facetype']==2) ? ' selected' : '';?>"{:tooltip('字体样式C')}><img src="__img__/water/C.jpg"></div>
          <div data-id="3" class="waterdemo<?php echo ($data['facetype']==3) ? ' selected' : '';?>"{:tooltip('字体样式D')}><img src="__img__/water/D.jpg"></div>
          <div data-id="4" class="waterdemo<?php echo ($data['facetype']==4) ? ' selected' : '';?>"{:tooltip('字体样式E')}><img src="__img__/water/E.jpg"></div>
          <div data-id="5" class="waterdemo<?php echo ($data['facetype']==5) ? ' selected' : '';?>"{:tooltip('字体样式F')}><img src="__img__/water/F.jpg"></div>
          <div data-id="6" class="waterdemo<?php echo ($data['facetype']==6) ? ' selected' : '';?>"{:tooltip('字体样式G')}><img src="__img__/water/G.jpg"></div>
          <div data-id="7" class="waterdemo<?php echo ($data['facetype']==7) ? ' selected' : '';?>"{:tooltip('字体样式H')}><img src="__img__/water/H.jpg"></div>
         </div>
        </td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">文字位置：</td>
        <td height="42" align="left">
        <div class="waterpos">
          <input type="hidden" value="{$data['fontpos']}" name="fontpos">
          <div data-id="1"<?php echo ($data['fontpos']==1) ? ' class="selected"' : '';?>>左上</div>
          <div data-id="2"<?php echo ($data['fontpos']==2) ? ' class="selected"' : '';?>>正上</div>
          <div data-id="3"<?php echo ($data['fontpos']==3) ? ' class="selected"' : '';?>>右上</div>
          <div data-id="4"<?php echo ($data['fontpos']==4) ? ' class="selected"' : '';?>>左中</div>
          <div data-id="5"<?php echo ($data['fontpos']==5) ? ' class="selected"' : '';?>>中间</div>
          <div data-id="6"<?php echo ($data['fontpos']==6) ? ' class="selected"' : '';?>>右中</div>
          <div data-id="7"<?php echo ($data['fontpos']==7) ? ' class="selected"' : '';?>>左下</div>
          <div data-id="8"<?php echo ($data['fontpos']==8) ? ' class="selected"' : '';?>>中下</div>
          <div data-id="9"<?php echo ($data['fontpos']==9) ? ' class="selected"' : '';?>>右下</div>
         </div>
        </td>
      </tr>
      <tr>
        <td height="42" align="right" valign="middle">开启水印功能：</td>
        <td height="42" align="left">{:checkbox($data['iswater'],0,'iswater')}<span class="text-warning"> &nbsp;注：勾选表示开启水印功能。</span></td>
      </tr>
      <tr>
        <td width="132" height="32" align="right" valign="middle">　</td>
        <td height="50">{:btn(array('vals'=>'确定保存','size'=>3,'type'=>'submit','icon'=>'tint','scene'=>'primary'))}</td>
      </tr>
    </table>
    </form>
    <script>
     $(".waterpos div,.waterview div").click(function(e) {
       var id = $(this).data("id");
	   $(this).parent().find("input").val(id);
	   $(this).parent().find("div").removeClass("selected");
	   $(this).addClass("selected"); 
     });
	 
    </script>
 </div>
</block>