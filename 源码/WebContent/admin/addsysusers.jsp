<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
 
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="/sechandmall/admin/commfiles/css/common.css" /> 
	<link rel="stylesheet" type="text/css" href="/sechandmall/admin/commfiles/css/style.css" /> 
	
  </head>
  <%
  HashMap ext = new HashMap();
  ext.put("utype","管理员");
    ext.put("status","正常");
  new CommDAO().insert(request,response,"sysuser",ext,true,false);
   %>
  <body>
  <form name="f1" method="post" action="addsysusers.jsp?f=f"  >
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
        <tr align="center">
          <td colspan="3"  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">添加管理员</td>
        </tr>
        <tr align="center">
          <td width="18%" align="center"> 用户名</td>
        <td width="62%" align="left"><span class="style1">
      <input name="uname" id="uname"  type="text" size="20"  maxlength="20" /> &nbsp;</span></td>
        <td width="20%" rowspan="4" align="center">
        
        <%=Info.getImgUpInfo2(95) %>
        
        </td>
      </tr>
        <tr align="center">
          <td align="center"> 登录密码</td>
          <td align="left"><span class="style1">
            <input name="upass" id="upass"  type="text" size="20" maxlength="20"  />
          </span> </td>
        </tr>
        <tr align="center">
          <td align="center"> 姓名</td>
          <td align="left"><span class="style1">
            <input name="tname" id="tname"  type="text" size="20" maxlength="20"  />
          </span> </td>
        </tr>
         <tr align="center">
          <td align="center"> 性别</td>
          <td align="left"><label>
            <input name="sex" type="radio" id="sex" value="男" checked>
            男
            <input type="radio" name="sex" id="sex" value="女">
            女
          </label></td>
      </tr>
         <tr align="center">
          <td align="center">年龄</td>
          <td colspan="2" align="left"><span class="style1">
            <input name="age" id="age"  type="text" size="10" />
          </span> </td>
        </tr>
        
         <tr align="center">
          <td align="center"> 电话</td>
          <td colspan="2" align="left"><span class="style1">
            <input name="tel" id="tel"  type="text" size="20" />
          </span> </td>
        </tr>
        
         <tr align="center">
          <td align="center"> 联系地址</td>
          <td colspan="2" align="left"><span class="style1">
            <input name="addrs" id="addrs"  type="text" size="60" />
          </span> </td>
        </tr>
        
         <tr align="center">
          <td align="center"> QQ</td>
          <td colspan="2" align="left"><span class="style1">
            <input name="qq" id="qq"  type="text" size="20" />
          </span> </td>
        </tr>
        
         <tr align="center">
          <td align="center"> 备注</td>
          <td colspan="2" align="left"><span class="style1">
            <input name="bei" id="bei"  type="text" size="60" />
          </span> </td>
        </tr>
       
        <tr align="center">
          <td height="30" colspan="3" align="center">
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
 