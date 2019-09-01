<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
  <%
HashMap user = Info.getUser(request);
String uname = user.get("uname").toString();
String utype = user.get("utype").toString();
String userid = user.get("id").toString();
 %>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="/sechandmall/admin/commfiles/css/common.css" /> 
	<link rel="stylesheet" type="text/css" href="/sechandmall/admin/commfiles/css/style.css" /> 
	
  </head>
  
  <% 
new CommDAO().delete(request,"changes"); 
String id = request.getParameter("id"); 
String erjitype = request.getParameter("erjitype"); 
String myztree = request.getParameter("myztree"); 
HashMap ext = new HashMap(); 
ext.put("uname",Info.getUser(request).get("uname")); 
new CommDAO().update(request,response,"changes",ext,true,false); 
HashMap mmm = new CommDAO().getmap(id,"changes"); 
%>
<body>
  <form name="f1" method="post"  action="mychangesxg.jsp?f=f&id=<%=mmm.get("id")%>"   onsubmit="return checkform()"  >
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
        <tr align="center" style="display: ">
          <td colspan="2"  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3"></td>
        </tr>
        
         <tr align="center">
          <td width="16%" align="center" height="28"> 申请人</td>
          <td width="84%" align="left"><%=mmm.get("uname")%></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 物品名称</td>
          <td width="84%" align="left"><%=mmm.get("pname")%></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 新旧度</td>
          <td width="84%" align="left"><%=mmm.get("nostatus")%></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 物品说明</td>
          <td width="84%" align="left"><%=mmm.get("pbei")%></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 商家</td>
          <td width="84%" align="left"><%=mmm.get("touname")%></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 商品名称</td>
          <td width="84%" align="left"><%=mmm.get("topname")%></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 状态</td>
          <td width="84%" align="left"><%=mmm.get("status")%></td>
      </tr>

       
        <tr align="center">
          <td colspan="2" align="center" height="31">
            <label>
              <input type="submit" name="button" id="button" value="提交信息">
            </label> &nbsp;&nbsp;
           <input type=button value='返回上页' onclick='window.location.replace("mychanges.jsp")' />               </td>
        </tr>
      </table>
  </form> 
</body>
</html>
 
<script language=javascript src='/sechandmall/js/My97DatePicker/WdatePicker.js'></script> 
<script language=javascript src='/sechandmall/js/ajax.js'></script> 
<script language=javascript src='/sechandmall/js/popup.js'></script> 
<%@page import="util.Info"%> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
 
</script>  
<script language=javascript >  
 function checkform(){  
return true;   
}   
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
