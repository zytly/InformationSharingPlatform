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
      <TABLE width="100%" height="276" border=0 cellPadding=0 cellSpacing=0>
        <TBODY>
        <TR>
          <TD width=990 height="276" vAlign=top>
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
                      <TD class=green_title01>商城资讯</TD>
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
                              
                              
                              
                              <%
                               
                             PageManager pageManager = PageManager.getPage("nmore.jsp?1=1", 18, request);
							  pageManager.doList("select * from news where infotype='新闻' order by id desc");
							  PageManager bean = (PageManager) request.getAttribute("page");
							  ArrayList<HashMap> nlist = (ArrayList) bean.getCollection();
                            for(HashMap m:nlist){
                               %>
                                <TR>
                                <TD height=30 vAlign=center width="3%" 
                                align=left><IMG src="sechandmall_files/icon02.jpg" 
                                width=4 height=7></TD>
                                <TD vAlign=center width="85%" align=left>
                                <A href="nxiang.jsp?id=<%=m.get("id") %>">
                                <%=Info.subStr(m.get("title").toString(),210)  %></A> </TD>
                                <TD vAlign=center width="12%" 
                                align=left><%=m.get("savetime") %></TD></TR>
                             
                                <TR align=left  >
                                <TD height=1 
                                background=sechandmall_files/xjnews_11.gif 
                                colSpan=3></TD></TR> 
                                
                                <% }%>
                                
                                
                                
                                
                                <TR align=left>
                                <TD height=40 align="center" colSpan=3 >
                                
                                ${page.info}
                                
                                </TD></TR> 
                                
                                
                                
                                 </TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
           
      </TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<jsp:include page="foot.jsp"></jsp:include>
      
      
</BODY></HTML>

