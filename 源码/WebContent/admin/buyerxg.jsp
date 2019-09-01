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
new CommDAO().delete(request,"sysuser"); 
String id = request.getParameter("id"); 
String erjitype = request.getParameter("erjitype"); 
String myztree = request.getParameter("myztree"); 
HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"sysuser",ext,true,false); 
HashMap mmm = new CommDAO().getmap(id,"sysuser"); 
%>
<body>
  <form name="f1" method="post"  action="buyerxg.jsp?f=f&id=<%=mmm.get("id")%>"   onsubmit="return checkform()"  >
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
        <tr align="center" style="display: ">
          <td colspan="2"  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">信息查看</td>
        </tr>
        
         <tr align="center">
          <td width="16%" align="center" height="28"> 用户名</td>
          <td width="84%" align="left"><input type=text  onblur='checkform()'  class='' id='uname' name='uname' size=35 /><label id='clabeluname' /></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 密码</td>
          <td width="84%" align="left"><input type=text  onblur='checkform()'  class='' id='upass' name='upass' size=35 /><label id='clabelupass' /></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 姓名</td>
          <td width="84%" align="left"><input type=text  onblur='checkform()'  class='' id='tname' name='tname' size=35 /><label id='clabeltname' /></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 性别</td>
          <td width="84%" align="left"><span id="sexdanx"><label><input type=radio name='sex' value='男' />&nbsp;&nbsp;男 </label>&nbsp;
<label><input type=radio name='sex' value='女' />&nbsp;&nbsp;女 </label>&nbsp;
</span></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 年龄</td>
          <td width="84%" align="left"><input type=text  onblur='checkform()'  class='' id='age' name='age' size=35 /><label id='clabelage' /></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 联系电话</td>
          <td width="84%" align="left"><input type=text  onblur='checkform()'  class='' id='tel' name='tel' size=35 /><label id='clabeltel' /></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 联系地址</td>
          <td width="84%" align="left"><textarea  cols='45' rows='3'  onblur='checkform()'   style='margin-top: 1px;margin-bottom: 1px'  class=''   name='addrs'   ></textarea></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 联系QQ</td>
          <td width="84%" align="left"><input type=text  onblur='checkform()'  class='' id='qq' name='qq' size=35 /><label id='clabelqq' /></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 备注</td>
          <td width="84%" align="left"><textarea  cols='45' rows='3'  onblur='checkform()'   style='margin-top: 1px;margin-bottom: 1px'  class=''   name='bei'   ></textarea></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 头像</td>
          <td width="84%" align="left"><%=Info.getImgUpInfo(65)%></td>
      </tr>

       
        <tr align="center">
          <td colspan="2" align="center" height="31">
            <label>
              <input type="submit" name="button" id="button" value="提交信息">
            </label> &nbsp;&nbsp;
           <input type=button value='返回上页' onclick='window.location.replace("buyer.jsp")' />               </td>
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
var unameobj = document.getElementById("uname");  
if(unameobj.value==""){  
document.getElementById("clabeluname").innerHTML="&nbsp;&nbsp;<font color=red>请输入用户名</font>";  
return false;  
}else{ 
document.getElementById("clabeluname").innerHTML="  ";  
}  
var unameobj = document.getElementById("uname");  
if(unameobj.value!=""){  
var ajax = new AJAX(); 
ajax.post("/sechandmall/factory/checkno.jsp?table=sysuser&col=uname&value="+unameobj.value+"&checktype=update&id=<%=mmm.get("id")%>&ttime=<%=Info.getDateStr()%>"); 
var msg = ajax.getValue(); 
if(msg.indexOf('Y')>-1){ 
document.getElementById("clabeluname").innerHTML="&nbsp;&nbsp;<font color=red>用户名已存在</font>";  
return false; 
}else{ 
document.getElementById("clabeluname").innerHTML="  ";  
}  
}  
var upassobj = document.getElementById("upass");  
if(upassobj.value==""){  
document.getElementById("clabelupass").innerHTML="&nbsp;&nbsp;<font color=red>请输入密码</font>";  
return false;  
}else{ 
document.getElementById("clabelupass").innerHTML="  ";  
}  
var tnameobj = document.getElementById("tname");  
if(tnameobj.value==""){  
document.getElementById("clabeltname").innerHTML="&nbsp;&nbsp;<font color=red>请输入姓名</font>";  
return false;  
}else{ 
document.getElementById("clabeltname").innerHTML="  ";  
}  
var telobj = document.getElementById("tel");  
if(telobj.value==""){  
document.getElementById("clabeltel").innerHTML="&nbsp;&nbsp;<font color=red>请输入联系电话</font>";  
return false;  
}else{ 
document.getElementById("clabeltel").innerHTML="  ";  
}  
var telobj = document.getElementById("tel");  
if(telobj.value!=""){  
if(telobj.value.length>11||telobj.value.length<8||isNaN(telobj.value)){ 
document.getElementById("clabeltel").innerHTML="&nbsp;&nbsp;<font color=red>联系电话必须为8-11位数字</font>";  
return false;
}else{  
document.getElementById("clabeltel").innerHTML="";  
}  
}  
var qqobj = document.getElementById("qq");  
if(qqobj.value!=""){  
if(qqobj.value.length>12||isNaN(qqobj.value)){ 
document.getElementById("clabelqq").innerHTML="&nbsp;&nbsp;<font color=red>联系QQ必须为12位以内数字</font>";  
return false;
}else{  
document.getElementById("clabelqq").innerHTML="";  
}  
}  
return true;   
}   
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
