<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.PageManager"%>
<%@page import="dao.CommDAO"%>
  <%
HashMap user = Info.getUser(request);
String uname = user.get("uname").toString();
String utype = user.get("utype").toString();
String userid = user.get("id").toString();
 %>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="/sechandmall/admin/commfiles/css/common.css" /> 
	<link rel="stylesheet" type="text/css" href="/sechandmall/admin/commfiles/css/style.css" /> 
	<script type="text/javascript" src="/sechandmall/js/popup.js"></script>
  </head>
  
  <body>
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<form name="f1" method="post"  action="mychanges.jsp"      >
  	<table id="mainbody" border="0" width="100%" cellspacing="1"
					class="tableform">
			<tr>
     				 <td colspan=11 height="31" align="left" style="font-size: 12px"> &nbsp;
<% 
String ppname = request.getParameter("pname")==null?"":request.getParameter("pname"); 
String startpname = request.getParameter("startpname")==null?"":request.getParameter("startpname"); 
String endpname = request.getParameter("endpname")==null?"":request.getParameter("endpname"); 
String ptouname = request.getParameter("touname")==null?"":request.getParameter("touname"); 
String starttouname = request.getParameter("starttouname")==null?"":request.getParameter("starttouname"); 
String endtouname = request.getParameter("endtouname")==null?"":request.getParameter("endtouname"); 
String ptopname = request.getParameter("topname")==null?"":request.getParameter("topname"); 
String starttopname = request.getParameter("starttopname")==null?"":request.getParameter("starttopname"); 
String endtopname = request.getParameter("endtopname")==null?"":request.getParameter("endtopname"); 
String pstatus = request.getParameter("status")==null?"":request.getParameter("status"); 
String startstatus = request.getParameter("startstatus")==null?"":request.getParameter("startstatus"); 
String endstatus = request.getParameter("endstatus")==null?"":request.getParameter("endstatus"); 
   %>

<%
 HashMap mmm = new HashMap();%> 

&nbsp;&nbsp;
物品名称 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='pname' />
&nbsp;&nbsp;&nbsp; 
商家 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='touname' />
&nbsp;&nbsp;&nbsp; 
商品名称 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='topname' />
&nbsp;&nbsp;&nbsp; 
状态 
&nbsp;:&nbsp; 
<select name='status'>
<option value="">不限</option>
<option value='申请中'>申请中</option> 
<option value='已成交'>已成交</option> 
<option value='已拒绝'>已拒绝</option> 
</select>
&nbsp;&nbsp;&nbsp; 

<input type=submit class='' value='查询信息' /> </td>
	    </tr>
			</table>
  	
  	
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
<tr align="center">
          <td  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3" colspan="10" height="22">信息列表</td>
        </tr>
        <tr align="center">
          <td  class="itemtitle"  height="28">申请人</td>
<td  class="itemtitle"  height="28">物品名称</td>
<td  class="itemtitle"  height="28">新旧度</td>
<td  class="itemtitle"  height="28">相关图片</td>
<td  class="itemtitle"  height="28">物品说明</td>
<td  class="itemtitle"  height="28">商家</td>
<td  class="itemtitle"  height="28">商品名称</td>
<td  class="itemtitle"  height="28">状态</td>
<td  class="itemtitle"  height="28">申请时间</td> 
    </tr>
        
     
        <% 
new CommDAO().delete(request,"changes"); 
if(request.getParameter("unameid1")!=null){ 
 new CommDAO().commOper("update changes set uname ='' where id="+request.getParameter("unameid1"));  
} 
if(request.getParameter("unameid2")!=null){ 
 new CommDAO().commOper("update changes set uname ='' where id="+request.getParameter("unameid2"));  
} 
String sql = "select * from changes where 1=1 " ;
 if(!ppname.equals("")){ 
 sql+= " and pname like'%"+ppname+"%' " ;
 }  
 if(!startpname.equals("")){  
 mmm.put("startpname",startpname) ;
 sql+= " and pname >'"+startpname+"' " ;
 }  
 if(!endpname.equals("")){  
 mmm.put("endpname",endpname) ;
 sql+= " and pname <'"+Info.getDay(endpname,1)+"' " ;
 }  
 if(!ptouname.equals("")){ 
 sql+= " and touname like'%"+ptouname+"%' " ;
 }  
 if(!starttouname.equals("")){  
 mmm.put("starttouname",starttouname) ;
 sql+= " and touname >'"+starttouname+"' " ;
 }  
 if(!endtouname.equals("")){  
 mmm.put("endtouname",endtouname) ;
 sql+= " and touname <'"+Info.getDay(endtouname,1)+"' " ;
 }  
 if(!ptopname.equals("")){ 
 sql+= " and topname like'%"+ptopname+"%' " ;
 }  
 if(!starttopname.equals("")){  
 mmm.put("starttopname",starttopname) ;
 sql+= " and topname >'"+starttopname+"' " ;
 }  
 if(!endtopname.equals("")){  
 mmm.put("endtopname",endtopname) ;
 sql+= " and topname <'"+Info.getDay(endtopname,1)+"' " ;
 }  
 if(!pstatus.equals("")){ 
 sql+= " and status like'%"+pstatus+"%' " ;
 }  
 if(!startstatus.equals("")){  
 mmm.put("startstatus",startstatus) ;
 sql+= " and status >'"+startstatus+"' " ;
 }  
 if(!endstatus.equals("")){  
 mmm.put("endstatus",endstatus) ;
 sql+= " and status <'"+Info.getDay(endstatus,1)+"' " ;
 }  
  sql +="  and (1!=1 " ; 
  sql +="  or  uname like'%"+Info.getUser(request).get("uname")+"%') " ;
  sql +=" order by id desc ";
String url = "mychanges.jsp?1=1&pname="+ppname+"&touname="+ptouname+"&topname="+ptopname+"&status="+pstatus+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr align="center">

          <td align="center" height="28"><%=map.get("uname")%></td>
          <td align="center" height="28"><%=map.get("pname")%></td>
          <td align="center" height="28"><%=map.get("nostatus")%></td>
          <td align="center" height="28"><img src="/sechandmall/upfile/<%=map.get("filename")%>" height=65 /></td>
          <td align="center" height="28"><%=map.get("pbei")%></td>
          <td align="center" height="28"><%=map.get("touname")%></td>
          <td align="center" height="28"><%=map.get("topname")%></td>
          <td align="center" height="28"><%=map.get("status")%></td>
          <td align="center" height="28"><%=map.get("savetime")%></td>
          
</tr>
<%}%>
        
        
        <tr align="center">
          <td colspan=11 align="right" colspan="5" height="28">${page.info}</td>
        </tr>
      </table>
  </form>
</body>
</html>
 <script language=javascript src='/sechandmall/js/ajax.js'></script>
<% 
mmm.put("pname",ppname); 
mmm.put("touname",ptouname); 
mmm.put("topname",ptopname); 
mmm.put("status",pstatus); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/sechandmall/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/sechandmall/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('mychangesxg.jsp?id='+no,'信息修改',550,'100%') 
}
</script> 
<script language=javascript> 
function add(){ 
pop('change.jsp','信息添加',550,'100%') 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
