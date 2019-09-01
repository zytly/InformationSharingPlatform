<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
<%@page import="util.PageManager"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0041)http://www.xingguangerwai01.com/index.jsp -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>考研资料共享平台</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>


<%
 if(Info.getUser(request)!=null){
HashMap ext = new HashMap();
ext.put("savetime",Info.getDateStr());
ext.put("saver",Info.getUser(request).get("uname"));
new CommDAO().insert(request,response,"messages",ext,true,false);
}
 %>



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
                      <TD class=green_title01>在线留言</TD>
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
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                      
                    <%
                    
                    String sql = "select * from messages where 1=1  ";
                    
                    sql+="order by id desc";
                    
                     PageManager pageManager = PageManager.getPage("messages.jsp?1=1", 5, request);
					  pageManager.doList(sql);
					  PageManager bean = (PageManager) request.getAttribute("page");
					  ArrayList<HashMap> nlist = (ArrayList) bean.getCollection();
                    int j=0;
                    for(HashMap mmm:nlist)
                    {
                    HashMap umap = new CommDAO().select("select * from sysuser where uname='"+mmm.get("saver")+"'").get(0);
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
                                cellPadding=0 width="100%" bgColor=#dddddd>
                                <TBODY>
                              
                                <TR>
                                <TD 
                                width="11%" rowspan="3" align=center vAlign=center bgColor=#ffffff>
                                
                                <img src="upfile/<%=umap.get("filename") %>"   height="70" />                                </TD>
                                <TD width="89%" height="26" 
                                align=left vAlign=center bgColor=#ffffff>&nbsp;<%=mmm.get("saver") %> ( <%=mmm.get("savetime") %> ) : </TD>
                                </TR>
                                <TR>
                                <TD height="26" 
                                align=left vAlign=center bgColor=#ffffff> &nbsp;<%=mmm.get("content") %></TD>
                                </TR>
                                <TR>
                                <TD 
                                align=left vAlign=center bgColor=#ffffff>&nbsp;
                                <%
                                if(mmm.get("recontent").equals("")){
                                 %>
                                暂无回复信息
                                <%}else{ %>
                                <font color=orange>管理员回复 : <%=mmm.get("recontent") %></font>
                                <%} %>                                </TD>
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
                      <form name="f1" method="post" action="messages.jsp?f=f">
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

