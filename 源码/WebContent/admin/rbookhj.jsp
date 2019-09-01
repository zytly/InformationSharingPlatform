<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
<%@page import="util.PageManager"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="/sechandmall/admin/commfiles/css/common.css" /> 
	<link rel="stylesheet" type="text/css" href="/sechandmall/admin/commfiles/css/style.css" /> 
	<script type="text/javascript" src="/sechandmall/js/popup.js"></script>
	<script type="text/javascript" src="/sechandmall/js/calendar/WdatePicker.js"></script>
  </head>
  <%
  CommDAO dao = new CommDAO();
 HashMap user = Info.getUser(request);
 
   String key = request.getParameter("key")==null?"":request.getParameter("key");
 
  String did = request.getParameter("did")==null?"":request.getParameter("did");
  
  if(!did.equals(""))
  {
  dao.commOper("delete from xiaos where id="+did);
  }
  
  
  
  String url = "rbookhj.jsp?1=1";
  String sql = "select * from xiaos where uname='"+user.get("uname")+"' "; 
  
  if(!key.equals(""))
  {
  url+="&key="+key;
  sql+=" and (shj like '%"+key+"%' or goodname like '%"+key+"%' ) ";
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
  	<form name="f1" method="post" action="/sechandmall/admin/rbookhj.jsp" >
  	<table id="mainbody" border="0" width="100%" cellspacing="1"
					class="tableform">
			<tr>
     				 <td width=10% height="31" align="center" style="font-size: 12px">相关信息 :</td>
	    <td  style="font-size: 12px" align="left">
	    
	    <input type=text name="key" id="key" size="30" />
	    
	    
	    </td>
					<td width=10% align="center" style="font-size: 12px"></td>
					<td width=46% style="font-size: 12px" align="left">  
					
					
					
					</td>
					<td width=20% style="font-size: 12px" align="right">
					<input type="submit" class="btn3_mouseup" value="查询">&nbsp; &nbsp; 
					<input type="button" class="btn3_mouseup" onclick="add();" value="添加">&nbsp; 
					
					</td>
			</tr>
			</table>
  	
  	
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
<tr align="center">
          <td colspan="10"  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">信息列表</td>
        </tr>
        <tr align="center">
          <td  class="itemtitle" > 售货机</td>
          <td class="itemtitle"> 商品名称</td>
          <td class="itemtitle"> 商品数量</td>
          <td class="itemtitle"> 价格</td>
          <td class="itemtitle">商品条码</td>
          <td class="itemtitle">销售时间</td>
           
          
          <td class="itemtitle">操作</td>
  </tr>
        
         <%
 
  for(HashMap map:nlist)
  {
    %>
        <tr align="center">
          <td align="center"> <%=map.get("shj").equals("")?"&nbsp;":map.get("shj") %> </td>
            <td align="center"> <%=map.get("goodname").equals("")?"&nbsp;":map.get("goodname") %> </td>
           <td align="center"> <%=map.get("nums").equals("")?"&nbsp;":map.get("nums") %> </td>
            <td align="center"> <%=map.get("price").equals("")?"&nbsp;":map.get("price") %> </td>
          <td align="center"> <%=map.get("goodtm").equals("")?"&nbsp;":map.get("goodtm") %> </td>
            <td align="center"> <%=map.get("stime").equals("")?"&nbsp;":map.get("stime") %> </td>
           
           
           
          <td align="center">
          
          
          <a href="javascript:update('<%=map.get("id")%>')">修改</a>
          &nbsp;|&nbsp;&nbsp;
          <a href="rbookhj.jsp?did=<%=map.get("id")%>">删除</a>
          
          
          
          </td>
  </tr>
        <%} %>
        
        
        <script type="text/javascript">
          function update(no)
          {
          pop('/sechandmall/admin/updatexs.jsp?id='+no,'修改信息',450,195);
          }
          
           
          
          function shbook(no)
          {
          pop('/sechandmall/admin/rshbook.jsp?id='+no,'续借',400,72);
          }
          
          function add()
          {
          pop('/sechandmall/admin/addxs.jsp','添加销售',450,195);
          }
          </script>
        
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