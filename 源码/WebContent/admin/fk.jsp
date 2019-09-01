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
  String id = request.getParameter("id");
HashMap ext = new HashMap();
ext.put("fkstatus","已付款");
new CommDAO().update(request,response,"prosorder",ext,true,true);
   %>
  <body>
  <form name="f1" method="post" action="fk.jsp?f=f&id=<%=id%>"  >
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
        <tr align="center"  style="display: none">
          <td colspan="3"  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3"> <br><br><br><br><br></td>
        </tr>
        <tr align="center">
          <td width="31%" height="25" align="center">支付宝帐号</td>
    <td width="69%" height="25" align="left"><span class="style1">
            <input name="a" id="a"  type="text" size="32" />
          </span> </td>
        </tr>
         <tr align="center">
          <td height="25" align="center">支付宝密码</td>
    <td height="25" align="left"><span class="style1">
      <input name="b" id="b"  type="text" size="32" />
    </span></td>
        </tr>
         
        
          <tr align="center">
          <td height="25" align="center">支付密码</td>
    <td height="25" colspan="2" align="left"><span class="style1">
      <input name="c" id="c"  type="text" size="32" />
    </span></td>
        </tr>
       
        

        <tr align="center">
          <td height="29" colspan="3" align="center">
            <label>
              <input type="submit" name="button" id="button" value="确认付款">
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