﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
new CommDAO().update(request,response,"changes",ext,true,false); 
HashMap mmm = new CommDAO().getmap(id,"changes"); 
%>
<body>
  <form name="f1" method="post"  action="pchangesxg.jsp?f=f&id=<%=mmm.get("id")%>"   onsubmit="return checkform()"  >
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
        <tr align="center" style="display: ">
          <td colspan="2"  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">信息修改</td>
        </tr>
        
         <tr align="center">
          <td width="16%" align="center" height="22"> 申请人</td>
          <td width="84%" align="left"><%=mmm.get("uname")%></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="22"> 卖方</td>
          <td width="84%" align="left"><%=mmm.get("tuname")%></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="22"> 希望交换图书</td>
          <td width="84%" align="left"><%=new CommDAO().getmap(mmm.get("bid").toString(),"pros").get("proname") %></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="22"> 本人图书</td>
          <td width="84%" align="left"><%=mmm.get("mbname")%></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="22"> 价格</td>
          <td width="84%" align="left"><%=mmm.get("price")%></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="22"> 送货地址</td>
          <td width="84%" align="left"><%=mmm.get("address")%></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="22"> 卖方意见</td>
          <td width="84%" align="left"><span id="statusdanx"><label><input type=radio name='status' value='同意' />&nbsp;&nbsp;同意 </label>&nbsp;
<label><input type=radio name='status' value='拒绝' />&nbsp;&nbsp;拒绝 </label>&nbsp;
</span></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="22"> 卖方送货地址</td>
          <td width="84%" align="left"><textarea  cols='45' rows='3'  onblur='checkform()'   style='margin-top: 1px;margin-bottom: 1px'  class=''   name='taddress'   ></textarea></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="22"> 相关图片</td>
          <td width="84%" align="left"><%=Info.getImgUpInfo(65)%></td>
      </tr>

       
        <tr align="center">
          <td colspan="2" align="center" height="31">
            <label>
              <input type="submit" name="button" id="button" value="提交信息">
            </label> &nbsp;&nbsp;
           <input type=button value='返回上页' onclick='window.location.replace("pchangescx.jsp")' />               </td>
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
