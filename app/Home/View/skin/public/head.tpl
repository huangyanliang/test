<meta charset="utf-8">
<title>{$metatitle}<if condition="$metatitle neq ''"> - </if>{$sysconf['companyname']}</title>
<meta name="description" content="{$metades}" />
<meta name="keywords" content="{$metakey}" />
<script type="text/javascript" src="__js__/jquery.min.js"></script>
<script type="text/javascript" src="__js__/common.js"></script>
<link rel="stylesheet" href="__css__/style.css">
<link type="text/css" rel="shortcut icon" href="__img__/favicon.ico" />
<block name="meta"></block>
<script type="text/javascript">
 var think   = '__MODULE__';
 var img     = '__img__';
 var pic     = '__pic__';
</script>
<script>
function browserRedirect() {
        var sUserAgent = navigator.userAgent.toLowerCase();
        var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
        var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
        var bIsMidp = sUserAgent.match(/midp/i) == "midp";
        var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
        var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
        var bIsAndroid = sUserAgent.match(/android/i) == "android";
        var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
        var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";

        if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
            //移动终端
			$(".nav,.footer,.top,.head,.pic,.pro_t,.abo_bg,.adv_bg,.bg_d,.pic_n").css("width","1300px");
        } else {
            
        }

    }
	$(document).ready(function(e) {
      browserRedirect();  
    });
</script>