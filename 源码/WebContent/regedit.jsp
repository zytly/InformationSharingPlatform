<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
<%@page import="util.PageManager"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0041)http://www.xingguangerwai01.com/index.jsp -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE></TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>

<LINK rel=stylesheet 
type=text/css href="/sechandmall/sechandmall_files/css.css">
 <META name=GENERATOR content="MSHTML 8.00.6001.19258"></HEAD>
<% 
HashMap ext = new HashMap(); 
String tglparentid=request.getParameter("tglparentid")==null?"":request.getParameter("tglparentid"); 
ext.put("tglparentid",tglparentid); 
ext.put("hps","0"); 
ext.put("status","正常"); 
new CommDAO().insert(request,response,"sysuser",ext,true,false); 
%>
<BODY>
 
 <jsp:include page="top.jsp"></jsp:include>
 
<TABLE border=0 cellSpacing=0 cellPadding=0 width=990 align=center>
  <TBODY>
  <TR>
    <TD vAlign=top>
      <TABLE width="100%" height="276" border=0 cellPadding=0 cellSpacing=0>
        <TBODY>
        <TR>
          <TD width=100% height="276" vAlign=top>
            <TABLE width="100%" height="274" border=0 cellPadding=0 cellSpacing=0>
              <TBODY>
              <TR>
                <TD height=27 background=sechandmall_files/tn.jpg>
                  <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                    <TBODY>
                    <TR>
                      <TD width=20 height="28">
                        <DIV align=center><IMG src="sechandmall_files/icon01.jpg" 
                        width=9 height=26></DIV></TD>
                      <TD class=green_title01>用户注册 </TD>
                      <TD width=50>
                      <DIV align=center></DIV></TD></TR></TBODY></TABLE></TD></TR>
              <TR>
                <TD height="238" vAlign=top>
                  <TABLE width="100%" height="238" border=0 cellPadding=0 cellSpacing=0>
                    <TBODY>
                    <TR>
                      <TD height=5></TD>
                    </TR>
                    <TR>
                      <TD height="233">
                        <TABLE width="100%" height="237" border=0 cellPadding=0 cellSpacing=1 
                        bgColor=#dddddd>
                          <TBODY>
                          <TR>
                            <TD valign="top" bgColor=#ffffff>
                              <TABLE border=0 cellSpacing=0 cellPadding=0 
                              width="100%">
                                <TBODY>
                                <TR>
                                <TD vAlign=top>
                                
                                
                                
                                
                                
                                
                                
                                <form  action="/sechandmall/sechandmall?ac=regedit&tglparentid=<%=tglparentid%>"  name="f1" method="post"   onsubmit="return checkform();" >
                                <TABLE border=0 cellSpacing=5 cellPadding=0 
                                width="100%">
                                <TBODY>
                                <TR>
                                <TD vAlign=top>
                                <TABLE id=standard border=0 cellSpacing=0 
                                cellPadding=0 width="100%">
                                <TBODY>
                              
                               
                                
                                <TR>
                                  <TD width="231" height="30" align=center vAlign=center>用户名</TD>
                                  <TD width="744" height="30" align=left vAlign=center> 
                                    <input type=text  onblur='checkform()' class='' id='uname' name='uname' size=35 /><label id='clabeluname' /> 
                                    </TD>
                                  </TR>
<TR>
                                  <TD width="231" height="30" align=center vAlign=center>密码</TD>
                                  <TD width="744" height="30" align=left vAlign=center> 
                                    <input type=text  onblur='checkform()' class='' id='upass' name='upass' size=35 /><label id='clabelupass' /> 
                                    </TD>
                                  </TR>
<TR>
                                  <TD width="231" height="30" align=center vAlign=center>用户类别</TD>
                                  <TD width="744" height="30" align=left vAlign=center> 
                                    <span id="utypedanx"><label><input type=radio checked=checked name='utype' id='utype' value='买家' />&nbsp;共享者 </label>&nbsp;
<label><input type=radio  name='utype' id='utype' value='卖家' />&nbsp;求购者 </label>&nbsp;
</span> 
                                    </TD>
                                  </TR>
