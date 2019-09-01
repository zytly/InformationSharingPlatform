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
  	<form name="f1" method="post"  action="acomplcx.jsp"      >
  	<table id="mainbody" border="0" width="100%" cellspacing="1"
					class="tableform">
			<tr>
     				 <td colspan=7 height="31" align="left" style="font-size: 12px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<% 
String puname = request.getParameter("uname")==null?"":request.getParameter("uname"); 
String startuname = request.getParameter("startuname")==null?"":request.getParameter("startuname"); 
String enduname = request.getParameter("enduname")==null?"":request.getParameter("enduname"); 
String ptouname = request.getParameter("touname")==null?"":request.getParameter("touname"); 
String starttouname = request.getParameter("starttouname")==null?"":request.getParameter("starttouname"); 
String endtouname = request.getParameter("endtouname")==null?"":request.getParameter("endtouname"); 
   %>

<%
 HashMap mmm = new HashMap();%> 

&nbsp;&nbsp;
投诉人 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='uname' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;
被投诉人 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='touname' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<input type=submit class='' value='查询信息' />
 &nbsp;&nbsp;
 
&nbsp;&nbsp;</td>
	    </tr>
			</table>
  	
  	
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
<tr align="center">
          <td  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3" colspan="10" height="22">信息列表</td>
        </tr>
        <tr align="center">
          <td  class="itemtitle"  height="28">投诉人</td>
<td  class="itemtitle"  height="28">被投诉人</td>
<td  class="itemtitle"  height="28">投诉内容</td>
<td  class="itemtitle"  height="28">客服回复</td>
<td  class="itemtitle"  height="28">投诉时间</td>
<td  class="itemtitle"  height="28">操作</td>
    </tr>
        
     
        <% 
new CommDAO().delete(request,"compl"); 
if(request.getParameter("unameid1")!=null){ 
 new CommDAO().commOper("update compl set uname ='' where id="+request.getParameter("unameid1"));  
} 
if(request.getParameter("unameid2")!=null){ 
 new CommDAO().commOper("update compl set uname ='' where id="+request.getParameter("unameid2"));  
} 
String sql = "select * from compl where 1=1 " ;
 if(!puname.equals("")){ 
 sql+= " and uname like'%"+puname+"%' " ;
 }  
 if(!startuname.equals("")){  
 mmm.put("startuname",startuname) ;
 sql+= " and uname >'"+startuname+"' " ;
 }  
 if(!enduname.equals("")){  
 mmm.put("enduname",enduname) ;
 sql+= " and uname <'"+Info.getDay(enduname,1)+"' " ;
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
  sql +=" order by id desc ";
String url = "acomplcx.jsp?1=1&uname="+puname+"&touname="+ptouname+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr align="center">

          <td align="center" height="28"><%=map.get("uname")%></td>
          <td align="center" height="28"><%=map.get("touname")%></td>
          <td align="center" height="28"><%=map.get("pcontent")%></td>
          <td align="center" height="28"><%=map.get("recont")%></td>
          <td align="center" height="28"><%=map.get("savetime")%></td>
          <td align="center" height="28">
<a href="acomplxg.jsp?id=<%=map.get("id")%>">处理</a>
&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;

<a onclick="return confirm('确定要删除这条记录吗?')" href="acomplcx.jsp?scid=<%=map.get("id")%>">删除</a>
</td>
</tr>
<%}%>
        
        
        <tr align="center">
          <td colspan=7 align="right" colspan="5" height="28">${page.info}</td>
        </tr>
      </table>
  </form>
</body>
</html>
 <script language=javascript src='/sechandmall/js/ajax.js'></script>
<% 
mmm.put("uname",puname); 
mmm.put("touname",ptouname); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/sechandmall/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/sechandmall/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('acomplxg.jsp?id='+no,'信息修改',550,'100%') 
}
</script> 
<script language=javascript> 
function add(){ 
pop('compltj.jsp','信息添加',550,'100%') 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
