<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.PageManager"%>
<%@page import="dao.CommDAO"%>
 
 
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
  	<form name="f1" method="post"  action="splb.jsp"      >
  	<table id="mainbody" border="0" width="100%" cellspacing="1"
					class="tableform">
		 
	  </table>
  	
  	
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
<tr align="center">
          <td  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3" colspan="11">这里放功能名称</td>
        </tr>
        <tr align="center">
          <td width="25%"  class="itemtitle" >大类</td>
          <td width="75%"  class="itemtitle" >小类</td>
    </tr>
        
     
        <%
 ArrayList<HashMap> list = PageManager.getPages("",100, "select * from splb where tglparentid='-1' order by id desc ", request ); 
for(HashMap map:list){ 
 String erjlbstr = "" ;
 List<HashMap> erlist = new CommDAO().select("select * from splb where tglparentid='"+map.get("id")+"' order by id desc ") ;
for(HashMap ermap:erlist){ 
erjlbstr+="<a href=\"javascript:update('"+ermap.get("id")+"')\">"+ermap.get("datashowname")+"</a>&nbsp;&nbsp;&nbsp; " ;
}
 %>
<tr align="center">
          <td align="center">
<a href="javascript:update('<%=map.get("id")%>')"><%=map.get("datashowname")%></a>
</td>
          <td align="left">&nbsp;
<%=erjlbstr %>

          
          
           &nbsp;&nbsp;
      <a href="javascript:add('<%=map.get("id") %>')">[点击添加]</a>    
          
          </td>
    </tr>
<%}%>
<tr align="center">
          <td height="27" colspan="6" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          
          <a href="javascript:add('-1')">[点击添加大类]</a>
          
           </td>
        </tr>
      </table>
  </form>
</body>
</html>
 <script language=javascript src='/sechandmall/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/sechandmall/js/popup.js'></script>
<script language=javascript> 
function update(no){ 
pop('updatesplb.jsp?erjitype=erjitype&id='+no,'信息修改',590,93) 
}
</script> 
<script language=javascript> 
function add(no){ 
pop('addsplb.jsp?tglparentid='+no,'信息添加',590,93) 
}
</script> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
