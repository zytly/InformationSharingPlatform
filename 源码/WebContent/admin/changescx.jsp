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
  	<form name="f1" method="post"  action="changescx.jsp"      >
  	<table id="mainbody" border="0" width="100%" cellspacing="1"
					class="tableform">
			<tr>
     				 <td colspan=8 height="31" align="left" style="font-size: 12px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<% 
String ptuname = request.getParameter("tuname")==null?"":request.getParameter("tuname"); 
String starttuname = request.getParameter("starttuname")==null?"":request.getParameter("starttuname"); 
String endtuname = request.getParameter("endtuname")==null?"":request.getParameter("endtuname"); 
String pbid = request.getParameter("bid")==null?"":request.getParameter("bid"); 
String startbid = request.getParameter("startbid")==null?"":request.getParameter("startbid"); 
String endbid = request.getParameter("endbid")==null?"":request.getParameter("endbid"); 
String pmbname = request.getParameter("mbname")==null?"":request.getParameter("mbname"); 
String startmbname = request.getParameter("startmbname")==null?"":request.getParameter("startmbname"); 
String endmbname = request.getParameter("endmbname")==null?"":request.getParameter("endmbname"); 
   %>

<%
 HashMap mmm = new HashMap();%> 

&nbsp;&nbsp;
卖方 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='tuname' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;
希望交换图书 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='bid' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;
本人图书 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='mbname' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<input type=submit class='' value='查询信息' />
 &nbsp;&nbsp;
<input type=button   class='' value='添加信息' onclick="window.location.replace('changestj.jsp')" /> 
&nbsp;&nbsp;</td>
	    </tr>
			</table>
  	
  	
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
<tr align="center">
          <td  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3" colspan="10" height="22">信息列表</td>
        </tr>
        <tr align="center">
          <td  class="itemtitle"  height="22">申请人</td>
<td  class="itemtitle"  height="22">卖方</td>
<td  class="itemtitle"  height="22">希望交换图书</td>
<td  class="itemtitle"  height="22">本人图书</td>
<td  class="itemtitle"  height="22">价格</td>
<td  class="itemtitle"  height="22">卖方意见</td>
<td  class="itemtitle"  height="22">操作</td>
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
 if(!ptuname.equals("")){ 
 sql+= " and tuname like'%"+ptuname+"%' " ;
 }  
 if(!starttuname.equals("")){  
 mmm.put("starttuname",starttuname) ;
 sql+= " and tuname >'"+starttuname+"' " ;
 }  
 if(!endtuname.equals("")){  
 mmm.put("endtuname",endtuname) ;
 sql+= " and tuname <'"+Info.getDay(endtuname,1)+"' " ;
 }  
 if(!pbid.equals("")){ 
 sql+= " and bid like'%"+pbid+"%' " ;
 }  
 if(!startbid.equals("")){  
 mmm.put("startbid",startbid) ;
 sql+= " and bid >'"+startbid+"' " ;
 }  
 if(!endbid.equals("")){  
 mmm.put("endbid",endbid) ;
 sql+= " and bid <'"+Info.getDay(endbid,1)+"' " ;
 }  
 if(!pmbname.equals("")){ 
 sql+= " and mbname like'%"+pmbname+"%' " ;
 }  
 if(!startmbname.equals("")){  
 mmm.put("startmbname",startmbname) ;
 sql+= " and mbname >'"+startmbname+"' " ;
 }  
 if(!endmbname.equals("")){  
 mmm.put("endmbname",endmbname) ;
 sql+= " and mbname <'"+Info.getDay(endmbname,1)+"' " ;
 }  
  sql +="  and (1!=1 " ; 
  sql +="  or  uname like'%"+Info.getUser(request).get("uname")+"%') " ;
  sql +=" order by id desc ";
String url = "changescx.jsp?1=1&tuname="+ptuname+"&bid="+pbid+"&mbname="+pmbname+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr align="center">

          <td align="center" height="22"><%=map.get("uname")%></td>
          <td align="center" height="22"><%=map.get("tuname")%></td>
          <td align="center" height="22"><%=new CommDAO().getmap(map.get("bid").toString(),"pros").get("proname") %></td>
          <td align="center" height="22"><%=map.get("mbname")%></td>
          <td align="center" height="22"><%=map.get("price")%></td>
          <td align="center" height="22"><%=map.get("status")%></td>
          <td align="center" height="22">
<a href="changesxg.jsp?id=<%=map.get("id")%>">查看</a> 
</td>
</tr>
<%}%>
        
        
        <tr align="center">
          <td colspan=8 align="right" colspan="5" height="22">${page.info}</td>
        </tr>
      </table>
  </form>
</body>
</html>
 <script language=javascript src='/sechandmall/js/ajax.js'></script>
<% 
mmm.put("tuname",ptuname); 
mmm.put("bid",pbid); 
mmm.put("mbname",pmbname); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/sechandmall/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/sechandmall/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('changesxg.jsp?id='+no,'信息修改',550,'100%') 
}
</script> 
<script language=javascript> 
function add(){ 
pop('changestj.jsp','信息添加',550,'100%') 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
