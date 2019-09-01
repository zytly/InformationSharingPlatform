<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
 
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
  dao.commOper("delete from shj where id="+did);
  }
  
  String url = "tslbgl.jsp?1=1";
  String sql = "select * from shj  where 1=1 ";
  
  if(!key.equals(""))
  {
  sql+=" and shjname like '%"+key+"%' ";
  }
  
  sql+=" order by id desc";
  System.out.println(sql);
  PageManager pageManager = PageManager.getPage(url, 100, request);
  pageManager.doList(sql);
  PageManager bean = (PageManager) request.getAttribute("page");
  ArrayList<HashMap> nlist = (ArrayList) bean.getCollection();
   %>
  <body>
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<form name="f1" method="post" action="/sechandmall/admin/tslbgl.jsp" >
  	<table id="mainbody" border="0" width="100%" cellspacing="1"
					class="tableform">
			<tr>
     				 <td height="31" align="left" style="font-size: 12px">  
                     &nbsp;&nbsp;相关信息&nbsp; :&nbsp; 
   				       <input name="key" type="text" value="<%=key %>" size="35"> &nbsp;
   				     <input type="submit" class="btn3_mouseup" value="查询"> &nbsp;
   				     <input type="button" onclick="add();" class="btn3_mouseup" value="添加">                     </td>
	    </tr>
			</table>
  	
  	
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
<tr align="center">
          <td colspan="7"  background=sechandmallge/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">信息列表</td>
        </tr>
        <tr align="center">
          <td class="itemtitle" width="" > 售货机名称</td>
          <td class="itemtitle" width="" > 售货机条码</td>
          <td class="itemtitle" width="" > 所属客户</td>
          <td class="itemtitle" width="" > 操作</td>
          
  </tr>
        
       <%
        int i=0;
  for(HashMap data:nlist)
  {
  i++;
    %>
        <tr align="center">
        
     <td align="center"> <%=data.get("shjname").equals("")?"&nbsp;":data.get("shjname") %> </td>
     <td align="center"> <%=data.get("shjtm").equals("")?"&nbsp;":data.get("shjtm") %> </td>
          <td align="center"> <%=data.get("shjkh").equals("")?"&nbsp;":data.get("shjkh") %> </td>
          <td align="center"> 
          <a href="javascript:update('<%=data.get("id")%>')">修改</a>
          &nbsp;|&nbsp;
          <a href="/sechandmall/admin/tslbgl.jsp?did=<%=data.get("id")%>">删除</a> </td>
          
  </tr>
        
        <%} %>
        
        
        <tr align="center">
        
     <td align="center" colspan="4"> ${page.info } </td>
   
          
  </tr>
        
        
        <script type="text/javascript">
          function update(no)
          {
          pop('/sechandmall/admin/updatetslbgl.jsp?id='+no,'修改售货机信息',500,117);
          }
          
          function add()
          {
          pop('/sechandmall/admin/addtslbgl.jsp','添加售货机信息',500,117);
          }
          </script>
      </table>
      </form>
</body>
</html>
