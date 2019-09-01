<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="/sechandmall/admin/commfiles/css/common.css" /> 
	<link rel="stylesheet" type="text/css" href="/sechandmall/admin/commfiles/css/style.css" /> 
		<script type="text/javascript" src="/sechandmall/js/My97DatePicker/WdatePicker.js"></script>
  </head>
  <%
CommDAO dao = new CommDAO();
  List<HashMap> list = dao.select("select * from shj where shjkh='"+Info.getUser(request).get("uname")+"'");
new CommDAO().insert(request,response,"xiaos",new HashMap(),true,true);
   %>
  <body>
  <form name="f1" method="post" action="addxs.jsp?f=f&uname=<%=Info.getUser(request).get("uname") %>"  >
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
        <tr align="center"  style="display: none">
          <td colspan="3"  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3"> <br><br><br><br><br></td>
        </tr>
        <tr align="center">
          <td width="25%" height="25" align="center">售出时间</td>
        <td width="75%" height="25" align="left"><span class="style1">
      <input name="stime" id="stime"  type="text" size="12" onclick="WdatePicker();" /> &nbsp;</span></td>
      </tr>
        <tr align="center">
          <td height="25" align="center">商品名称</td>
    <td height="25" align="left"><span class="style1">
            <input name="goodname" id="goodname"  type="text" size="32" />
          </span> </td>
        </tr>
        <tr align="center">
          <td height="25" align="center">售货机<br></td>
    <td height="25" align="left"><select name="shj" id="shj">
      <%
        for(HashMap obj:list)
        {
         %>
      <option value="<%=obj.get("shjname")%>"><%=obj.get("shjname")%></option>
      <%} %>
    </select></td>
      </tr>
         <tr align="center">
          <td height="25" align="center">商品价格</td>
    <td height="25" align="left">
     
    
        <input type="text" name="price"  id="price" />
        
         </td>
        </tr>
        
          <tr align="center">
          <td height="25" align="center">数量</td>
    <td height="25" align="left">
     
    
        <input type="text" name="nums"  id="nums" />
        
         </td>
        </tr>
         
        
          <tr align="center">
          <td height="25" align="center">商品条码</td>
    <td height="25" colspan="2" align="left"><span class="style1">
            <input name="goodtm" type="text" id="goodtm" value="" size="50">
          </span> </td>
        </tr>
       
        

        <tr align="center">
          <td height="29" colspan="3" align="center">
            <label>
              <input type="submit" name="button" id="button" value="提交信息">
            </label> &nbsp;&nbsp;
            <input  type="reset" name="button2" id="button2" value="重新填写">                   </td>
        </tr>
      </table>
  </form> 
</body>
</html>
<script type="text/javascript" src="/sechandmall/admin/commfiles/js/ajax.js"></script>

<script type="text/javascript"  >
<%
if(request.getAttribute("kjnum")!=null)
{
%>
alert("该用户借书数量超出可借数量");
<%}%>

<%
if(request.getAttribute("htime")!=null)
{
%>
alert("该用户有逾期未还图书");
<%}%>

</script>