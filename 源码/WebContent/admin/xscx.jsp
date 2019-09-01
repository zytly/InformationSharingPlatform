<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
<%@page import="util.PageManager"%>
 
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
 HashMap user = Info.getUser(request);
 
   String stime = request.getParameter("stime")==null?"":request.getParameter("stime");
   String etime = request.getParameter("etime")==null?"":request.getParameter("etime");
   String shj = request.getParameter("shj")==null?"":request.getParameter("shj");
   String kh = request.getParameter("kh")==null?"":request.getParameter("kh");
 
  String did = request.getParameter("did")==null?"":request.getParameter("did");
  
  if(!did.equals(""))
  {
  dao.commOper("delete from xiaos where id="+did);
  }
  
  
  
  String url = "rbookhj.jsp?1=1";
  String sql = "select * from xiaos where 1=1 "; 
  
  if(Info.getUser(request).get("utype").equals("客户"))
  {
  sql+=" and uname='"+user.get("uname")+"' ";
  }
  
  if(!stime.equals(""))
  {
  url+="&stime="+stime;
  sql+=" and stime>='"+stime+"' ";
  }
  
  if(!etime.equals(""))
  {
  url+="&etime="+etime;
  sql+=" and stime<='"+Info.getDay(etime,1) +"' ";
  }
  
  if(!kh.equals(""))
  {
  url+="&kh="+kh;
  sql+=" and uname='"+kh+"' ";
  }
 
  if(!shj.equals(""))
  {
  url+="&shj="+shj;
  sql+=" and shj='"+shj+"' ";
  }
 
  sql+=" order by id desc";
  
  HashMap tmap = new HashMap();
  tmap.put("shj",shj);
  tmap.put("kh",kh);
  tmap.put("stime",stime);
  tmap.put("etime",etime);
  
  System.out.println(sql);
  PageManager pageManager = PageManager.getPage(url, 10, request);
  pageManager.doList(sql);
  PageManager bean = (PageManager) request.getAttribute("page");
  ArrayList<HashMap> nlist = (ArrayList) bean.getCollection();
   %>
  <body>
  	<!-- cellspacing 是单元格之间的距离、cesspadding 是单元格中内容与边框的距离 -->
  	<form name="f1" method="post" action="/sechandmall/admin/xscx.jsp" >
  	<table id="mainbody" border="0" width="100%" cellspacing="1"
					class="tableform">
			<tr>
     				 <td height="31" align="left" style="font-size: 12px">
     				 
     				 &nbsp;&nbsp;
     				 
     				 销售时间 :
	    
	                   <input type=text name="stime" id="stime" size="10"  onclick="WdatePicker();" />	   
	                    - 
	                   <input type=text name="etime" id="etime" size="10"  onclick="WdatePicker();" />	 
	                   
	                   <%
	                   if(Info.getUser(request).get("utype").equals("管理员"))
                         {
	                    %>
	                   &nbsp;&nbsp;
	                   
	                   客户 : 
	                   
	                     <select name="kh" id="kh"    >
	                     <option value="">全部</option>
            <%
            for(HashMap mmm:new CommDAO().select("select * from sysuser where utype='客户'")){
             %>
             <option value="<%=mmm.get("uname") %>"><%=mmm.get("uname") %></option>
             <%} %>
            </select>
            <%} %>
            
             &nbsp;&nbsp;
             
              售货机 : 
	                   
	                     <select name="shj" id="shj"    >
	                     <option value="">全部</option>
            <%
         if(Info.getUser(request).get("utype").equals("管理员"))
       {
            for(HashMap mmm:new CommDAO().select("select * from shj")){
             %>
             <option value="<%=mmm.get("shjname") %>"><%=mmm.get("shjname") %></option>
             <%}}else{
               for(HashMap mmm:new CommDAO().select("select * from shj where shjkh='"+Info.getUser(request).get("uname")+"'")){
              %>
             <option value="<%=mmm.get("shjname") %>"><%=mmm.get("shjname") %></option>
             <%}} %>
            </select>
	                   
	                    					</td>
	    <td width=20% style="font-size: 12px" align="right">
		  <input type="submit" class="btn3_mouseup" value="查询">&nbsp;					</td>
			</tr>
			</table>
  	
  	
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="mytab" id="table1">
<tr align="center">
          <td colspan="10"  background="/sechandmall/admin/commfiles/images/bg.gif"
				bgcolor="#FFFFFF" class="STYLE3">信息列表</td>
        </tr>
        <tr align="center">
        <td  class="itemtitle" > 客户</td>
          <td  class="itemtitle" > 售货机</td>
          <td class="itemtitle"> 商品名称</td>
          <td class="itemtitle"> 商品数量</td>
          <td class="itemtitle"> 价格</td>
          <td class="itemtitle">商品条码</td>
          <td class="itemtitle">销售时间</td>
           
          
          
  </tr>
        
         <%
 
  for(HashMap map:nlist)
  {
    %>
        <tr align="center">
         <td align="center"> <%=map.get("uname").equals("")?"&nbsp;":map.get("uname") %> </td>
          <td align="center"> <%=map.get("shj").equals("")?"&nbsp;":map.get("shj") %> </td>
            <td align="center"> <%=map.get("goodname").equals("")?"&nbsp;":map.get("goodname") %> </td>
           <td align="center"> <%=map.get("nums").equals("")?"&nbsp;":map.get("nums") %> </td>
            <td align="center"> <%=map.get("price").equals("")?"&nbsp;":map.get("price") %> </td>
          <td align="center"> <%=map.get("goodtm").equals("")?"&nbsp;":map.get("goodtm") %> </td>
            <td align="center"> <%=map.get("stime").equals("")?"&nbsp;":map.get("stime") %> </td>
           
           
           
          
  </tr>
<%} %>
        
        
        <script type="text/javascript">
          function update(no)
          {
          pop('/sechandmall/admin/updatexs.jsp?id='+no,'修改信息',450,195);
          }
          
           
          
          function shbook(no)
          {
          pop('/sechandmall/admin/rshbook.jsp?id='+no,'续借',400,72);
          }
          
          function add()
          {
          pop('/sechandmall/admin/addxs.jsp','添加销售',450,195);
          }
          </script>
        
        <tr align="center">
          <td align="right" colspan="13"><%=bean.getInfo() %></td>
        </tr>
      </table>
      </form>
</body>
</html>
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
<%=Info.tform(tmap) %>
		<script type="text/javascript" src="/sechandmall/js/My97DatePicker/WdatePicker.js"></script>