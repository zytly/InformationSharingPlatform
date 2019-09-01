<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
 
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="/sechandmall/admin/commfiles/css/common.css" /> 
	<link rel="stylesheet" type="text/css" href="/sechandmall/admin/commfiles/css/style.css" /> 
	
  </head>
  <%
  String id = request.getParameter("id")==null?"-1":request.getParameter("id");
  HashMap ext = new HashMap();
  new CommDAO().update(request,response,"proscarjy",ext,true,true);
   %>
  <body>
  <form name="f1" method="post" action="num.jsp?f=f&id=<%=id %>"  >
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
         
         
         <tr align="center" style="display: none">
          
          <td align="center">
           </td>
        </tr>
         
        
        <tr align="center">
          
          <td align="center">
          
          请输入数量 <br />
          
          <span class="style1">
            <input name="num" id="num"  type="text" size="30" />
          </span> </td>
        </tr>
        
        <tr align="center">
          
          <td align="center" height="30">
          
         
            <input name="sub" id="upass"  type="button" onclick="f1.submit();" value="提交信息" />
            </td>
        </tr>
        
        
        
      </table>
  </form> 
</body>
</html>
<script type="text/javascript" src="/sechandmall/admin/commfiles/js/ajax.js"></script>
 