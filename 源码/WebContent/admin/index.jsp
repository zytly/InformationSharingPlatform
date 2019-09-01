<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="util.Info"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="commfiles/css/common.css" type="text/css" />
<title></title>
</head>

<%
String admin = "";
String utype = "";
HashMap map = Info.getUser(request);
admin=map.get("uname").toString();
utype=map.get("utype").toString();
%>

<frameset rows="87,*" cols="*" frameborder="no" border="0" framespacing="0"><br />
  <frame src="/sechandmall/admin/topframe.jsp" name="topFrame" frameborder="no" scrolling="No" noresize="noresize" id="topFrame" title="" />
  <frameset name="myFrame" cols="200,7,*" frameborder="no" border="0" framespacing="0">
    <frame src="/sechandmall/admin/leftframe.jsp" name="leftFrame" frameborder="no" scrolling="No" noresize="noresize" id="leftFrame" title="" />
	<frame src="/sechandmall/admin/switchframe.jsp" name="midFrame" frameborder="no" scrolling="No" noresize="noresize" id="midFrame" title="" />
    <frameset rows="59,*" cols="*" frameborder="no" border="0" framespacing="0">
         <frame src="/sechandmall/admin/mainframe.jsp" name="mainFrame" frameborder="no" scrolling="No"  noresize="noresize" id="mainFrame" title="" />
    
    <%if(utype.equals("管理员")){%>
         <frame src="/sechandmall/admin/jyordersa.jsp" name="manFrame" frameborder="no" id="manFrame" title="manFrame" />
    <%}
     if(utype.equals("卖家")){ %>
     <frame src="/sechandmall/admin/jyorderss.jsp" name="manFrame" frameborder="no" id="manFrame" title="manFrame" />
    <% }
    
     if(utype.equals("买家")){ %>
     <frame src="/sechandmall/admin/jyordersb.jsp" name="manFrame" frameborder="no" id="manFrame" title="manFrame" />
    <% }%>
    
     </frameset>
  </frameset>
</frameset>
<noframes><body >


</body>
</noframes>
</html>

