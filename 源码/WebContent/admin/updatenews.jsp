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
  HashMap map = new CommDAO().getmap(id,"news");
  HashMap ext = new HashMap();
  
  new CommDAO().update(request,response,"news",ext,true,true);
   %>
  <body onload="fckinit();">
  <form name="f1" method="post" action="updatenews.jsp?f=f&id=<%=id %>"  >
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
        <tr align="center" style="display: none">
          <td colspan="2"  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">添加管理员<br><br><br><br><br></td>
        </tr>
        <tr align="center">
          <td width="20%" align="center"> 信息标题</td>
        <td   align="left"><span class="style1">
      <input name="title" id="title"  type="text" size="75"    /> &nbsp;</span></td>
      </tr>
      
      
       <tr align="center">
          <td width="20%" align="center"> 新闻图片</td>
        <td   align="left"><span class="style1">
     
     <%=Info.getImgUpInfo2(70) %>
     
     
     </span></td>
      </tr>
       
        <tr align="center">
          
          <td align="left" colspan="2"><span class="style1">
            <textarea name="content"     ><%=map.get("content") %></textarea>
           
            
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
 <%=Info.tform(map)%>