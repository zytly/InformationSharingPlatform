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
  String id = request.getParameter("id"); 
  HashMap ext = new HashMap();
  new CommDAO().update(request,response,"shj",ext,true,true);
  
  HashMap map = new CommDAO().getmap(id,"splb");
  
   %>
  <body>
  <form name="f1" method="post" action="updatetslbgl.jsp?f=f&id=<%=id%>"  >
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
        <tr align="center" style="display: none">
          <td colspan="2"  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">添加管理员<br><br><br></td>
        </tr>
        <tr align="center">
          <td width="32%" align="center"> 售货机名称</td>
        <td width="68%" align="left"><span class="style1">
      <input name="shjname" id="shjname"  type="text" size="40"    /> &nbsp;</span></td>
      </tr>
        <tr align="center">
          <td align="center"> 售货机条码</td>
          <td align="left"><span class="style1">
            <input name="shjtm" id="shjtm"  type="text" size="40"  />
          </span> </td>
        </tr>
        <tr align="center">
          <td align="center"> 所属客户</td>
          <td align="left"><span class="style1">
            <select name="shjkh" id="shjkh"    >
            <%
            for(HashMap mmm:new CommDAO().select("select * from sysuser where utype='客户'")){
             %>
             <option value="<%=mmm.get("uname") %>"><%=mmm.get("uname") %></option>
             <%} %>
            </select>
            
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