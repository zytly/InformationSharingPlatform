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
 <%
String id = request.getParameter("id");
System.out.println(id);
HashMap mmm = new CommDAO().getmap(id,"sysuser");
  %>

<TABLE border=0 cellSpacing=0 cellPadding=0 width=990 align=center>
  <TBODY>
    <TR>
      <TD vAlign=top><TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
          <TR >
            <TD  background=sechandmall_files/all.jpg><TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
                <TR>
                  <TD width=20 height="28" ><DIV align=center><IMG src="sechandmall_files/icon01.jpg" 
                        width=9 height=26></DIV></TD>
                  <TD class=green_title01>卖家首页</TD>
                  <TD width=50><DIV align=center></DIV></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
          </TR>
          <TR>
            <TD vAlign=top><TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
                <TR>
                  <TD height=5></TD>
                </TR>
                <TR>
                  <TD vAlign=top><TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                    <TBODY>
                      <TR>
                       
                        <TD vAlign=top width=33%><TABLE border=0 cellSpacing=0 cellPadding=0 
width="100%">
                          <TBODY>
                            <TR>
                              <TD vAlign=top><TABLE border=0 cellSpacing=0 cellPadding=0 
                              width="100%">
                                <TBODY>
                                  <TR>
                                    <TD vAlign=top><TABLE border=0 cellSpacing=0 cellPadding=0 
                                width="100%">
                                      <TBODY>
                                        <TR>
                                          <TD vAlign=top  ><TABLE id=standard2 border=0 cellSpacing=1 
                                cellPadding=0 width="100%" bgColor=#dddddd>
                                            <TBODY>
                                              <TR>
                                                <TD height=24 colspan="3" 
                                align=left vAlign=center bgColor=#f7f7f7><DIV align=center style=" color:orange"><strong><%=mmm.get("tname") %></strong></DIV>
                                                                  <DIV align=center></DIV></TD>
                                              </TR>
                                              <TR>
                                                <TD 
                                width="16%" rowspan="3" align=center vAlign=center bgColor=#ffffff><img src="upfile/<%=mmm.get("filename") %>" height="93" /> </TD>
                                                <TD width="42%" height="26" 
                                align=left vAlign=center bgColor=#ffffff>&nbsp;店主 : <%=mmm.get("uname") %> </TD>
                                                <TD width="42%" 
                                align=left vAlign=center bgColor=#ffffff>&nbsp;
                                
                                联系地址 : <%=mmm.get("addrs") %>                                </TD>
                                              </TR>
                                              <TR>
                                                <TD 
                                align=left vAlign=top bgColor=#ffffff style="padding:2px">
                                &nbsp;联系QQ : <%=mmm.get("qq") %>                                </TD>
                                                <TD 
                                align=left vAlign=top bgColor=#ffffff style="padding:2px">&nbsp;加盟时间 : <%=mmm.get("savetime") %></TD>
                                              </TR>
                                              
                                              
                                              <TR>
                                                <TD height="49" colspan="2" 
                                align=left vAlign=top bgColor=#ffffff><span style="padding:2px">&nbsp;<%=Info.subStr(mmm.get("bei").toString(),520)  %></span></TD>
                                              </TR>
                                            </TBODY>
                                          </TABLE></TD>
                                        </TR>
                                      </TBODY>
                                    </TABLE></TD>
                                  </TR>
                                </TBODY>
                              </TABLE></TD>
                            </TR>
                          </TBODY>
                        </TABLE></TD>
                     
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
          </TR>
        </TBODY>
      </TABLE></TD>
    </TR>
  </TBODY>
</TABLE>


<TABLE border=0 cellSpacing=0 cellPadding=0 width=990 align=center>
  <TBODY>
  <TR>
    <TD height=5></TD></TR></TBODY></TABLE>


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
                      <TD class=green_title01>最新商品</TD>
                      <TD width=50>
                      <DIV align=center></DIV></TD></TR></TBODY></TABLE>
          
          
          
          
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
                    
                     PageManager pageManager = PageManager.getPage("sindex.jsp?1=1&id="+id+"", 9, request);
					  pageManager.doList("select * from pros where status='上架' and proshop='"+mmm.get("uname")+"' order by id desc");
					  PageManager bean = (PageManager) request.getAttribute("page");
					  ArrayList<HashMap> nlist = (ArrayList) bean.getCollection();
                    
                    
                    int j=0;
                    for(HashMap m:nlist)
                    {
                    j++;
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
                                <TD height=27 colspan="2" 
                                align=left vAlign=center bgColor=#f7f7f7>
                                <DIV align=center style=" color:orange"><strong><%=m.get("proname") %></strong></DIV>
                                <DIV align=center></DIV></TD>
                                </TR>
                                <TR>
                                <TD 
                                width="33%" rowspan="4" align=center vAlign=center bgColor=#ffffff>
                                
                                <img src="upfile/<%=m.get("filename") %>" width="93" height="93" />                                </TD>
                                <TD width="67%" height="22" 
                                align=left vAlign=center bgColor=#ffffff>&nbsp;价格 : <%=m.get("price") %></TD>
                                </TR>
                                <TR>
                                <TD width="67%" height="22" 
                                align=left vAlign=center bgColor=#ffffff>&nbsp;折扣 : <%=m.get("discount").equals("")?"不打折":(m.get("discount")+" 折" )%></TD>
                                </TR>
                                <TR>
                                <TD width="67%" height="22" 
                                align=left vAlign=center bgColor=#ffffff>&nbsp;所属卖家 : <%=m.get("proshop") %></TD>
                                </TR>
                                <TR>
                                <TD width="67%" height="22" 
                                align=left vAlign=center bgColor=#ffffff>&nbsp;上架时间 : <%=m.get("savetime") %></TD>
                                </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
                      
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

