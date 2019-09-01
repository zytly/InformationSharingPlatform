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
   String username = request.getParameter("username")==null?"":request.getParameter("username");
  String truename = request.getParameter("truename")==null?"":request.getParameter("truename");
  String did = request.getParameter("did")==null?"":request.getParameter("did");
  
  if(!did.equals(""))
  {
  dao.commOper("delete from sysuser where id="+did);
  }
  
  String url = "cbsgl.jsp?1=1";
  String sql = "select * from Sysuser  where  utype='客户' ";
  
  if(!username.equals(""))
  {
  url+="&username="+username;
  sql+=" and uname like '%"+username+"%' ";
  }
  if(!truename.equals("")){
  url+="&truename="+truename;
  sql+=" and tname like '%"+truename+"%' ";
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
  	<form name="f1" method="post" action="/sechandmall/admin/cbsgl.jsp" >
  	<table id="mainbody" border="0" width="100%" cellspacing="1"
					class="tableform">
			<tr>
     				 <td width=10% height="31" align="center" style="font-size: 12px">用户名&nbsp;:</td>
	    <td width=14% style="font-size: 12px" align="left"><input name="username" value="<%=username %>" type="text"></td>
					<td width=10% align="center" style="font-size: 12px">姓名&nbsp;:</td>
					<td width=46% style="font-size: 12px" align="left"><input value="<%=truename %>"  name="truename" type="text"></td>
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
				bgcolor="#FFFFFF" class="STYLE3">客户列表</td>
        </tr>
        <tr align="center">
          <td  class="itemtitle" > 用户名</td>
          <td class="itemtitle"> 密码</td>
          <td class="itemtitle"> 姓名</td>
          <td class="itemtitle"> 电话 </td>
          <td class="itemtitle">email</td>
          <td class="itemtitle">联系地址</td>
          <td class="itemtitle">操作</td>
  </tr>
        
         <%
 
  for(HashMap map:nlist)
  {
    %>
        <tr align="center">
          <td align="center"> <%=map.get("uname").equals("")?"&nbsp;":map.get("uname") %> </td>
          <td align="center"> <%=map.get("upass").equals("")?"&nbsp;":map.get("upass") %>  </td>
          <td align="center">  <%=map.get("tname").equals("")?"&nbsp;":map.get("tname") %> </td>
          <td align="center">  <%=map.get("tel").equals("")?"&nbsp;":map.get("tel") %> </td>
          <td align="center"> <%=map.get("email").equals("")?"&nbsp;":map.get("email") %> </td>
          <td align="center"> <%=map.get("addrs") %> </td>
          <td align="center">
          
          <a href="javascript:update('<%=map.get("id")%>')">修改</a>
          <script type="text/javascript">
          
          
          function update(no)
          {
          pop('/sechandmall/admin/updatesysusers.jsp?id='+no,'修改客户信息',500,190);
          }
          </script>
          &nbsp;|&nbsp;
          <a href="/sechandmall/admin/cbsgl.jsp?did=<%=map.get("id")%>">删除</a>
          
          
          
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
          pop(sechandmallxs/admin/addcbsgl.jsp','添加客户信息',500,190);
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