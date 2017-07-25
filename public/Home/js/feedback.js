function check(){
var th=document.form
  if(th.user.value==""){alert('请输入您的姓名!');th.user.focus();return false;}
  if(th.tel.value==""){alert('请输入联系方式!');th.tel.focus();return false;}
  if(th.email.value.length!=0){   
     if(th.email.value.charAt(0)=="."   ||                   
        th.email.value.charAt(0)=="@"||                 
        th.email.value.indexOf('@',   0)   ==   -1   ||     
        th.email.value.indexOf('.',   0)   ==   -1   ||     
        th.email.value.lastIndexOf("@")==th.email.value.length-1   ||     
        th.email.value.lastIndexOf(".")==th.email.value.length-1){   
           alert("Email地址格式不正确！");   
           th.email.focus();   
           return   false;   
        }   
     }else{   
        alert("Email不能为空！");   
        th.email.focus();   
        return   false;   
     } 
}