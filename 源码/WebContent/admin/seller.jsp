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
  	<form name="f1" method="post"  action="seller.jsp"      >
  	<table id="mainbody" border="0" width="100%" cellspacing="1"
					class="tableform">
			<tr>
     				 <td colspan=10 height="31" align="left" style="font-size: 12px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<% 
String puname = request.getParameter("uname")==null?"":request.getParameter("uname"); 
String startuname = request.getParameter("startuname")==null?"":request.getParameter("startuname"); 
String enduname = request.getParameter("enduname")==null?"":request.getParameter("enduname"); 
String ptname = request.getParameter("tname")==null?"":request.getParameter("tname"); 
String starttname = request.getParameter("starttname")==null?"":request.getParameter("starttname"); 
String endtname = request.getParameter("endtname")==null?"":request.getParameter("endtname"); 
   %>

<%
 HashMap mmm = new HashMap();%> 

&nbsp;&nbsp;
用户名 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='uname' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;
姓名 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='tname' />
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
          <td  class="itemtitle"  height="28">用户名</td>
<td  class="itemtitle"  height="28">姓名</td>
<td  class="itemtitle"  height="28">性别</td>
<td  class="itemtitle"  height="28">年龄</td>
<td  class="itemtitle"  height="28">联系电话</td>
<td  class="itemtitle"  height="28">联系地址</td>
<td  class="itemtitle"  height="28">联系QQ</td>
<td  class="itemtitle"  height="28">状态</td>
<td  class="itemtitle"  height="28">操作</td>
    </tr>
        
     
        <% 
new CommDAO().delete(request,"sysuser"); 
if(request.getParameter("statusid1")!=null){ 
 new CommDAO().commOper("update sysuser set status ='锁定' where id="+request.getParameter("statusid1"));  
} 
if(request.getParameter("statusid2")!=null){ 
 new CommDAO().commOper("update sysuser set status ='正常' where id="+request.getParameter("statusid2"));  
} 
String sql = "select * from sysuser where 1=1 " ;
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
 if(!ptname.equals("")){ 
 sql+= " and tname like'%"+ptname+"%' " ;
 }  
 if(!starttname.equals("")){  
 mmm.put("starttname",starttname) ;
 sql+= " and tname >'"+starttname+"' " ;
 }  
 if(!endtname.equals("")){  
 mmm.put("endtname",endtname) ;
 sql+= " and tname <'"+Info.getDay(endtname,1)+"' " ;
 }  
  sql +="  and (1!=1 " ; 
  sql +="  or  utype like'%卖家%' " ;
  sql +="  ) ";
  sql +=" order by id desc ";
String url = "seller.jsp?1=1&uname="+puname+"&tname="+ptname+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr align="center">

          <td align="center" height="28"><%=map.get("uname")%></td>
          <td align="center" height="28"><%=map.get("tname")%></td>
          <td align="center" height="28"><%=map.get("sex")%></td>
          <td align="center" height="28"><%=map.get("age")%></td>
          <td align="center" height="28"><%=map.get("tel")%></td>
          <td align="center" height="28"><%=map.get("addrs")%></td>
          <td align="center" height="28"><%=map.get("qq")%></td>
          <td align="center" height="28"><%=map.get("status")%></td>
          <td align="center" height="28">
<a href="seller.jsp?value=锁定&statusid1=<%=map.get("id")%>">锁定</a>
&nbsp;&nbsp;|&nbsp;&nbsp;
<a href="seller.jsp?value=正常&statusid2=<%=map.get("id")%>">解锁</a>
&nbsp;&nbsp;|&nbsp;&nbsp;

<a href="sellerxg.jsp?id=<%=map.get("id")%>">修改</a>
&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;

<a onclick="return confirm('确定要删除这条记录吗?')" href="seller.jsp?scid=<%=map.get("id")%>">删除</a>
</td>
</tr>
<%}%>
        
        
        <tr align="center">
          <td colspan=10 align="right" colspan="5" height="28">${page.info}</td>
        </tr>
      </table>
  </form>
</body>
</html>
 <script language=javascript src='/sechandmall/js/ajax.js'></script>
<% 
mmm.put("uname",puname); 
mmm.put("tname",ptname); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/sechandmall/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/sechandmall/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('sellerxg.jsp?id='+no,'信息修改',550,'100%') 
}
</script> 
<script language=javascript> 
function add(){ 
pop('sysusertj.jsp','信息添加',550,'100%') 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
