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
<%
String id = request.getParameter("id");
HashMap map = new CommDAO().getmap(id,"news");
 %>
<META name=GENERATOR content="MSHTML 8.00.6001.19258"></HEAD>
<BODY>
 
 <jsp:include page="top.jsp"></jsp:include>
 
<TABLE border=0 cellSpacing=0 cellPadding=0 width=990 align=center>
  <TBODY>
  <TR>
    <TD vAlign=top>
      <TABLE width="100%" height="276" border=0 cellPadding=0 cellSpacing=0>
        <TBODY>
        <TR>
          <TD width=710 height="276" vAlign=top>
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
                      <TD class=green_title01>商城资讯&nbsp;&nbsp;>>&nbsp;&nbsp;<%=map.get("title") %></TD>
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
                                <TABLE border=0 cellSpacing=5 cellPadding=0 
                                width="100%">
                                <TBODY>
                                <TR>
                                <TD vAlign=top>
                                <TABLE id=standard border=0 cellSpacing=0 
                                cellPadding=0 width="100%">
                                <TBODY>
                              
                              
                              
                               
                                <TR>
                             
                                <TD vAlign=center width="" align=left>
                                
                                <center>
                                <font size="4"><strong><%=Info.subStr(map.get("title").toString(),210)  %></strong></font>
                                <br />
                                
                                发布时间 : <%=map.get("savetime") %>
                                
                                <br />
                                
                                <%
                                if(!map.get("filename").equals("")){
                                 %>
                                 <img src="upfile/<%=map.get("filename") %>" height="290" />
                                 <%} %>
                                </center>
                                <%=map.get("content") %>
                                
                                
                                
                                 </TD>
                              </TR>
                             
                                
                                
                             
                                
                                
                                 </TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
           
      </TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<jsp:include page="foot.jsp"></jsp:include>
      
      
</BODY></HTML>

