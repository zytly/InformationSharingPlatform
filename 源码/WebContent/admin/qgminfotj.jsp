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
HashMap ext = new HashMap(); 
String tglparentid=request.getParameter("tglparentid")==null?"":request.getParameter("tglparentid"); 
ext.put("tglparentid",tglparentid); 
ext.put("uname",Info.getUser(request).get("uname")); 
ext.put("tname",Info.getUser(request).get("tname")); 
ext.put("tel",Info.getUser(request).get("tel")); 
ext.put("infotype","求购"); 
new CommDAO().insert(request,response,"minfo",ext,true,false); 
%>
<body>
  <!-- servletformstart -->
  <form  action="/sechandmall/sechandmall?ac=qgminfotj&tglparentid=<%=tglparentid%>"     name="f1" method="post"  onsubmit="return checkform()" >
  <!-- servletformend -->
  <!-- s2formstart
    sactionurl 
    s2formend -->
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
        <tr align="center" style="display: ">
          <td colspan="2"  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">求购信息</td>
        </tr>
        
         <tr align="center">
          <td width="16%" align="center" height="28"> 标题</td>
          <td width="84%" align="left"><input type=text  onblur='checkform()' class='' id='title' name='title' size=60 /><label id='clabeltitle' /></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 内容</td>
          <td width="84%" align="left"><%=Info.fck(265,"")%></td>
      </tr>

       
        <tr align="center">
          <td colspan="2" align="center" height="31">
            <label>
              <input  type="button"  onclick="if(checkform()){f1.submit();}"   name="button" id="button" value="提交信息">
            </label> &nbsp;&nbsp;
           <input type=button value='返回上页' onclick='window.location.replace("qgminfocx.jsp")' />               </td>
        </tr>
      </table>
  </form> 
</body>
</html>
 <script type="text/javascript">
<%
if(session.getAttribute("suc")!=null)
{
session.removeAttribute("suc");
%>
alert("操作成功"); 
<%}
%>
</script>
<script language=javascript src='/sechandmall/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/sechandmall/js/popup.js'></script>
<script language=javascript src='/sechandmall/js/ajax.js'></script>
<%@page import="util.Info"%>
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
 
 function checkform(){  
var titleobj = document.getElementById("title");  
if(titleobj.value==""){  
document.getElementById("clabeltitle").innerHTML="&nbsp;&nbsp;<font color=red>请输入标题</font>";  
return false;  
}else{
document.getElementById("clabeltitle").innerHTML="  ";  
}  
  
return true;   
}   
</script>  
