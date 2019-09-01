<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
<%@page import="util.PageManager"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0041)http://www.xingguangerwai01.com/index.jsp -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>考研资料共享平台</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>

<LINK rel=stylesheet 
type=text/css href="/sechandmall/sechandmall_files/css.css">

<META name=GENERATOR content="MSHTML 8.00.6001.19258"></HEAD>
<BODY>
 
 <jsp:include page="top.jsp"></jsp:include>
 <TABLE border=0 cellSpacing=0 cellPadding=0 width=990 align=center>
  <TBODY>
  <TR>
    <TD vAlign=top>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR >
          <TD  background=sechandmall_files/all.jpg>
          
          <%
          String id = request.getParameter("id");
          HashMap mmm = new CommDAO().getmap(id,"pros");
           %>
          
          <%
 if(Info.getUser(request)!=null){
HashMap ext = new HashMap();
ext.put("savetime",Info.getDateStr());
ext.put("saver",Info.getUser(request).get("uname"));
ext.put("pid",id);
ext.put("infotype","商品");
new CommDAO().insert(request,response,"pinlun",ext,true,false);
}
 %>
          
           <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                    <TBODY>
                    <TR>
                      <TD width=20 height="28" >
                      <DIV align=center><IMG src="sechandmall_files/icon01.jpg" 
                        width=9 height=26></DIV></TD>
                      <TD class=green_title01>商品一览</TD>
                      <TD width=50>
                      <DIV align=center><A 
                        href="pmore.jsp"><br></A></DIV></TD></TR></TBODY></TABLE>
          
          
          
          
          </TD></TR>
        <TR>
          <TD vAlign=top>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD height=5></TD></TR>
              <TR>
                <TD vAlign=top>
                  <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                    <TBODY>
                    <TR>  
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                      <TD vAlign=top width= >
                        <TABLE border=0 cellSpacing=0 cellPadding=0 
