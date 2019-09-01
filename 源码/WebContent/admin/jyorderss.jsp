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
  
  
  String jsid = request.getParameter("jsid")==null?"":request.getParameter("jsid");
  
  String cfid = request.getParameter("cfid")==null?"":request.getParameter("cfid");
  String jtid = request.getParameter("jtid")==null?"":request.getParameter("jtid");
  
  if(!jsid.equals(""))
  {
  dao.commOper("update prosorder set status='订单已接受并已发货' where id="+jsid);
  }
  
  
   if(!cfid.equals(""))
  {
  dao.commOper("update prosorder set status='退货已接受并已发货' where id="+cfid);
  }
  
   if(!jtid.equals(""))
  {
  dao.commOper("update prosorder set status='拒绝退货' where id="+jtid);
  }
  
  
  String jjid = request.getParameter("jjid")==null?"":request.getParameter("jjid");
  
  if(!jjid.equals(""))
  {
  dao.commOper("update prosorder set status='订单已被拒绝' where id="+jjid);
  }
  
  String tkid = request.getParameter("tkid")==null?"":request.getParameter("tkid");
  
  if(!tkid.equals(""))
  {
  dao.commOper("update prosorder set fkstatus='已退款' where id="+tkid);
  }
  
  String did = request.getParameter("did")==null?"":request.getParameter("did");
  
  if(!did.equals(""))
  {
  dao.commOper("delete from sysuser where id="+did);
  }
  
  String url = "orderss.jsp?1=1";
  String sql = "select * from prosorder  where  toshop='"+Info.getUser(request).get("uname")+"' and status!='已确认收货' and status!='订单已被拒绝' ";
  
  if(!key.equals(""))
  {
  url+="&key="+key;
  sql+=" and (toshop like '%"+key+"%' or prosinfo like '%"+key+"%' or uname like '%"+key+"%' ) ";
  }
 
  sql+=" order by id desc";
  System.out.println(sql);
  PageManager pageManager = PageManager.getPage(url, 5, request);
  pageManager.doList(sql);
  PageManager bean = (PageManager) request.getAttribute("page");
  ArrayList<HashMap> nlist = (ArrayList) bean.getCollection();
   %>
  <body>
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<form name="f1" method="post" action="/sechandmall/admin/jyorderss.jsp" >
  	<table id="mainbody" border="0" width="100%" cellspacing="1"
					class="tableform">
			<tr>
     				 <td width=10% height="31" align="center" style="font-size: 12px">相关信息&nbsp;:</td>
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
          <td  class="itemtitle" >发送人</td>
          <td class="itemtitle"> 商品信息</td>
          <td class="itemtitle"> 合计金额 </td>
          <td class="itemtitle"> 发送时间 </td>
          <td class="itemtitle">付款状态</td>
          <td class="itemtitle">受理状态</td>
         <td class="itemtitle">订单受理</td>
  </tr>
        
         <%
 
  for(HashMap map:nlist)
  {
  String proinfo = "";
  int total=0;
  for(String str:map.get("prosinfo").toString().split(","))
  {
  proinfo+=str.split("-")[0]+"&nbsp;&nbsp;单价"+str.split("-")[1]+"&nbsp;&nbsp;"+(str.split("-")[2].equals("")?"不打折":str.split("-")[2]+"折&nbsp;&nbsp;")+"&nbsp;数量 "+str.split("-")[4]+"&nbsp;&nbsp;"+"<br />";
  
  int ft = 0;
  ft=Integer.parseInt(str.split("-")[1])*Integer.parseInt(str.split("-")[4]);
  if(!str.split("-")[2].equals(""))
  {
  ft = (Integer.parseInt(str.split("-")[2])*ft)/10;
  }
   total+=ft;
  }
    %>
        <tr align="center">
          <td align="center"> <%=map.get("uname").equals("")?"&nbsp;":map.get("uname") %> </td>
          <td align="center"> <%=proinfo %>  </td>
          <td align="center">  <%=total %> </td>
          <td align="center">  <%=map.get("savetime").equals("")?"&nbsp;":map.get("savetime") %> </td>
          <td align="center"> <%=map.get("fkstatus").equals("")?"&nbsp;":map.get("fkstatus") %> </td>
          <td align="center"> <%=map.get("status").equals("")?"&nbsp;":map.get("status") %> </td>
          <td align="center"> 
          
           <%if(map.get("fkstatus").equals("已付款")){ %> 
          <a href="jyorderss.jsp?tkid=<%=map.get("id")%>">退款</a>
          
          |&nbsp;
          <%} %>
          
          
           <%if(map.get("status").equals("已申请退换货")){ %> 
          <a href="jyorderss.jsp?cfid=<%=map.get("id")%>">重新发货</a>
          | 
          <a href="jyorderss.jsp?jtid=<%=map.get("id")%>">拒绝退货</a>
          <%} %>
          
          
          <%if(map.get("status").equals("待受理")){ %> 
          
          
          
          
          <a href="jyorderss.jsp?jjid=<%=map.get("id")%>">拒绝订单</a>
          
          |&nbsp;
          
          
         <a href="jyorderss.jsp?jsid=<%=map.get("id")%>">接受并发货</a>
          
          
          
          <%}else{ %>
          &nbsp;
          <%} %>
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