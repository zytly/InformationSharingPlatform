<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
ext.put("uname",Info.getUser(request).get("uname")); 
ext.put("status","申请中"); 
new CommDAO().insert(request,response,"changes",ext,true,false); 
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
                      <TD class=green_title01>交换物品 </TD>
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
                                
                                
                                
                                
                                
                                
                                
                                <form  action="change.jsp?f=f&tglparentid=<%=tglparentid%>"  name="f1" method="post"   onsubmit="return checkform();" >
                               
                               
                               <input type=hidden name="touname" value="<%=request.getParameter("touname") %>" />
                               <input type=hidden name="topname" value="<%=request.getParameter("topname") %>" />
                               <input type=hidden name="topid" value="<%=request.getParameter("pid") %>" />
                               
                               
                                <TABLE border=0 cellSpacing=5 cellPadding=0 
                                width="100%">
                                <TBODY>
                                <TR>
                                <TD vAlign=top>
                                <TABLE id=standard border=0 cellSpacing=0 
                                cellPadding=0 width="100%">
                                <TBODY>
                              
                              
                              
                              
                                 
                                
                                
                                <TR>
                                  <TD width="231" height="30" align=center vAlign=center>物品名称</TD>
                                  <TD width="744" height="30" align=left vAlign=center> 
                                    <input type=text  onblur='checkform()' class='' id='pname' name='pname' size=35 /><label id='clabelpname' /> 
                                    </TD>
                                  </TR>
<TR>
                                  <TD width="231" height="30" align=center vAlign=center>新旧度</TD>
                                  <TD width="744" height="30" align=left vAlign=center> 
                                    <input type=text  onblur='checkform()' class='' id='nostatus' name='nostatus' size=35 /><label id='clabelnostatus' /> 
                                    </TD>
                                  </TR>
<TR>
                                  <TD width="231" height="30" align=center vAlign=center>物品说明</TD>
                                  <TD width="744" height="30" align=left vAlign=center> 
                                    <textarea  cols='45' rows='3'  style='margin-top: 1px;margin-bottom: 1px'  class=''  name='pbei'  ></textarea> 
                                    </TD>
                                  </TR>
<TR>
                                  <TD width="231" height="30" align=center vAlign=center>相关图片</TD>
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
var pnameobj = document.getElementById("pname");  
if(pnameobj.value==""){  
document.getElementById("clabelpname").innerHTML="&nbsp;&nbsp;<font color=red>请输入物品名称</font>";  
return false;  
}else{
document.getElementById("clabelpname").innerHTML="  ";  
}  
  
var nostatusobj = document.getElementById("nostatus");  
if(nostatusobj.value==""){  
document.getElementById("clabelnostatus").innerHTML="&nbsp;&nbsp;<font color=red>请输入新旧度</font>";  
return false;  
}else{
document.getElementById("clabelnostatus").innerHTML="  ";  
}  
  
return true;   
}   
popheight=140;
</script>  