width="100%">
                          <TBODY>
                          <TR>
                            <TD vAlign=top>
                              <TABLE border=0 cellSpacing=0 cellPadding=0 
                              width="100%">
                                <TBODY>
                                <TR>
                                <TD vAlign=top>
                                <TABLE border=0 cellSpacing=0 cellPadding=0 
                                width="100%">
                                <TBODY>
                               
                                <TR>
                                <TD vAlign=top  >
                                <TABLE id=standard border=0 cellSpacing=1 
                                cellPadding=0 width="100%" bgColor=#dddddd>
                                <TBODY>
                                <TR>
                                <TD height=24 colspan="3" 
                                align=right vAlign=center bgColor=#f7f7f7>
                              <strong><font color="orange"><%=mmm.get("proname") %></font></strong> 
                                
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                
                                <%
                                if(Info.getUser(request)!=null){
                                 %>
                               	<script type="text/javascript" src="/sechandmall/js/popups.js"></script>
                               	
                               	
                                <script type="text/javascript">
                                function tocar2(no)
                                {
                                pop("num2.jsp?id="+no,"请输入数量",270,90);
                                }
                                </script>
                                 
                               
                                
                                
                                <%
                                String qq = new CommDAO().select("select * from sysuser where uname='"+mmm.get("proshop")+"'").get(0).get("qq").toString();
                                 %>
                                <a href="tencent://message/?uin=<%=qq %>&Site=在线QQ&amp;Menu=yes">[联系共享者]</a>
                                
                                
                                <%}else{ %>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <%} %>
                                
                                &nbsp;
                                
                                
                                <DIV align=center></DIV></TD>
                                </TR>
                                <TR>
                                <TD 
                                width="17%" rowspan="4" align=center vAlign=center bgColor=#ffffff>
                                
                                <img src="upfile/<%=mmm.get("filename") %>"   height="93" />                                </TD>
                                <TD width="41%" height="26" 
                                align=left vAlign=center bgColor=#ffffff>&nbsp;价格 : <%=mmm.get("price") %></TD>
                                <TD width="42%" 
                                align=left vAlign=center bgColor=#ffffff>&nbsp;类别 : <%=mmm.get("btype")%> - <%=mmm.get("stype")%></TD>
                                </TR>
                                <TR>
                                <TD width="41%" height="26" 
                                align=left vAlign=center bgColor=#ffffff>&nbsp;所属卖家 : <%=mmm.get("proshop") %></TD>
                                <TD width="42%" height="26" 
                                align=left vAlign=center bgColor=#ffffff>上架时间 : <%=mmm.get("savetime") %></TD>
                                </TR>
                              
                                <TR>
                                <TD height="26" colspan="2" 
                                align=left vAlign=center bgColor=#ffffff>&nbsp;附赠 : <%=mmm.get("fz").toString()  %></TD>
                                </TR>
                                
                                <TR>
                                <TD height="26" colspan="2" 
                                align=left vAlign=center bgColor=#ffffff>&nbsp;<%=mmm.get("bei") %></TD>
                                </TR>
                                
                                <TR>
                                <TD height="26" colspan="3" 
                                align=left vAlign=center bgColor=#ffffff>&nbsp;
                                <font color=orange>
                              
                                </font>
                                
                                </TD>
                                </TR>
                                
                                </TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
                      
                    
                      
                      
                      
                       
                      
                      
                      
                      
                      
                      
                      </TR>
                      
                      
                      
                       <tr>
                      <td align="center" colspan="6" height="13" valign="middle"  > </td>
                      </tr>
                      
                    <%
                    
                    String sql = "select * from pinlun where infotype='商品' and pid='"+id+"'  ";
                    
                    sql+="order by id desc";
                    
                     PageManager pageManager = PageManager.getPage("pxiang.jsp?1=1&id="+id, 5, request);
					  pageManager.doList(sql);
					  PageManager bean = (PageManager) request.getAttribute("page");
					  ArrayList<HashMap> nlist = (ArrayList) bean.getCollection();
                    int j=0;
                    for(HashMap mmmm:nlist)
                    {
                    HashMap umap = new CommDAO().select("select * from sysuser where uname='"+mmmm.get("saver")+"'").get(0);
                     %>
                    <TBODY>
                    <TR>  
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                      <TD vAlign=top width= >
                        <TABLE border=0 cellSpacing=0 cellPadding=0 
width="100%">
                          <TBODY>
                          <TR>
                            <TD vAlign=top>
                              <TABLE border=0 cellSpacing=0 cellPadding=0 
                              width="100%">
                                <TBODY>
                                <TR>
                                <TD vAlign=top>
                                <TABLE border=0 cellSpacing=0 cellPadding=0 
                                width="100%">
                                <TBODY>
                               
                                <TR>
                                <TD vAlign=top  >
                                <TABLE id=standard border=0 cellSpacing=1 
                                cellPadding=0 width="100%" bgColor=>
                                <TBODY>
                              
                                <TR>
                                <TD 
                                width="8%" rowspan="2" align=center vAlign=middle bgColor=#ffffff>
                                
                                <img src="upfile/<%=umap.get("filename") %>"   height="55" />                                </TD>
                                <TD width="92%" height="30" 
                                align=left vAlign=center bgColor=#ffffff>&nbsp;<%=mmmm.get("saver") %> ( <%=mmmm.get("savetime") %> ) : </TD>
                                </TR>
                                <TR>
                                <TD height="45" 
                                align=left vAlign=top bgColor=#ffffff>&nbsp; <%=mmmm.get("content") %></TD>
                                </TR>
                                <TR>
                                 
                                </TR>
                                </TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
                      </TR>
                      
                      
                      
                      <tr>
                      <td align="center" colspan="6" height="5" valign="middle"></td>
                      </tr>
                      </TBODY>
                    
                    <%}%>
                    
                    
                     <tr>
                      <td align="center" colspan="6" height="3" valign="middle">${page.info }</td>
                      </tr>
                      
                      <tr>
                      <td align="center" colspan="6" height="13" valign="middle"  > </td>
                      </tr>
                    
                    
                    
                    <%
                    if(Info.getUser(request)!=null){
                     %>
                      <tr>
                      <td align="center" colspan="6" height="35" valign="middle">
                      <form name="f1" method="post" action="pxiang.jsp?f=f&id=<%=id %>">
                        <label>
                          <textarea name="content" id="content" cols="50" rows="3"></textarea>
                          </label>
                        <br>
                        <input name=""  type="submit" value="提交留言" />
                       </form>  </td>
                      </tr>
                      <%} %>
                      
                      
                      
                      
                       </TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
 <jsp:include page="foot.jsp"></jsp:include>
      
      
</BODY></HTML>
<<script type="text/javascript">
<!--
popheight=200;
//-->
</script>
