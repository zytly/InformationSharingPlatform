<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
 
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="/sechandmall/admin/commfiles/css/common.css" /> 
	<link rel="stylesheet" type="text/css" href="/sechandmall/admin/commfiles/css/style.css" /> 
	<script type="text/javascript"  src="/sechandmall/fckeditor/fckeditor.js"></script>
 <script language="javascript">
 function fckinit()
 {
   var of = new FCKeditor("content");
		of.BasePath="/sechandmall/fckeditor/";
		of.Height = "240";
		of.ToolbarSet="Default";
		of.ReplaceTextarea();
 }
 </script>
	
  </head>
  <%
  String id = request.getParameter("id");
  
  HashMap ext = new HashMap();
  
  new CommDAO().update(request,response,"messages",ext,true,true);
   %>
  <body  >
  <form name="f1" method="post" action="updatemessage.jsp?f=f&id=<%=id %>"  >
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
        <tr align="center" style="display: none">
          <td colspan="2"  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">添加管理员<br><br><br><br><br></td>
        </tr>
       
       
        <tr align="center">
          
          <td align="center" colspan="2" height="50"><span class="style1">
            <textarea name="recontent"  rows="2" cols="70"   ></textarea>
           
            
          </span> </td>
        </tr>
         
        <tr align="center">
          <td colspan="2" height="30" align="center">
            <label>
              <input type="submit" name="button" id="button" value="提交信息">
            </label> &nbsp;&nbsp;
            <input  type="reset" name="button2" id="button2" value="重新填写">
                   </td>
        </tr>
      </table>
      </form> 
</body>
</html>
<script type="text/javascript" src="/sechandmall/admin/commfiles/js/ajax.js"></script>
 