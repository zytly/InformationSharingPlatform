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
  dao.commOper("delete from news where id="+did);
  }
  
  String url = "news.jsp?1=1";
  String sql = "select * from news  where  infotype='新闻' ";
  
  if(!key.equals(""))
  {
  url+="&key="+key;
  sql+=" and title like '%"+key+"%' ";
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
  	<form name="f1" method="post" action="/sechandmall/admin/news.jsp" >
  	<table id="mainbody" border="0" width="100%" cellspacing="1"
					class="tableform">
			<tr>
     				 <td width=5% height="31" align="center" style="font-size: 12px">相关信息&nbsp;:</td>
	    <td width=14% style="font-size: 12px" align="left"><input name="key" size="35" value="<%=key %>" type="text"></td>
				 
					<td width=20% style="font-size: 12px" align="right">
					<input type="submit" class="btn3_mouseup" value="查询">&nbsp;&nbsp;
					
					<input type="button" onclick="add();" class="btn3_mouseup" value="添加">
					&nbsp;
					</td>
			</tr>
			</table>
  	
  	
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
<tr align="center">
          <td colspan="7"  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">信息列表</td>
        </tr>
        <tr align="center">
          <td  class="itemtitle" > 标题</td>
          <td class="itemtitle"> 发布时间</td>
          
          <td class="itemtitle">操作</td>
  </tr>
        
         <%
 
  for(HashMap map:nlist)
  {
    %>
        <tr align="center">
          <td align="center"> <%=map.get("title").equals("")?"&nbsp;":map.get("title") %> </td>
          <td align="center"> <%=map.get("savetime").equals("")?"&nbsp;":map.get("savetime") %>  </td>
          
          <td align="center">
          
          <a href="javascript:update('<%=map.get("id")%>')">修改</a>
          <script type="text/javascript">
          
          
          function update(no)
          {
          pop('/sechandmall/admin/updatenews.jsp?id='+no,'修改信息',700,387);
          }
          </script>
          &nbsp;|&nbsp;
          <a href="/sechandmall/admin/news.jsp?did=<%=map.get("id")%>">删除</a>
          
          
          
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

<script type="text/javascript">
<!--

          function add()
          {
          pop('/sechandmall/admin/addnews.jsp','添加信息',700,387);
          }
//-->
</script>

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