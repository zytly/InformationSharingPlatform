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
new CommDAO().delete(request,"splb"); 
String id = request.getParameter("id"); 
String erjitype = request.getParameter("erjitype"); 
String myztree = request.getParameter("myztree"); 
HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"splb",ext,true,true); 
HashMap mmm = new CommDAO().getmap(id,"splb"); 
%>
<body>
  <form name="f1" method="post"  action="updatesplb.jsp?f=f&id=<%=mmm.get("id")%>"   onsubmit="return checkform()"  >
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
        <tr align="center" style="display: ">
          <td colspan="2"  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">信息修改</td>
        </tr>
        
         <tr align="center">
          <td width="16%" align="center" height="28"> 类别名称</td>
          <td width="84%" align="left"><input type=text  onblur='checkform()'  class='' id='datashowname' name='datashowname' size=35 /><label id='clabeldatashowname' /></td>
      </tr>

       
        <tr align="center">
          <td colspan="2" align="center" height="31">
            <label>
              <input type="submit" name="button" id="button" value="提交信息">
            </label> &nbsp;&nbsp;
           <input type=button value='删除本类' onclick='window.location.replace("updatesplb.jsp?f=f&id=<%=mmm.get("id")%>&scid=<%=mmm.get("id")%>")' />&nbsp;&nbsp;&nbsp;&nbsp;<input type=button value='返回上页' onclick='popclose();' />               </td>
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
var datashownameobj = document.getElementById("datashowname");  
if(datashownameobj.value==""){  
document.getElementById("clabeldatashowname").innerHTML="&nbsp;&nbsp;<font color=red>请输入类别名称</font>";  
return false;  
}else{ 
document.getElementById("clabeldatashowname").innerHTML="  ";  
}  
var datashownameobj = document.getElementById("datashowname");  
if(datashownameobj.value!=""){  
var ajax = new AJAX(); 
ajax.post("/sechandmall/factory/checkno.jsp?table=splb&col=datashowname&value="+datashownameobj.value+"&checktype=update&id=<%=mmm.get("id")%>&ttime=<%=Info.getDateStr()%>"); 
var msg = ajax.getValue(); 
if(msg.indexOf('Y')>-1){ 
document.getElementById("clabeldatashowname").innerHTML="&nbsp;&nbsp;<font color=red>类别名称已存在</font>";  
return false; 
}else{ 
document.getElementById("clabeldatashowname").innerHTML="  ";  
}  
}  
return true;   
}   
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
