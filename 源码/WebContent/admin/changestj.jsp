<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
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
	
  </head>
  
  <% 
HashMap ext = new HashMap(); 
String tglparentid=request.getParameter("tglparentid")==null?"":request.getParameter("tglparentid"); 
ext.put("tglparentid",tglparentid); 
ext.put("uname",Info.getUser(request).get("uname")); 
ext.put("status","申请中"); 
new CommDAO().insert(request,response,"changes",ext,true,false); 
new CommDAO().commOper("update changes a set tuname=(select proshop from pros b where a.bid=b.id )");
%>
<body>
  <form name="f1" method="post"  action="changestj.jsp?f=f&tglparentid=<%=tglparentid%>"   onsubmit="return checkform()"  >
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
        <tr align="center" style="display: ">
          <td colspan="2"  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">信息添加</td>
        </tr>
        
         <tr align="center">
          <td width="16%" align="center" height="22"> 希望交换图书</td>
          <td width="84%" align="left">&nbsp;

 <%  
for(HashMap choosemap:new CommDAO().select("select * from pros order by id desc")){ 
 %> 
<label id="clabel<%=choosemap.get("id")%>" style="display: none"> 
<input type="radio" name="bid" id="choosebox<%=choosemap.get("id")%>" value="<%=choosemap.get("id")%>" style="display: " /> 
<%=choosemap.get("proname")%> 
&nbsp;&nbsp;&nbsp; 
<table><tr><td height=2></td></tr></table> &nbsp; 
</label> 
<%} %> 
<a href="javascript:csts()">[希望交换图书选择]</a> 
<script language=javascript>  
function csts(){  
pop('chooseproscx.jsp?paramstr=','希望交换图书选择',790,'100%')  
} 
</script>  
</td>
      </tr>
<tr align="center">
 
          <td width="16%" align="center" height="22"> 本人图书</td>
          <td width="84%" align="left"><input type=text  onblur='checkform()' class='' id='mbname' name='mbname' size=35 /><label id='clabelmbname' /></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="22"> 价格</td>
          <td width="84%" align="left"><input type=text  onblur='checkform()' class='' id='price' name='price' size=35 /><label id='clabelprice' /></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="22"> 送货地址</td>
          <td width="84%" align="left"><textarea  cols='45' rows='3'  style='margin-top: 1px;margin-bottom: 1px'  class=''  name='address'  ></textarea></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="22"> 相关图片</td>
          <td width="84%" align="left"><%=Info.getImgUpInfo(65)%></td>
      </tr>

       
        <tr align="center">
          <td colspan="2" align="center" height="31">
            <label>
              <input type="submit" name="button" id="button" value="提交信息">
            </label> &nbsp;&nbsp;
           <input type=button value='返回上页' onclick='window.location.replace("changescx.jsp")' />               </td>
        </tr>
      </table>
  </form> 
</body>
</html>
 
<script language=javascript src='/sechandmall/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/sechandmall/js/popup.js'></script>
<script language=javascript src='/sechandmall/js/ajax.js'></script>
<%@page import="util.Info"%>
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
 
 function checkform(){  
var mbnameobj = document.getElementById("mbname");  
if(mbnameobj.value==""){  
document.getElementById("clabelmbname").innerHTML="&nbsp;&nbsp;<font color=red>请输入本人图书</font>";  
return false;  
}else{
document.getElementById("clabelmbname").innerHTML="  ";  
}  
  
var priceobj = document.getElementById("price");  
if(priceobj.value==""){  
document.getElementById("clabelprice").innerHTML="&nbsp;&nbsp;<font color=red>请输入价格</font>";  
return false;  
}else{
document.getElementById("clabelprice").innerHTML="  ";  
}  
  
return true;   
}   
</script>  
