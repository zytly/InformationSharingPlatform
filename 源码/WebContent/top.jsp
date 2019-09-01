<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0041)http://www.xingguangerwai01.com/index.jsp -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>考研资料共享平台</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<%
 for(HashMap m:new CommDAO().select("select * from sysuser where utype='卖家'"))
 {
   int hps = new CommDAO().getInt("select count(1) from pros a,proscar b where a.proshop = '"+m.get("uname")+"' and b.pid=a.id");
   new CommDAO().commOper("update sysuser set hps="+hps+" where uname='"+m.get("uname")+"'");
 }
 %>
<LINK rel=stylesheet 
type=text/css href="/sechandmall/sechandmall_files/css.css">

<script type="text/javascript"> 
var isIE = (document.all) ? true : false;
 
var $ = function (id) {
	return "string" == typeof id ? document.getElementById(id) : id;
};
 
var Class = {
	create: function() {
		return function() { this.initialize.apply(this, arguments); }
	}
}
 
var Extend = function(destination, source) {
	for (var property in source) {
		destination[property] = source[property];
	}
}
 
var Bind = function(object, fun) {
	return function() {
		return fun.apply(object, arguments);
	}
}
 
var Each = function(list, fun){
	for (var i = 0, len = list.length; i < len; i++) { fun(list[i], i); }
};
 
 
//ie only
var RevealTrans = Class.create();
RevealTrans.prototype = {
  initialize: function(container, options) {
	this._img = document.createElement("img");
	this._a = document.createElement("a");
	
	this._timer = null;//计时器
	this.Index = 0;//显示索引
	this._onIndex = -1;//当前索引
	
	this.SetOptions(options);
	
	this.Auto = !!this.options.Auto;
	this.Pause = Math.abs(this.options.Pause);
	this.Duration = Math.abs(this.options.Duration);
	this.Transition = parseInt(this.options.Transition);
	this.List = this.options.List;
	this.onShow = this.options.onShow;
	
	//初始化显示区域
	this._img.style.visibility = "hidden";//第一次变换时不显示红x图
	this._img.style.width = this._img.style.height = "100%"; 
	this._img.style.height = 157; 
	this._img.style.border = 0;
	this._img.onmouseover = Bind(this, this.Stop);
	this._img.onmouseout = Bind(this, this.Start);
	isIE && (this._img.style.filter = "revealTrans()");
	
	this._a.target = "_blank";
	
	$(container).appendChild(this._a).appendChild(this._img);
  },
  //设置默认属性
  SetOptions: function(options) {
	this.options = {//默认值
		Auto:		true,//是否自动切换
		Pause:		1600,//停顿时间(微妙)
		Duration:	1,//变换持续时间(秒)
		Transition:	23,//变换效果(23为随机)
		List:		[],//数据集合,如果这里不设置可以用Add方法添加
		onShow:		function(){}//变换时执行
	};
	Extend(this.options, options || {});
  },
  Start: function() {
	clearTimeout(this._timer);
	//如果没有数据就返回
	if(!this.List.length) return;
	//修正Index
	if(this.Index < 0 || this.Index >= this.List.length){ this.Index = 0; }
	//如果当前索引不是显示索引就设置显示
	if(this._onIndex != this.Index){ this._onIndex = this.Index; this.Show(this.List[this.Index]); }
	//如果要自动切换
	if(this.Auto){
		this._timer = setTimeout(Bind(this, function(){ this.Index++; this.Start(); }), this.Duration * 1000 + this.Pause);
	}
  },
  //显示
  Show: function(list) {
	if(isIE){
		//设置变换参数
		with(this._img.filters.revealTrans){
			Transition = this.Transition; Duration = this.Duration; apply(); play();
		}
	}
	this._img.style.visibility = "";
	//设置图片属性
	this._img.src = list.img; this._img.alt = list.text;
	//设置链接
	!!list["url"] ? (this._a.href = list["url"]) : this._a.removeAttribute("href");
	//附加函数
	this.onShow();
  },
  //添加变换对象
  Add: function(sIimg, sText, sUrl) {
	this.List.push({ img: sIimg, text: sText, url: sUrl });
  },
  //停止
  Stop: function() {
	clearTimeout(this._timer);
  }
};
 
 
</script>

<META name=GENERATOR content="MSHTML 8.00.6001.19258">
<style type="text/css">
<!--
.STYLE1 {color: gray}
.STYLE2 {color: orange}
-->
</style>
</HEAD>
<BODY>
 

