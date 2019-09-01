<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="util.PageManager"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
 
 
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
  String truename = request.getParameter("truename")==null?"":request.getParameter("truename");
  
   String qrid = request.getParameter("qrid")==null?"":request.getParameter("qrid");
      String pjid = request.getParameter("pjid")==null?"":request.getParameter("pjid");
  
  if(!pjid.equals(""))
  {
  dao.commOper("update proscar set pj='"+request.getParameter("value")+"' where id="+pjid);
  dao.commOper("update proscar set pj='"+request.getParameter("value")+"' where id="+pjid);
  }
  
  if(!qrid.equals(""))
  { 
  dao.commOper("update proscar set status='已确认收货' where id="+qrid);
  }
  
  
  String scid = request.getParameter("scid")==null?"":request.getParameter("scid");
  
  
  
  
  if(!scid.equals(""))
  {
  dao.commOper("delete from prosorder where id="+scid);
  }
  
  String url = "ordersbls.jsp?1=1";
  String sql = "select b.*,c.*,b.status pstatus,b.id as bid from  proscar b,pros c  where   b.pid=c.id and  b.uname='"+Info.getUser(request).get("uname")+"'  and (b.status='已确认收货' or b.status='订单已被拒绝') ";
  
  if(!key.equals(""))
  {
  url+="&key="+key;
  sql+=" and (c.proshop like '%"+key+"%' or c.proname like '%"+key+"%' ) ";
  }
 
  sql+=" order by b.id desc";
  System.out.println(sql);
  PageManager pageManager = PageManager.getPage(url, 5, request);
  pageManager.doList(sql);
  PageManager bean = (PageManager) request.getAttribute("page");
  ArrayList<HashMap> nlist = (ArrayList) bean.getCollection();
   %>
  <body>
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<form name="f1" method="post" action="/sechandmall/admin/ordersbls.jsp" >
  	<table id="mainbody" border="0" width="100%" cellspacing="1"
					class="tableform">
			<tr>
     				 <td width=16% height="31" align="center" style="font-size: 12px">卖家或商品名&nbsp;:</td>
	    <td width=14% style="font-size: 12px" align="left"><input name="key"  size="30" value="<%=key %>" type="text"></td>
					 
					<td width=46% style="font-size: 12px" align="left">&nbsp;</td>
					<td width=20% style="font-size: 12px" align="right"><input type="submit" class="btn3_mouseup" value="查询">&nbsp;&nbsp;</td>
			</tr>
			</table>
  	
  	
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
<tr align="center">
          <td colspan="9"  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">信息列表</td>
        </tr>
        <tr align="center">
          <td  class="itemtitle" >卖家</td>
          <td class="itemtitle"> 商品名称</td>
          <td class="itemtitle"> 价格 </td>
          <td class="itemtitle">出价</td>
          <td class="itemtitle"> 发送时间 </td> 
          <td class="itemtitle">状态</td>  
          
           <td class="itemtitle">交易评价</td>  
          <td class="itemtitle">交易评价</td>  
         
  </tr>
        
         <%
 
  for(HashMap map:nlist)
  {  
    %>
        <tr align="center">
          <td align="center"> <%=map.get("proshop").equals("")?"&nbsp;":map.get("proshop") %> </td>
          <td align="center"> <%=map.get("proname").equals("")?"&nbsp;":map.get("proname") %> </td>
          <td align="center"> <%=map.get("price").equals("")?"&nbsp;":map.get("price") %> </td>
          <td align="center"> <%=map.get("num").equals("")?"&nbsp;":map.get("num") %> </td>
          <td align="center"> <%=map.get("savetime").equals("")?"&nbsp;":map.get("savetime") %> </td>
          <td align="center"> <%=map.get("pstatus").equals("")?"&nbsp;":map.get("pstatus") %> </td>  
            <td align="center"> <%=map.get("pj").equals("")?"&nbsp;":map.get("pj") %> </td> 
          <td align="center"> 
          
            <a href="ordersbls.jsp?value=好评&pjid=<%=map.get("bid")%>">好评</a>
			 &nbsp;|&nbsp; 
			<a href="ordersbls.jsp?value=差评&pjid=<%=map.get("bid")%>">差评</a>
          
          </td> 
           
  </tr>
        <%} %>
        <script type="text/javascript">
          function fk(no)
          {
          pop('/sechandmall/admin/fk.jsp?id='+no,'订单付款',420,116);
          }
          
          function th(no)
          {
          pop('/sechandmall/admin/th.jsp?id='+no,'退换货',500,78);
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