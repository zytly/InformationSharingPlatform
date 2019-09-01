<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="util.Info"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="/sechandmall/admin//commfiles/css/common.css" type="text/css" />
<title>管理导航区域</title>
</head>
<script language=javascript src="/sechandmall/admin/js/outlook.js"></script>
<%
String admin = "";
String utype = "";
HashMap map = Info.getUser(request);
admin=map.get("uname").toString();
utype=map.get("utype").toString();
%>

<script>



var preClassName = "man_nav_1";

 

function list_sub_nav(Id,sortname){
 

     
	if(preClassName != ""){
      getObject(preClassName).className="bg_image";
     
   }
   if(getObject(Id).className == "bg_image"){
      getObject(Id).className="bg_image_onclick";
      preClassName = Id;
	  showInnerText(Id);
	  
	 
	  
	  var id=parseInt(Id.substring(8))-1;
	  var indexPage= window.top.frames['leftFrame'].outlookbar;
	  
	    
	    
	  indexPage.getbytitle(sortname);
	  
	 
	  
	  indexPage.getdefaultnav(sortname);
	  var title,src;
	  
	 
	  
	  for(i=0;i<indexPage.titlelist.length;i++){
	  		if(indexPage.titlelist[i].sortname==sortname){
	  			title=indexPage.itemlist[i][0].title;
	  			src=indexPage.itemlist[i][0].key;
	  			break;
	  		}	
	  }
	  
	  
	  window.top.frames['leftFrame'].changeframe("",sortname,src);
   }
}
function showInnerText(Id){
    var switchId = parseInt(Id.substring(8));
	var showText = "对不起没有信息！";
	switch(switchId){
	<%if(utype.equals("管理员")){%>
	 case 1:
		   showText =  "基础信息";
		   break;
			case 5:
			showText =  "网站信息";
			break;	
	    
	    case 6:
		   showText =  "基础信息";
		   break;
		case 7:
		 	showText =  "个人信息管理";
		 	break;
		case 8:
			showText =  "系统管理";
			break;	
		case 9:
			showText =  "系统管理";
			break;
		<%}
         if(utype.equals("卖家")){%>
		case 1:
			showText =  "交易信息";
			break;	
	    case 2:
		   showText =  "商品管理";
		   break;
	    case 3:
		   showText =  "卖家信息";		   
		   break;
	    
		<%}
		
		 if(utype.equals("买家")){%>
		case 1:
			showText =  "交易信息";
			break;	
	    
	    case 3:
		   showText =  "个人信息";		   
		   break;
	    
		<%}%>
			
	}
	getObject('show_text').innerHTML = showText;
}
 //获取对象属性兼容方法
 function getObject(objectId) {
    
	return document.getElementById(objectId);
    
}
 
</script>
<body   >
<div id="nav">
    <ul>
    <%if(utype.equals("管理员")){%>
    <li id="man_nav_1" onclick="list_sub_nav(id,'基础信息')"  class="bg_image_onclick">基础信息</li>
    <li id="man_nav_5" onclick="list_sub_nav(id,'网站信息')"  class="bg_image">网站信息</li>
	<li id="man_nav_6" onclick="list_sub_nav(id,'基础信息')"  class="bg_image">基础信息</li>
    <li id="man_nav_8" onclick="list_sub_nav(id,'系统管理')"  class="bg_image">系统管理</li>
    <li id="man_nav_7" onclick="list_sub_nav(id,'个人信息')"  class="bg_image">个人信息</li>
    <%}
     if(utype.equals("卖家")){%>
    <li id="man_nav_1" onclick="list_sub_nav(id,'交易信息')"  class="bg_image_onclick">交易信息</li>
	<li id="man_nav_2" onclick="list_sub_nav(id,'商品管理')"  class="bg_image">商品管理</li>
    <li id="man_nav_3" onclick="list_sub_nav(id,'卖家信息')"  class="bg_image">卖家信息</li> 
    <%} 
     if(utype.equals("买家")){%>
    <li id="man_nav_1" onclick="list_sub_nav(id,'交易信息')"  class="bg_image_onclick">交易信息</li> 
    <li id="man_nav_3" onclick="list_sub_nav(id,'个人信息')"  class="bg_image">个人信息</li> 
    <%} %>
	</ul>
</div>
<div id="sub_info" >&nbsp;&nbsp;  &nbsp;<span id="show_text">欢迎来到校园二手交易平台<%=Info.getUser(request).get("utype") %>中心</span></div>
</body>
</html>

 