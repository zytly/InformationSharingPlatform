<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="util.PageManager"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
 
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="/sechandmall/admin/commfiles/css/common.css" /> 
	<link rel="stylesheet" type="text/css" href="/sechandmall/admin/commfiles/css/style.css" /> 
	<script type="text/javascript" src="/sechandmall/js/popup.js"></script>
  </head>
  <%
 CommDAO dao = new CommDAO();
 
 
 String fs = request.getParameter("fs")==null?"":request.getParameter("fs");
 if(!fs.equals(""))
 {
 
  String shops = "";
  for(HashMap m:dao.select("select distinct(b.proshop) as shopname from proscarjy a,pros b where a.pid=b.id and a.uname='"+Info.getUser(request).get("uname")+"'"))
  {
  shops+=m.get("shopname")+"@@@";
  }
  if(shops.length()>0)shops=shops.substring(0,shops.length()-3);
  for(String str:shops.split("@@@"))
  {
   String ddinfo = "";
   System.out.println(str);
   for(HashMap pmap:new CommDAO().select("select distinct *  from pros where id in(select pid from proscarjy where uname='"+Info.getUser(request).get("uname")+"' and pid in(select id from pros where proshop='"+str+"'))"))
   {
   ddinfo+=pmap.get("proname")+"-"+pmap.get("price")+"-"+pmap.get("discount")+"-"+pmap.get("id")+"-"+new CommDAO().getInt("select sum(num+0) from proscarjy where pid='"+pmap.get("id")+"'")+",";
 
   }
   
       HashMap ext = new HashMap();
  ext.put("uname",Info.getUser(request).get("uname"));
  ext.put("savetime",Info.getDateStr());
  if(ddinfo.length()>0)ddinfo=ddinfo.substring(0,ddinfo.length()-1);
  ext.put("prosinfo",ddinfo);
  ext.put("toshop",str);
  ext.put("status","待受理");
 ext.put("fkstatus","未付款");
 new CommDAO().insert(request,response,"prosorder",ext,false,false);
  } 
  dao.commOper("delete  from proscarjy where uname='"+Info.getUser(request).get("uname")+"'");
  %>
  
  <script type="text/javascript">
  alert("订单已发送");
  </script>
  
  <%
 }
 
 String c = request.getParameter("c")==null?"":request.getParameter("c");
 if(!c.equals(""))
 {
   dao.commOper("delete * from proscarjy where uname='"+Info.getUser(request).get("uname")+"'");
 }
   String key = request.getParameter("key")==null?"":request.getParameter("key");
    
   
  String did = request.getParameter("did")==null?"":request.getParameter("did");
  
  if(!did.equals(""))
  {
  dao.commOper("delete from proscarjy where id="+did);
  }
  
  String url = "proscarjy.jsp?1=1";
  String sql = "select *,b.id as cid from pros a,proscarjy b  where  a.id=b.pid and b.uname='"+Info.getUser(request).get("uname")+"' ";
   
  if(!key.equals(""))
  {
  url+="&key="+key;
  sql+=" and a.proname like '%"+key+"%' ";
  } 
  
  sql+="  order by a.proshop desc";
  System.out.println(sql);
  PageManager pageManager = PageManager.getPage(url, 100, request);
  pageManager.doList(sql);
  PageManager bean = (PageManager) request.getAttribute("page");
  ArrayList<HashMap> nlist = (ArrayList) bean.getCollection();
   %>
  <body>
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<form name="f1" method="post" action="/sechandmall/admin/proscar.jsp" >
  	<table id="mainbody" border="0" width="100%" cellspacing="1"
					class="tableform">
			<tr>
     				 <td width=5% height="31" align="center" style="font-size: 12px">相关信息&nbsp;:</td>
	    <td width=14% style="font-size: 12px" align="left"><input name="key" size="35" value="<%=key %>" type="text"></td>
				 
					<td width=20% style="font-size: 12px" align="right">
					<input type="submit" class="btn3_mouseup" value="查询"> 
					
					&nbsp;
					
					</td>
			</tr>
			</table>
  	
  	
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
<tr align="center">
          <td colspan="8"  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">信息列表</td>
        </tr>
        <tr align="center">
       <td  class="itemtitle" >图片</td>
       <td  class="itemtitle" >卖家</td>
        <td  class="itemtitle" >商品名称</td>
        
          <td  class="itemtitle" >数量</td>
          <td class="itemtitle"> 价格</td>
          <td class="itemtitle"> 打折</td>
          <td class="itemtitle"> 合计金额</td>
          <td class="itemtitle">操作</td>
  </tr>
        
         <%
 int ztotal = 0;
  for(HashMap map:nlist)
  {
  int total = 0;
  System.out.println(map.get("num")+"-"+map.get("price"));
  String price = map.get("price").toString().indexOf(".")>-1?map.get("price").toString().substring(0,map.get("price").toString().indexOf(".")):map.get("price").toString();
  total = Integer.parseInt(map.get("num").toString())*Integer.parseInt(price) ;
  
  if(!map.get("discount").equals(""))
  {
  total = (Integer.parseInt(map.get("discount").toString())*total)/10;
  }
  ztotal+=total;
    %>
        <tr align="center">
        <td  class=" " > <img src="../upfile/<%=map.get("filename").equals("")?"&nbsp;":map.get("filename") %>" height="50" /> </td>
        
        <td  class=" " > <%=map.get("proshop").equals("")?"&nbsp;":map.get("proshop") %></td>
        
        <td  class=" " > <%=map.get("proname").equals("")?"&nbsp;":map.get("proname") %></td>
         
          <td align="center"><span class=" "><%=map.get("num").equals("")?"&nbsp;":map.get("num") %></span></td>
          <td align="center"> <%=map.get("price").equals("")?"&nbsp;":map.get("price") %>  </td>
          <td align="center"> <%=map.get("discount").equals("")?"不打折":map.get("discount") %>  </td>
          <td align="center"> <%=total %>  </td>
          
          <td align="center"><a href="javascript:update('<%=map.get("id")%>')">修改数量</a>
          <script type="text/javascript">
          
          
          function update(no)
          {
          pop('/sechandmall/admin/num.jsp?id='+no,'修改数量',300,85);
          }
          </script>
          &nbsp;|&nbsp;
          <a href="/sechandmall/admin/proscar.jsp?did=<%=map.get("id")%>">移出购物车</a>          </td>
  </tr>
        <%} %>
        
        <tr align="center">
          <td height="55" colspan="13" align="center"> 
          
          金额合计 :         <%=ztotal %> <label>
          &nbsp;&nbsp;&nbsp;
          <input type="button" onClick="f1.action='proscar.jsp?c=c'" name="button" style="height: 21px" id="button" value="清空购物车">
          &nbsp;&nbsp;&nbsp;
          <input type="submit" onClick="f1.action='proscar.jsp?fs=fs&f=f'" name="button2" style="height: 21px"  id="button2" value="确认发送订单">
          <br />
          ( 注 : 如果购物车中的商品涉及多个商家，将以多个订单的形式发送给各个商家)</label></td>
    </tr>
      </table>
  </form>
</body>
</html>

<script type="text/javascript">
<!--

          function add()
          {
          pop('/sechandmall/admin/addproscarjy.jsp','添加商品信息',600,387);
          }
//-->
</script>

<%
if(request.getAttribute("suc")!=null)
{
 %>
 <script type="text/javascript">
<!--
alert("添加成功")
//-->
</script>
<%}%>