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

<%
String num = request.getParameter("num");
String id = request.getParameter("id");
 
HashMap ext = new HashMap();
ext.put("uname",Info.getUser(request).get("uname"));
ext.put("pid",id);
ext.put("status","已出价");
new CommDAO().insert(request,response,"proscar",ext,true,true);
 %>

   <form name="f1" method="post" action="num.jsp?f=f&id=<%=id %>">
 <TABLE width="34%" height="78" border=0 align="center" cellPadding=0 cellSpacing=0>
<TBODY>
                      
                      <tr>
                      <td align="center" height="50" valign="middle">
                    
                        <label>
                          <input name="num" type="text"  id="content" value="" size="20">
                        </label>
                        </td>
                      </tr>
                      <tr>
                        <td align="center" height="18" valign="middle"><input name="input"  type="submit" value="提交信息" /></td>
                      </tr>
</TABLE>
</form> 
</BODY></HTML>

