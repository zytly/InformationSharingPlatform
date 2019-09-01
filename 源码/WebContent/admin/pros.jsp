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
  	<form name="f1" method="post"  action="pros.jsp"      >
  	<table id="mainbody" border="0" width="100%" cellspacing="1"
					class="tableform">
			<tr>
     				 <td colspan=9 height="31" align="left" style="font-size: 12px">&nbsp;&nbsp; 
<% 
String pproname = request.getParameter("proname")==null?"":request.getParameter("proname"); 
String startproname = request.getParameter("startproname")==null?"":request.getParameter("startproname"); 
String endproname = request.getParameter("endproname")==null?"":request.getParameter("endproname"); 
String pbtype = request.getParameter("btype")==null?"":request.getParameter("btype"); 
String startbtype = request.getParameter("startbtype")==null?"":request.getParameter("startbtype"); 
String endbtype = request.getParameter("endbtype")==null?"":request.getParameter("endbtype"); 
String pstype = request.getParameter("stype")==null?"":request.getParameter("stype"); 
String startstype = request.getParameter("startstype")==null?"":request.getParameter("startstype"); 
String endstype = request.getParameter("endstype")==null?"":request.getParameter("endstype"); 
String pstatus = request.getParameter("status")==null?"":request.getParameter("status"); 
String startstatus = request.getParameter("startstatus")==null?"":request.getParameter("startstatus"); 
String endstatus = request.getParameter("endstatus")==null?"":request.getParameter("endstatus"); 
   %>

<%
 HashMap mmm = new HashMap();%> 

&nbsp;&nbsp;
商品名称 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='proname' />
&nbsp;&nbsp;&nbsp; 
大类别 
&nbsp;:&nbsp; 
<%=Info.getselect("btype","splb","datashowname","tglparentid='-1'")%>&nbsp;&nbsp;&nbsp; 
小类别 
&nbsp;:&nbsp; 
<%=Info.getselect("stype","splb","datashowname"," 1=1 ")%>&nbsp;&nbsp;&nbsp; 
<script language=javascript> 
function btypechange(){ 
document.getElementById("btype").onchange=btypechange; 
var btypevalue = document.getElementById("btype").value; 
var stypeobj = document.getElementById("stype"); 
stypeobj.options.length=0; 
var boption = new Option("不限",""); 
stypeobj.add(boption); 
var ajax = new AJAX(); 
ajax.post("/sechandmall/factory/getsonops.jsp?glb=splb&glzd=datashowname&jlzd=btype&jlzdb=tglparentid&value="+btypevalue+"&ctype=select&ttime=<%=Info.getDateStr()%>"); 
var msg = ajax.getValue(); 
var msgs = msg.split("@@@"); 
for(var i=1;i<msgs.length;i++){ 
if(msgs[i]!=""){ 
var option = new Option(msgs[i],msgs[i]); 
stypeobj.add(option); 
} 
} 
} 
</script> 

&nbsp;&nbsp; 

<input type=submit class='' value='查询信息' /> </td>
	    </tr>
			</table>
  	
  	
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
<tr align="center">
          <td  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3" colspan="10" height="22">信息列表</td>
        </tr>
        <tr align="center">
          <td  class="itemtitle"  height="28">卖家</td>
<td  class="itemtitle"  height="28">商品名称</td>
<td  class="itemtitle"  height="28">价格</td> 
<td  class="itemtitle"  height="28">大类别</td>
<td  class="itemtitle"  height="28">小类别</td>
<td  class="itemtitle"  height="28">商品状态</td>
<td  class="itemtitle"  height="28">操作</td>
    </tr>
        
     
        <% 
new CommDAO().delete(request,"pros"); 
if(request.getParameter("proshopid1")!=null){ 
 new CommDAO().commOper("update pros set proshop ='上架' where id="+request.getParameter("proshopid1"));  
} 
if(request.getParameter("statusid2")!=null){ 
 new CommDAO().commOper("update pros set status ='下架' where id="+request.getParameter("statusid2"));  
} 
String sql = "select * from pros where 1=1 " ;
 if(!pproname.equals("")){ 
 sql+= " and proname like'%"+pproname+"%' " ;
 }  
 if(!startproname.equals("")){  
 mmm.put("startproname",startproname) ;
 sql+= " and proname >'"+startproname+"' " ;
 }  
 if(!endproname.equals("")){  
 mmm.put("endproname",endproname) ;
 sql+= " and proname <'"+Info.getDay(endproname,1)+"' " ;
 }  
 if(!pbtype.equals("")){ 
 sql+= " and btype like'%"+pbtype+"%' " ;
 }  
 if(!startbtype.equals("")){  
 mmm.put("startbtype",startbtype) ;
 sql+= " and btype >'"+startbtype+"' " ;
 }  
 if(!endbtype.equals("")){  
 mmm.put("endbtype",endbtype) ;
 sql+= " and btype <'"+Info.getDay(endbtype,1)+"' " ;
 }  
 if(!pstype.equals("")){ 
 sql+= " and stype like'%"+pstype+"%' " ;
 }  
 if(!startstype.equals("")){  
 mmm.put("startstype",startstype) ;
 sql+= " and stype >'"+startstype+"' " ;
 }  
 if(!endstype.equals("")){  
 mmm.put("endstype",endstype) ;
 sql+= " and stype <'"+Info.getDay(endstype,1)+"' " ;
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
 
 if(utype.equals("卖家"))sql+=" and proshop='"+uname+"' ";
 
  sql +=" order by id desc ";
String url = "pros.jsp?1=1&proname="+pproname+"&btype="+pbtype+"&stype="+pstype+"&status="+pstatus+""; 
ArrayList<HashMap> list = PageManager.getPages(url,5, sql, request ); 
for(HashMap map:list){ %>
<tr align="center">

          <td align="center" height="28"><%=map.get("proshop")%></td>
          <td align="center" height="28"><%=map.get("proname")%></td>
          <td align="center" height="28"><%=map.get("price")%></td> 
          <td align="center" height="28"><%=map.get("btype")%></td>
          <td align="center" height="28"><%=map.get("stype")%></td>
          <td align="center" height="28"><%=map.get("status")%></td>
          <td align="center" height="28">
          
          <%if(map.get("status").toString().contains("架")){%>
<a href="pros.jsp?value=上架&proshopid1=<%=map.get("id")%>">上架</a>
&nbsp;&nbsp;|&nbsp;&nbsp;
<a href="pros.jsp?value=下架&statusid2=<%=map.get("id")%>">下架</a>
&nbsp;&nbsp;|&nbsp;&nbsp;

<a href="updatepro.jsp?id=<%=map.get("id")%>">修改</a>
&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;

<a onclick="return confirm('确定要删除这条记录吗?')" href="pros.jsp?scid=<%=map.get("id")%>">删除</a>

<%} %>
&nbsp;
</td>
</tr>
<%}%>
        
        
        <tr align="center">
          <td colspan=9 align="right" colspan="5" height="28">${page.info}</td>
        </tr>
      </table>
  </form>
</body>
</html>
 <script language=javascript src='/sechandmall/js/ajax.js'></script>
<% 
mmm.put("proname",pproname); 
mmm.put("btype",pbtype); 
mmm.put("stype",pstype); 
mmm.put("status",pstatus); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
btypechange();
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/sechandmall/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/sechandmall/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('updatepro.jsp?id='+no,'信息修改',550,'100%') 
}
</script> 
<script language=javascript> 
function add(){ 
pop('addpro.jsp','信息添加',550,'100%') 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
