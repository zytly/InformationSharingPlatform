// 导航栏配置文件
var outlookbar=new outlook();
var t;

t=outlookbar.addtitle('交易信息','交易信息',1) 
outlookbar.additem('查看交易订单',t,'jyordersa.jsp') 
outlookbar.additem('投诉处理',t,'acomplcx.jsp')

t=outlookbar.addtitle('系统管理','系统管理',1)
outlookbar.additem('添加管理员',t,'addsysusers.jsp')
outlookbar.additem('管理员维护',t,'sysusers.jsp')


t=outlookbar.addtitle('网站信息','网站信息',1)
outlookbar.additem('商城介绍',t,'scjs.jsp')
outlookbar.additem('商城资讯',t,'news.jsp') 
outlookbar.additem('联系我们',t,'lxwm.jsp')
outlookbar.additem('商城公告',t,'notice.jsp')
outlookbar.additem('留言板',t,'message.jsp')
outlookbar.additem('友情链接',t,'yqlj.jsp') 


t=outlookbar.addtitle('基础信息','基础信息',1)
outlookbar.additem('买家会员',t,'buyer.jsp')
outlookbar.additem('卖家会员',t,'seller.jsp')
outlookbar.additem('商品管理',t,'pros.jsp')
outlookbar.additem('商品评价管理',t,'pinlun.jsp')
outlookbar.additem('商品属性设置',t,'splb.jsp')



t=outlookbar.addtitle('个人信息','个人信息',1)
outlookbar.additem('基本资料管理',t,'pupdatesysusers.jsp')
outlookbar.additem('修改登录密码',t,'updatepwd.jsp')

 