<TABLE border=0 cellSpacing=0 background="sechandmall_files/top_index_bg.jpg" cellPadding=0 width=990 align=center 
  height=132>
  <TBODY>
  <TR>
    <TD vAlign=top>
      <TABLE width="100%" height="132" border=0 cellPadding=0 cellSpacing=0>
        <TBODY>
        <TR>
          <TD>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
              <TBODY>
              <TR>
                <TD width=230 height="96" align="center" onClick="window.location.replace('/sechandmall')">
                
                <font color=gray size="5" face="华文行楷"><strong>考研资料共享平台</strong></font>
                
                </TD>
                <TD width=772 align="center" valign="top">
                
             
                <form action="pmore.jsp" name="f1" style="display: inline" method="post" >
                  <TABLE width=97% border=0 
                  align=center cellPadding=0 cellSpacing=0>
                    <TBODY>
                      
                      <TR>
                       
                        <TD width="" height="32"   align=right>
                        
                        <%
                        if(request.getParameter("zx")!=null)
                        {
                        session.invalidate();
                        }
                         %>
                        
                      
                      <%
                      if(Info.getUser(request)==null){
                       %>  
                        <label>
                        <span class="STYLE2">欢迎您来到考研资料共享平台，请 
                        
                       <a href="login.jsp"> <font color=gray>登录</font> </a>
                        
                        或 
                        
                        <a href="regedit.jsp"><font color=gray>注册</font>      </a>                  </span>
                         </label>
                        <%}else{ %>
                        
                         <label>
                        <span class="STYLE2">欢迎您回来 : <%=Info.getUser(request).get("uname") %> [<%=Info.getUser(request).get("utype") %>]  
                        
                        
                        <%
                        if(Info.getUser(request).get("utype").equals("卖家")){
                         %>
                         &nbsp;&nbsp;&nbsp; 
                        
                       <a href="/sechandmall/sindex.jsp?id=<%=Info.getUser(request).get("id") %>"  > <font color=gray>去我的店子</font> </a>
                       
                       <%} %>
                        
                        &nbsp;&nbsp;&nbsp; 
                        
                       <a href="/sechandmall/admin/" target="_blank"> <font color=gray>去<%=Info.getUser(request).get("utype") %>中心</font> </a>
                        
                        &nbsp;&nbsp;&nbsp; 
                        
                        <a href="index.jsp?zx=zx"><font color=gray>退出</font>      </a>                  </span>
                         </label>
                        
                        <%} %>
                        
                        </TD>
                      </TR>
                    </TBODY>
                  </TABLE>
                  <TABLE width=94% border=0 
                  align=center cellPadding=0 cellSpacing=0>
                  
                  </TABLE>
                </form>
                    
                    
                    
                    
                    
                    
                    
                    
                    </TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD height=28>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width=918 
              align=center><TBODY>
              <TR>
                <TD width=90>
                  <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                    <TBODY>
                    <TR>
                      <TD width=16><IMG src="sechandmall_files/icon_home.jpg" 
                        width=16 height=25></TD>
                      <TD align=middle><A class=top_index_daohang_text 
                        href="index.jsp">首页</A></TD></TR></TBODY></TABLE></TD>
                <TD><IMG src="sechandmall_files/daohang_lines.jpg" width=2 
                  height=28></TD>
                <TD width=190 align=middle><A class=top_index_daohang_text 
                  href="scjs.jsp">平台简介</A></TD>
               <TD><IMG src="sechandmall_files/daohang_lines.jpg" width=2 
                  height=28></TD>
                <TD width=190 align=middle><A class=top_index_daohang_text 
                  href="pmore.jsp">资料查看</A></TD>
               
                <TD><IMG src="sechandmall_files/daohang_lines.jpg" width=2 
                  height=28></TD>
                   <TD width=190 align=middle><A class=top_index_daohang_text 
                  href="qmore.jsp">求购资料</A></TD>
                <TD><IMG src="sechandmall_files/daohang_lines.jpg" width=2 
                  height=28></TD>
                  
                    
                <TD width=190 align=middle><A class=top_index_daohang_text 
                  href="nmore.jsp">信息资讯</A></TD>
                <TD><IMG src="sechandmall_files/daohang_lines.jpg" width=2 
                  height=28></TD>
                <TD width=190 align=middle><A class=top_index_daohang_text 
                  href="lxwm.jsp">联系我们</A></TD>
                <TD><IMG src="sechandmall_files/daohang_lines.jpg" width=2 
                  height=28></TD>
                <TD width=190 align=middle><A class=top_index_daohang_text 
                  href="messages.jsp">在线留言</A></TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD height=8></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
 
<TABLE border=0 cellSpacing=0 cellPadding=0 width=990 align=center>
  <TBODY>
  <TR>
    <TD height=1></TD></TR></TBODY></TABLE>
    
     
</BODY></HTML>
 
