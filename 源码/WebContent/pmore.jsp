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
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    <%
                    
                    String sql = "select * from pros where sdate<='"+Info.getDateStr().substring(0,10)+"' and edate>='"+Info.getDateStr().substring(0,10)+"' and  status='上架'   ";
                    
                    String[] nustrs = {""};
                        String[] keys = request.getParameterValues("key")==null?nustrs:request.getParameterValues("key");
                    String key = "";
                    for(String str:keys)
                    {
                    if(str==null)str="";
                    if(str.equals(""))continue;
                    key+=str+"-";
                    }
                    
                    if(key.length()>0)key=key.substring(0,key.length()-1);
                    
                    if(key.length()>0)
                    {
                    sql+=" and ( 1=1 ";
                    for(String str:key.split("-"))
                    {
                    sql+=" and (  proname like '%"+str+"%' or btype like '%"+str+"%' or stype like '%"+str+"%' ) ";
                    }
                    sql+=" ) ";
                    }
                    
                    
                    sql+="order by id desc";
                    
                     PageManager pageManager = PageManager.getPage("pmore.jsp?1=1", 9, request);
					  pageManager.doList(sql);
					  PageManager bean = (PageManager) request.getAttribute("page");
					  ArrayList<HashMap> nlist = (ArrayList) bean.getCollection();
                    int j=0;
                    for(HashMap m:nlist)
                    {
                    j++;
                     int hp = new CommDAO().getInt("select count(1) from proscar where pj='好评' and pid in(select id from pros where proshop='"+m.get("proshop")+"')");
                    int cp = new CommDAO().getInt("select count(1) from proscar where pj='差评' and pid in(select id from pros where proshop='"+m.get("proshop")+"')");
                     
                     %>
                      <TD vAlign=top width=33%>
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
                                <TD height=24 colspan="2" 
                                align=left vAlign=center bgColor=#f7f7f7>
                                <DIV align=center style=" color:orange"><strong>
								<a href="pxiang.jsp?id=<%=m.get("id") %>" >
								<%=m.get("proname") %>
                                </a>
                                </strong></DIV>
                                <DIV align=center></DIV></TD>
                                </TR>
                                <TR>
                                <TD 
                                width="33%" rowspan="4" align=center vAlign=center bgColor=#ffffff>
                                
                                <img src="upfile/<%=m.get("filename") %>" width="93" height="93" />                                </TD>
                                <TD width="67%" height="26" 
                                align=left vAlign=center bgColor=#ffffff>&nbsp;价格 : <%=m.get("price") %></TD>
                                </TR>
                                <TR>
                                <TD width="67%" height="26" 
                                align=left vAlign=center bgColor=#ffffff>&nbsp;类别 : <%=m.get("btype")%> - <%=m.get("stype")%></TD>
                                </TR>
                                <TR>
                                <TD width="67%" height="26" 
                                align=left vAlign=center bgColor=#ffffff>&nbsp;提供者: <%=m.get("proshop") %> </TD>
                                </TR>
                               </TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
                      
                      <%
                      if(j%3!=0){
                       %>
                      <TD width=10></TD>
                      <%}else{ %>
                      
                      </tr>
                      
                      <tr><td height="3"></td></tr>
                      
                      <tr>
                      
                      <%} %>
                      
                       <%} %>
                      
                      
                      
                       
                      
                      
                      
                      
                      
                      
                      </TR>
                      
                      
                      
                      <tr>
                      <td align="center" colspan="6" height="35" valign="middle">${page.info }</td>
                      </tr>
                      
                      
                      </TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
 <jsp:include page="foot.jsp"></jsp:include>
      
      
</BODY></HTML>

