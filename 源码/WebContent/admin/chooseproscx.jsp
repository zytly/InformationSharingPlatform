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
  	<form name="f1" method="post"  action="chooseproscx.jsp"      >
  	<table id="mainbody" border="0" width="99%" cellspacing="1" align="center"
					class="tableform">
			<tr>
     				 <td colspan=7 height="31" align="left" style="font-size: 12px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<% 
String pproname = request.getParameter("proname")==null?"":request.getParameter("proname"); 
String startproname = request.getParameter("startproname")==null?"":request.getParameter("startproname"); 
String endproname = request.getParameter("endproname")==null?"":request.getParameter("endproname"); 
   %>

<%
 HashMap mmm = new HashMap();%> 

&nbsp;&nbsp;
书名 
&nbsp;:&nbsp; 
<input type=text class=''  size=20 name='proname' />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<input type=submit class='' value='查询信息' />
 &nbsp;&nbsp;
<input type=button   class=''  value='返回' onclick="popclose();" /> &nbsp;&nbsp;</td>
	    </tr>
			</table>
  	
  	
<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
<tr align="center">
          <td  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3" colspan="10" height="22">信息列表</td>
        </tr>
        <tr align="center">
          <td  class="itemtitle"  height="22">选择</td>
<td  class="itemtitle"  height="22">卖方</td>
<td  class="itemtitle"  height="22">书名</td>
<td  class="itemtitle"  height="22">价格</td>
<td  class="itemtitle"  height="22">折扣</td>
<td  class="itemtitle"  height="22">图片</td>

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
  sql +=" order by id desc ";
String url = "chooseproscx.jsp?1=1&proname="+pproname+""; 
ArrayList<HashMap> list = PageManager.getPages(url,3, sql, request ); 
for(HashMap map:list){ %>
<tr align="center">

          <td align="center" height="22">
<input type="radio" name="chosts" id="chosts<%=map.get("id") %>" value="<%=map.get("id")%>" onclick="choose(this)" />
</td>
          <td align="center" height="22"><%=map.get("proshop")%></td>
          <td align="center" height="22"><%=map.get("proname")%></td>
          <td align="center" height="22"><%=map.get("price")%></td>
          <td align="center" height="22"><%=map.get("discount")%></td>
          <td align="center" height="22"><img src="/sechandmall/upfile/<%=map.get("filename")%>" height=65 /></td>
</tr>
<%}%>
        
        
        <tr align="center">
          <td colspan=7 align="right" colspan="5" height="22">${page.info}</td>
        </tr>
      </table>
  </form>
</body>
</html>
 <script language=javascript src='/sechandmall/js/ajax.js'></script>
<% 
mmm.put("proname",pproname); 
%>
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript src='/sechandmall/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/sechandmall/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('prosxg.jsp?id='+no,'信息修改',550,'100%') 
}
</script> 
<script language=javascript> 
function add(){ 
pop('prostj.jsp','信息添加',550,'100%') 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript>
var frames = parent.document.getElementsByTagName("iframe");
for(var i=0;i<frames.length;i++){ 
var alliframe = parent.document.getElementsByTagName("iframe")[i];  
if(alliframe.name=="ifr_popup0")
<%=Info.popheight%>2; 
} 



 function choose(obj)  
 {   
   if(obj.checked) 
   {  
   parent.document.getElementById("choosebox"+obj.value).checked=true; 
   parent.document.getElementById("clabel"+obj.value).style.display=""; 
   }else{ 
   parent.document.getElementById("choosebox"+obj.value).checked=false; 
   parent.document.getElementById("clabel"+obj.value).style.display="none"; 
   } 
  }  



  function choosebyparent() 
 {   
  var cboxs = parent.document.getElementsByTagName("input"); 
  var cboxstr = "-"; 
  for(var i=0;i<cboxs.length;i++) 
  {  
    if(cboxs[i].id.indexOf("choosebox")>-1&&cboxs[i].checked) 
     { 
        cboxstr+=cboxs[i].value+"-"; 
     } 
  }  
  var mcboxs = document.getElementsByTagName("input");  
  for(var i=0;i<mcboxs.length;i++) 
  {  
    if(mcboxs[i].type=="checkbox"||mcboxs[i].type=="radio"){  
     if(mcboxs[i].id.indexOf("chosts")>-1&&cboxstr.indexOf("-"+mcboxs[i].value+"-")>-1) 
     { 
        mcboxs[i].checked=true; 
     } 
     } 
  }  
 }  
 choosebyparent();   
</script> 
