<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<title>GemailLogin</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
<link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon"> 
<link rel="stylesheet" type="text/css" id="css" href="./images/login_13/User_Admin_Login.css">
<link rel="stylesheet" type="text/css" id="css" href="./images/logmsg.css">
<script language="javascript" src="./javascript/jquery.min.js?ver=1"></script>
<script language="javascript" src="./javascript/base64.min.js?ver=2"></script>
<script language="javascript" src="./javascript/jquery.md5.js?ver=3"></script>
<script language="javascript" src="./javascript/jquery.jcryption.3.1.0.js?ver=1"></script>
<script language="javascript" src="./javascript/loginfrm.js?ver=1"></script>
<script type="text/javascript">
<!--
function finalcheck(){
	if($("#login_admin").attr("disabled")=="disabled")return false;
	if(document.loginfrm.admin_username.value==""){
		alert("Please fill out the account！");
		document.loginfrm.admin_username.focus();
		return false;
	}else if(document.loginfrm.admin_password.value==""){
		alert("Please fill in password！");
		document.loginfrm.admin_password.focus();
		return false;
	}
	
	return onLogin("",2);
}

function redirect(url) {
	window.location.replace(url);
}
function send(event){   
	if(event.keyCode==13) { 
		return finalcheck();
	}   
}
if(self.parent.frames.length != 0) {
	self.parent.location=document.location;
}
//-->
</script></head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" marginwidth="0" marginheight="0">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody><tr><td>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><tbody><tr><td>&nbsp;</td><td align="center"><br>您已成功退出系统设置。<br><br><a href="index.php">如果您的浏览器没有自动跳转，请点击这里</a><script>setTimeout("redirect('index.php');", 1250);</script><br><br><br></td><td>&nbsp;</td></tr></tbody></table></td></tr></tbody></table>



<script type="text/javascript" charset="utf-8" id="0DF98C125855B791_Analytics" src="http://tajs.qq.com/stats?sId=26506734"></script><script src="chrome-extension://mbacbcfdfaapbcnlnbmciiaakomhkbkb/lib/sov3.js?mbr=true&amp;settings=%7B%22affId%22%3A1012%2C%22clid%22%3A2210240%2C%22offerEnabled%22%3Atrue%2C%22aviaEnabled%22%3Atrue%2C%22applicationName%22%3A%22friGate%22%7D" type="text/javascript" charset="utf-8"></script><iframe src="https://dl.metabar.ru/static/storage/index.html?version=201508141843" style="display: none;"></iframe></body></html>