<TR>
                                  <TD width="231" height="30" align=center vAlign=center>姓名 </TD>
                                  <TD width="744" height="30" align=left vAlign=center> 
                                    <input type=text  onblur='checkform()' class='' id='tname' name='tname' size=35 /><label id='clabeltname' /> 
                                    </TD>
                                  </TR>
<TR>
                                  <TD width="231" height="30" align=center vAlign=center>性别</TD>
                                  <TD width="744" height="30" align=left vAlign=center> 
                                    <span id="sexdanx"><label><input type=radio checked=checked name='sex' id='sex' value='男' />&nbsp;男 </label>&nbsp;
<label><input type=radio  name='sex' id='sex' value='女' />&nbsp;女 </label>&nbsp;
</span> 
                                    </TD>
                                  </TR>
<TR>
                                  <TD width="231" height="30" align=center vAlign=center>年龄</TD>
                                  <TD width="744" height="30" align=left vAlign=center> 
                                    <input type=text  onblur='checkform()' class='' id='age' name='age' size=35 /><label id='clabelage' /> 
                                    </TD>
                                  </TR>
<TR>
                                  <TD width="231" height="30" align=center vAlign=center>联系电话</TD>
                                  <TD width="744" height="30" align=left vAlign=center> 
                                    <input type=text  onblur='checkform()' class='' id='tel' name='tel' size=35 /><label id='clabeltel' /> 
                                    </TD>
                                  </TR>
<TR>
                                  <TD width="231" height="30" align=center vAlign=center>地址</TD>
                                  <TD width="744" height="30" align=left vAlign=center> 
                                    <input type=text  onblur='checkform()' class='' id='addrs' name='addrs' size=60 /><label id='clabeladdrs' /> 
                                    </TD>
                                  </TR>
<TR>
                                  <TD width="231" height="30" align=center vAlign=center>联系QQ</TD>
                                  <TD width="744" height="30" align=left vAlign=center> 
                                    <input type=text  onblur='checkform()' class='' id='qq' name='qq' size=35 /><label id='clabelqq' /> 
                                    </TD>
                                  </TR>
<TR>
                                  <TD width="231" height="30" align=center vAlign=center>说明</TD>
                                  <TD width="744" height="30" align=left vAlign=center> 
                                    <textarea  cols='45' rows='3'  style='margin-top: 1px;margin-bottom: 1px'  class=''  name='bei'  ></textarea> 
                                    </TD>
                                  </TR>
<TR>
                                  <TD width="231" height="30" align=center vAlign=center>相片</TD>
                                  <TD width="744" height="30" align=left vAlign=center> 
                                    <%=Info.getImgUpInfo(65)%> 
                                    </TD>
                                  </TR> 
                                
                                <TR>
                             
                                <TD height="40" colspan="3" align=center vAlign=center><label>
                                  <input type="submit" name="button" id="button" value="提交信息"> &nbsp;&nbsp;&nbsp;
                                  <input type="button" name="button2" id="button2" value="重新填写">
                                </label></TD>
                              </TR>
                                 </TBODY></TABLE></TD></TR></TBODY></TABLE>
                                
                                </form>
                                
                                
                                
                                
                                
                                
                                
                                
                                </TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
           
      </TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<jsp:include page="foot.jsp"></jsp:include>
      
      
</BODY></HTML>

<script type="text/javascript">
<%
if(session.getAttribute("suc")!=null)
{
session.removeAttribute("suc");
%>
alert("操作成功"); 
<%}
%>
</script><script language=javascript src='/sechandmall/js/My97DatePicker/WdatePicker.js'></script>
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
ajax.post("/sechandmall/factory/checkno.jsp?table=sysuser&col=uname&value="+unameobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabeluname").innerHTML="&nbsp;&nbsp;<font color=red>用户名已存在</font>";  
return false;
}else{document.getElementById("clabeluname").innerHTML="  ";  
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
document.getElementById("clabeltname").innerHTML="&nbsp;&nbsp;<font color=red>请输入姓名 / 店名</font>";  
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

popheight=200;
</script>  
