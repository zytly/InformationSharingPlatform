<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="util.PageManager"%>
<%@page import="dao.CommDAO"%>
 
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="/sechandmall/admin/commfiles/css/common.css" /> 
	<link rel="stylesheet" type="text/css" href="/sechandmall/admin/commfiles/css/style.css" /> 
	<script type="text/javascript" src="/sechandmall/js/popup.js"></script>
  </head>
  <%
 CommDAO dao = new CommDAO();
   String key = request.getParameter("key")==null?"":request.getParameter("key");
   String did = request.getParameter("did")==null?"":request.getParameter("did");
  
  if(!did.equals(""))
  {
  dao.commOper("delete from messages where id="+did);
  }
  
  String url = "message.jsp?1=1";
  String sql = "select * from messages  where 1=1 ";
  
  if(!key.equals(""))
  {
  url+="&key="+key;
  sql+=" and uname like '%"+key+"%' ";
  }
 
  sql+=" order by id desc";
  System.out.println(sql);
  PageManager pageManager = PageManager.getPage(url, 10, request);
  pageManager.doList(sql);
  PageManager bean = (PageManager) request.getAttribute("page");
  ArrayList<HashMap> nlist = (ArrayList) bean.getCollection();
   %>
  <body>
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<form name="f1" method="post" action="/sechandmall/admin/message.jsp" >
  	<table id="mainbody" border="0" width="100%" cellspacing="1"
					class="tableform">
			<tr>
     				 <td width=4% height="31" align="center" style="font-size: 12px">相关信息&nbsp;:</td>
	    <td width=14% style="font-size: 12px" align="left"><input name="key" value="<%=key %>" size="40" type="text"></td>
				 
			 
					<td width=20% style="font-size: 12px" align="right"><input type="submit" class="btn3_mouseup" value="查询">&nbsp;&nbsp;</td>
			</tr>
			</table>
  	
  	
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
<tr align="center">
          <td colspan="9"  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">信息列表</td>
        </tr>
        <tr align="center">
          <td  class="itemtitle" > 留言人</td>
          <td class="itemtitle"> 留言时间</td>
          <td class="itemtitle" width="490"> 内容</td>
          <td class="itemtitle"> 管理员回复 </td>
          
          <td class="itemtitle">操作</td>
  </tr>
        
         <%
 
  for(HashMap map:nlist)
  {
    %>
        <tr align="center">
          <td align="center"> <%=map.get("saver").equals("")?"&nbsp;":map.get("saver") %> </td>
          <td align="center"> <%=map.get("savetime").equals("")?"&nbsp;":map.get("savetime") %>  </td>
          <td align="center" width="490">  <%=map.get("content").equals("")?"&nbsp;":map.get("content") %> </td>
          <td align="center">  <%=map.get("recontent").equals("")?"&nbsp;":map.get("recontent") %> </td>
           
          <td align="center">
          
          <a href="javascript:update('<%=map.get("id")%>')">回复</a>
          <script type="text/javascript">
          function update(no)
          {
          pop('/sechandmall/admin/updatemessage.jsp?id='+no,'回复留言',530,89);
          }
          </script>
          &nbsp;|&nbsp;
          <a href="/sechandmall/admin/message.jsp?did=<%=map.get("id")%>">删除</a>
          
          
          
          </td>
  </tr>
        <%} %>
        
        <tr align="center">
          <td align="right" colspan="13"><%=bean.getInfo() %></td>
        </tr>
      </table>
      </form>
</body>
</html>
<%
if(request.getAttribute("suc")!=null)
{
 %>
 <script type="text/javascript">
<!--
alert("添加成功")
//-->
</script>
<%}%>