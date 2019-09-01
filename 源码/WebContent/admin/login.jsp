<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
session.invalidate();
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> </title>
<link rel="stylesheet" type="text/css" href="/sechandmall/admin/commfiles/css/login.css" />
<script language="javascript">
function execute(opt){
		var urlHtml = "";
		var wndName = "Apabi_" + Math.ceil(Math.random()*10); 
		var sFeaturs = "height=" + (screen.height) + 
					   ",width=" + (screen.width) + 
					   ",scrollbars=no,resizable=yes,location=no,menubar=no,toolbar=no,status=yes,top=0,left=0";
		window.open("", "_self");
		if (opt == "login"){
			urlHtml = "./pages/sys/index.html";
		}else if(opt == "userQuery"){
			urlHtml = "./pages/userQuery/userQueryIndex.html";
		}
		var work = window.open(urlHtml,wndName,sFeaturs);
		window.opener = null;
		window.close();
}
</script>

<SCRIPT language=javascript src="js/jQuery.js"></SCRIPT>

<SCRIPT language=javascript src="js/login.js"></SCRIPT>
</head>

<body id="login_bg" onkeydown="sub();">
<script language="javascript">
function sub()
{
if(window.event.keyCode==13) 
{
f1.submit();
}
}
</script>
<div class="centerDiv">
<div style="height: 120px"></div>
 <div  align="center">
 
 
 <strong>     
 
 <font size="4" style="color:white; font-size: 30px;font-family: 华文行楷"> 商城后台管理登录 </font> </strong>
 
 
 
 
 </div>
  <form action="/sechandmall/sechandmall?ac=login" method="post" name="f1">
	 
	 <div id="login-main">
	   <div style="margin-left:180px; padding-top:12px; width:260px; overflow:hidden">
		 <table border="0" cellpadding="0" cellspacing="0" class="margin-bottom">
		  <tr>
			<td class="font" height="5"><b>用户名</b></td>
			<td ><input class="input" id="uname" name="uname" /></td>
		  </tr>
		  <tr>
			<td class="font"><b>密&nbsp;&nbsp;&nbsp;码</b></td>
			<td><input name="upass" type="upass" class="input" value=""></td>
		  </tr>
		  
		   <tr>
			<td class="font"><b>类&nbsp;&nbsp;&nbsp;别</b></td>
			<td>
			<label>
			  <input name="utype" type="radio" id="utype" value="买家" checked="checked" />
			买家</label>
			
			&nbsp; 
			
			<label>
			  <input name="utype" type="radio" id="utype" value="卖家"   />
			卖家</label>
			
			&nbsp; 
			<label>
			<input type="radio" name="utype" id="utype" value="管理员" />
			
			管理员
			</label></td>
		   </tr>
		</table>
		<div class="login-cont"  >
		<div class="right dl_bt1" style="width: 73%" align="right"><input name="" type="button"  value=" 登 录 " onclick="f1.submit();" ></div>
		 
		
		</div>
		
		</div>
		
		
		
	 </div>
	   <div align="center" style="color: white"> 
	   <br />
	   技术支持&nbsp;:&nbsp;&nbsp;校园二手交易平台项目组 
	   <br />
	   <br />
	   版权归本项目组所有
	   
	   </div>
	 </form>
</div>

<div class="hiddenDiv"></div>
</body>
</html>
<%
if(request.getAttribute("error")!=null)
{
 %>
 <script type="text/javascript">
<!--
alert("用户名或密码错误");
//-->
</script>
<%}%>

<script type="text/javascript">
<!--
document.getElementById("uname").focus();
f1.uname.focus();
//-->
</script>