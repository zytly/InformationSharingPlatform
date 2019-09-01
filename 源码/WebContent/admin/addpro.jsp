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
ext.put("proshop",uname); 
ext.put("status","上架"); 
ext.put("cjnum","0"); 
new CommDAO().insert(request,response,"pros",ext,true,false); 
%>
<body>
  <form name="f1" method="post"  action="addpro.jsp?f=f&tglparentid=<%=tglparentid%>"   onsubmit="return checkform()"  >
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
        <tr align="center" style="display: ">
          <td colspan="2"  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">添加商品</td>
        </tr>
        
         <tr align="center">
          <td width="16%" align="center" height="28"> 商品名称</td>
          <td width="84%" align="left"><input type=text  onblur='checkform()' class='' id='proname' name='proname' size=60 /><label id='clabelproname' /></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 价格</td>
          <td width="84%" align="left"><input type=text   size='8' class=''  id='price'  name='price'  onkeyup='clearNoNum(this);' onblur='clearNoNum(this);checkform();' onmouseup='clearNoNum(this);'    /><label id='clabelprice' /></td>
      </tr>
      
      
      <tr align="center">
          <td width="16%" align="center" height="28"> 拍卖日期</td>
          <td width="84%" align="left">
          <input type=text   size='12' class=''  onclick='WdatePicker();'  id='sdate'  name='sdate' />
          至
          <input type=text   size='12' class=''  onclick='WdatePicker();'  id='edate'  name='edate' />
          
          </td>
      </tr>
 
<tr align="center">
          <td width="16%" align="center" height="28"> 商品简介</td>
          <td width="84%" align="left"><textarea  cols='45' rows='3'  style='margin-top: 1px;margin-bottom: 1px'  class=''  name='bei'  ></textarea></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 大类别</td>
          <td width="84%" align="left"><%=Info.getselect("btype","splb","datashowname~无名","tglparentid='-1'")%> 
<label id='clabelbtype' />
</td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 小类别</td>
          <td width="84%" align="left"><%=Info.getselect("stype","splb","datashowname~无名"," 1=1 ")%> 
<script language=javascript> 
function btypechange(){ 
document.getElementById("btype").onchange=btypechange; 
var btypevalue = document.getElementById("btype").value; 
var stypeobj = document.getElementById("stype"); 
stypeobj.options.length=0; 
var boption = new Option("不限",""); 
stypeobj.add(boption); 
var ajax = new AJAX(); 
ajax.post("/sechandmall/factory/getsonops.jsp?glb=splb&glzd=datashowname~无名&jlzd=btype&jlzdb=tglparentid&value="+btypevalue+"&ctype=select&ttime=<%=Info.getDateStr()%>"); 
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
<label id='clabelstype' />
</td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 附赠</td>
          <td width="84%" align="left"><textarea  cols='45' rows='3'  style='margin-top: 1px;margin-bottom: 1px'  class=''  name='fz'  ></textarea></td>
      </tr>
<tr align="center">
          <td width="16%" align="center" height="28"> 相关图片</td>
          <td width="84%" align="left"><%=Info.getImgUpInfo(65)%></td>
      </tr>

       
        <tr align="center">
          <td colspan="2" align="center" height="31">
            <label>
              <input type="submit" name="button" id="button" value="提交信息">
            </label> &nbsp;&nbsp;
           <input type=button value='返回上页' onclick='window.location.replace("pros.jsp")' />               </td>
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
btypechange(); 
 
 function checkform(){  
var pronameobj = document.getElementById("proname");  
if(pronameobj.value==""){  
document.getElementById("clabelproname").innerHTML="&nbsp;&nbsp;<font color=red>请输入商品名称</font>";  
return false;  
}else{
document.getElementById("clabelproname").innerHTML="  ";  
}  
  
var priceobj = document.getElementById("price");  
if(priceobj.value==""){  
document.getElementById("clabelprice").innerHTML="&nbsp;&nbsp;<font color=red>请输入价格</font>";  
return false;  
}else{
document.getElementById("clabelprice").innerHTML="  ";  
}  
  
var btypeobj = document.getElementById("btype");  
if(btypeobj.value==""){  
document.getElementById("clabelbtype").innerHTML="&nbsp;&nbsp;<font color=red>请输入大类别</font>";  
return false;  
}else{
document.getElementById("clabelbtype").innerHTML="  ";  
}  
  
/* var stypeobj = document.getElementById("stype");  
if(stypeobj.value==""){  
document.getElementById("clabelstype").innerHTML="&nbsp;&nbsp;<font color=red>请输入小类别</font>";  
return false;  
}else{
document.getElementById("clabelstype").innerHTML="  ";  
}   */
  
return true;   
}   
</script>  
