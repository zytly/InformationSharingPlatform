<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
<%@page import="util.PageManager"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0041)http://www.xingguangerwai01.com/index.jsp -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>考研资料共享平台</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>

<LINK rel=stylesheet 
type=text/css href="/sechandmall/sechandmall_files/css.css">
 
 
<META name=GENERATOR content="MSHTML 8.00.6001.19258"></HEAD>
<BODY>
 
 <jsp:include page="top.jsp"></jsp:include>
 
<TABLE border=0 cellSpacing=0 cellPadding=0 width=990 align=center>
  <TBODY>
  <TR>
    <TD vAlign=top>
      <TABLE width="100%" height="205" border=0 cellPadding=0 cellSpacing=0>
        <TBODY>
        <TR>
          <TD width=100% height="205" vAlign=top>
            <TABLE width="100%" height="205" border=0 cellPadding=0 cellSpacing=0>
              <TBODY>
              <TR>
                <TD height=27 background=sechandmall_files/tn.jpg>
                  <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                    <TBODY>
                    <TR>
                      <TD width=20 height="28">
                        <DIV align=center><IMG src="sechandmall_files/icon01.jpg" 
                        width=9 height=26></DIV></TD>
                      <TD class=green_title01>登录 </TD>
                      <TD width=50>
                      <DIV align=center></DIV></TD></TR></TBODY></TABLE></TD></TR>
              <TR>
                <TD height="177" vAlign=top>
                  <TABLE width="100%" height="177" border=0 cellPadding=0 cellSpacing=0>
                    <TBODY>
                    <TR>
                      <TD height=5></TD>
                    </TR>
                    <TR>
                      <TD height="172">
                        <TABLE width="100%" height="145" border=0 cellPadding=0 cellSpacing=1 
                        bgColor=#dddddd>
                          <TBODY>
                          <TR>
                            <TD height="143" valign="top" bgColor=#ffffff>
                              <TABLE border=0 cellSpacing=0 cellPadding=0 
                              width="100%">
                                <TBODY>
                                <TR>
                                <TD vAlign=top>
                                
                                
                                
                                
                                
                                
                                
                                <form action="/sechandmall/sechandmall?ac=flogin" name="f1" method="post" >
                                <TABLE border=0 cellSpacing=5 cellPadding=0 
                                width="100%">
                                <TBODY>
                                <TR>
                                <TD vAlign=top>
                                <TABLE id=standard border=0 cellSpacing=0 
                                cellPadding=0 width="100%">
                                <TBODY>
                              
                              
                              
                               
                              
                                 
                                
                                
                                <TR>
                                  <TD height="35" align=center vAlign=center>&nbsp;</TD>
                                  <TD height="35" align=center vAlign=center>用户名</TD>
                                  <TD width="542" height="35" align=left vAlign=center><span class="style1">
                                    <input name="uname" id="uname"  type="text" size="20"  maxlength="20" />
                                  </span></TD>
                                </TR>
                             
                                
                                <TR align=center  >
                                <TD height=1 
                                colSpan=3 
                                background=sechandmall_files/xjnews_11.gif></TD>
                                <TD width="1" height=1 
                                background=sechandmall_files/xjnews_11.gif></TD>
                                <TD width="1" height=1 
                                background=sechandmall_files/xjnews_11.gif></TD>
                                </TR> 
                                
                                
                                
                                <TR>
                             
                                <TD width="297" height="35" align=center vAlign=center>&nbsp;</TD>
                                <TD width="137" height="35" align=center vAlign=center>密码</TD>
                                <TD height="35" align=left vAlign=center><span class="style1">
                                  <input name="upass" id="upass"  type="password" size="20" maxlength="20"  />
                                </span></TD>
                                </TR>
                             
                                
                                <TR align=center  >
                                <TD height=1 
                                colSpan=3 
                                background=sechandmall_files/xjnews_11.gif></TD>
                                <TD height=1 
                                background=sechandmall_files/xjnews_11.gif></TD>
                                <TD height=1 
                                background=sechandmall_files/xjnews_11.gif></TD>
                                </TR> 
                                
                                
                                  
                                
                                <TR>
                             
                                <TD height="40" colspan="4" align=center vAlign=center><label>
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
<!--
<%
if(request.getAttribute("error")!=null){
%>
alert("用户名或密码错误");
<%}%>
//-->
</script>
