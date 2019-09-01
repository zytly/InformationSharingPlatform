// 导航栏配置文件
var outlookbar=new outlook();
var t;

t=outlookbar.addtitle('商品管理','商品管理',1)
outlookbar.additem('添加商品',t,'addpro.jsp')
outlookbar.additem('商品管理',t,'pros.jsp')




t=outlookbar.addtitle('卖家信息','卖家信息',1)
outlookbar.additem('基本资料管理',t,'pupdatesysusers.jsp')
outlookbar.additem('修改登录密码',t,'updatepwd.jsp')



t=outlookbar.addtitle('交易信息','交易信息',1) 
outlookbar.additem('查看交易订单',t,'jyorderss.jsp')
outlookbar.additem('历史交易订单',t,'jyorderssls.jsp')
outlookbar.additem('我的交换申请',t,'mychanges.jsp')
outlookbar.additem('查看交换申请',t,'ckchanges.jsp')
outlookbar.additem('求购信息',t,'qgminfocx.jsp') 
outlookbar.additem('爱心捐赠',t,'axminfocx.jsp') 
outlookbar.additem('我要投诉',t,'complcx.jsp')



