<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="util.Info"%>
 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="/sechandmall/admin/commfiles/css/common.css" type="text/css" />
<script type="text/javascript" src="/sechandmall/admin/commfiles/js/outlook.js"></script>
<%
String admin = "";
String utype = "";
HashMap map = Info.getUser(request);
admin=map.get("uname").toString();
utype=map.get("utype").toString();
%>
<title>左侧导航栏</title>
</head>

<%
if(utype.equals("管理员")){
 %>
<script  type="text/javascript">
document.write("<script src=/sechandmall/admin/commfiles/js/nav.js></" + "script>");
</script>
<%}
if(utype.equals("卖家")){ %>
<script  type="text/javascript">
document.write("<script src=/sechandmall/admin/commfiles/js/navr.js></" + "script>");
</script>
<%} %>
<%if(utype.equals("买家")){ %>
<script  type="text/javascript">
document.write("<script src=/sechandmall/admin/commfiles/js/navb.js></" + "script>");
</script>
<%} %>


<%
if(utype.equals("卖家")){
 %>
<body onload="initinav('交易信息')">
<%} %>



<div id="left_content">

 <div id="imgdiv" style="position: absolute; line-height:100px; left: 15px ; ">
 <script  language="javascript">
 document.getElementById("imgdiv").style.top=document.getElementById("left_content").style.top-23;
 </script>
 <img src="../upfile/<%=map.get("filename") %>" height="45" width="49" />
 
 </div>

     <div id="user_info">欢迎您，[<%=utype %>]<br />
     <strong><%=admin %></strong>
     </div>
	 <div id="main_nav">
	     <div id=""></div>
		 <div id="right_main_nav"></div>
	 </div>
</div>
</body>
</html>
