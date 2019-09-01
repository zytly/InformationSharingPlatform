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
  	<form name="f1" method="post"  action="qgminfocx.jsp"      >
  	<table id="mainbody" border="0" width="100%" cellspacing="1"
					class="tableform">
			<tr>
     				 <td colspan=4 height="31" align="left" style="font-size: 12px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<% 
String ptitle = request.getParameter("title")==null?"":request.getParameter("title"); 
String starttitle = request.getParameter("starttitle")==null?"":request.getParameter("starttitle"); 
String endtitle = request.getParameter("endtitle")==null?"":request.getParameter("endtitle"); 
   %>

<%
 HashMap mmm = new HashMap();%> 

&nbsp;&nbsp;
标题 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='title' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<input type=submit class='' value='查询信息' />
 &nbsp;&nbsp;
<input type=button   class='' value='添加信息' onclick="window.location.replace('qgminfotj.jsp')" /> 
&nbsp;&nbsp;</td>
	    </tr>
			</table>
  	
  	
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
<tr align="center">
          <td  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3" colspan="10" height="22">信息列表</td>
        </tr>
        <tr align="center">
          <td  class="itemtitle"  height="28">标题</td>
<td  class="itemtitle"  height="28">发布时间</td>
<td  class="itemtitle"  height="28">操作</td>
    </tr>
        
     
        <% 
new CommDAO().delete(request,"minfo"); 
if(request.getParameter("unameid1")!=null){ 
 new CommDAO().commOper("update minfo set uname ='' where id="+request.getParameter("unameid1"));  
} 
if(request.getParameter("unameid2")!=null){ 
 new CommDAO().commOper("update minfo set uname ='' where id="+request.getParameter("unameid2"));  
} 
String sql = "select * from minfo where 1=1 " ;
 if(!ptitle.equals("")){ 
 sql+= " and title like'%"+ptitle+"%' " ;
 }  
 if(!starttitle.equals("")){  
 mmm.put("starttitle",starttitle) ;
 sql+= " and title >'"+starttitle+"' " ;
 }  
 if(!endtitle.equals("")){  
 mmm.put("endtitle",endtitle) ;
 sql+= " and title <'"+Info.getDay(endtitle,1)+"' " ;
 }  
  sql +="  and (1!=1 " ; 
  sql +="  or  uname like'%"+Info.getUser(request).get("uname")+"%') " ;
  sql +="  and (1!=1 " ; 
  sql +="  or  infotype like'%求购%' " ;
  sql +="  ) ";
  sql +=" order by id desc ";
String url = "qgminfocx.jsp?1=1&title="+ptitle+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr align="center">

          <td align="center" height="28"><%=map.get("title")%></td>
          <td align="center" height="28"><%=map.get("savetime")%></td>
          <td align="center" height="28">
<a href="qgminfoxg.jsp?id=<%=map.get("id")%>">修改</a>
&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;

<a onclick="return confirm('确定要删除这条记录吗?')" href="qgminfocx.jsp?scid=<%=map.get("id")%>">删除</a>
</td>
</tr>
<%}%>
        
        
        <tr align="center">
          <td colspan=4 align="right" colspan="5" height="28">${page.info}</td>
        </tr>
      </table>
  </form>
</body>
</html>
 <script language=javascript src='/sechandmall/js/ajax.js'></script>
<% 
mmm.put("title",ptitle); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/sechandmall/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/sechandmall/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('qgminfoxg.jsp?id='+no,'信息修改',550,'100%') 
}
</script> 
<script language=javascript> 
function add(){ 
pop('qgminfotj.jsp','信息添加',550,'100%') 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
