# MySQL-Front 5.1  (Build 3.57)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: 127.0.0.1    Database: sechandmall
# ------------------------------------------------------
# Server version 5.0.96-community-nt

#
# Source for table changes
#

DROP TABLE IF EXISTS `changes`;
CREATE TABLE `changes` (
  `id` bigint(20) NOT NULL auto_increment,
  `uname` varchar(255) default NULL,
  `pname` varchar(255) default NULL,
  `nostatus` varchar(255) default NULL,
  `filename` varchar(255) default NULL,
  `pbei` varchar(255) default NULL,
  `touname` varchar(255) default NULL,
  `topid` varchar(255) default NULL,
  `topname` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `savetime` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201503202223470009 DEFAULT CHARSET=utf8;

#
# Dumping data for table changes
#
LOCK TABLES `changes` WRITE;
/*!40000 ALTER TABLE `changes` DISABLE KEYS */;

INSERT INTO `changes` VALUES (201503202003110006,'buyer01','一本好书','八成新','201503202003100005.jpg','很好看','seller01','10','彩色回形针','已成交','2017-03-19 08:03:11');
INSERT INTO `changes` VALUES (201503202223470008,'buyer01','我有本书','八成','201503202223460007.jpg','很好看','seller01','1','追梦生涯','已拒绝','2017-03-19 10:23:47');
/*!40000 ALTER TABLE `changes` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table compl
#

DROP TABLE IF EXISTS `compl`;
CREATE TABLE `compl` (
  `id` bigint(20) NOT NULL auto_increment,
  `uname` varchar(255) default NULL,
  `touname` varchar(255) default NULL,
  `pcontent` varchar(255) default NULL,
  `filename` varchar(255) default NULL,
  `recont` varchar(255) default NULL,
  `savetime` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201503202149050003 DEFAULT CHARSET=utf8;

#
# Dumping data for table compl
#
LOCK TABLES `compl` WRITE;
/*!40000 ALTER TABLE `compl` DISABLE KEYS */;

INSERT INTO `compl` VALUES (201503202149050002,'seller01','seller01','不发货给我','201503202149040001.jpg','我封了他','2017-03-19 09:49:05');
/*!40000 ALTER TABLE `compl` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table messages
#

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL auto_increment,
  `saver` varchar(255) default NULL,
  `savetime` varchar(255) default NULL,
  `content` text,
  `recontent` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Dumping data for table messages
#
LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;

INSERT INTO `messages` VALUES (1,'seller01','2017-03-19 04:56:42','赫赫有名的俄罗斯总统普京的保镖谢尔盖将参加， 规则更加开放，不仅允许打头，还允许使用摔法，站立关节技 快速回复 \n','是这样的');
INSERT INTO `messages` VALUES (2,'seller01','2017-03-19 04:56:42','一天我对PSP产生了浓厚的兴趣，也很想拥有一个 于是从那天起就长对老爸说要买一个， 但我也明白毕竟是昂贵的东西，我们的钱用在生活上也是很紧凑的了','');
INSERT INTO `messages` VALUES (3,'buyer01','2017-03-19 04:56:42','建议喜欢的MM们可以去现场看看！这次crocs的特卖和以往略有不同这次男女鞋各占一半~款式多样但断码较多！ \n','');
INSERT INTO `messages` VALUES (4,'buyer01','2017-03-19 04:56:42','跪求D8勿删除，以前就被删除过一回。。。。。 美国是个种族大熔炉，到了纽约，身临其境，果不虚传，各色人等尽收眼底，真像人种博览会。快速回复 \n','');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table minfo
#

DROP TABLE IF EXISTS `minfo`;
CREATE TABLE `minfo` (
  `id` int(11) NOT NULL auto_increment,
  `uname` varchar(255) default NULL,
  `tname` varchar(255) default NULL,
  `tel` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `content` text,
  `savetime` varchar(255) default NULL,
  `infotype` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Dumping data for table minfo
#
LOCK TABLES `minfo` WRITE;
/*!40000 ALTER TABLE `minfo` DISABLE KEYS */;

INSERT INTO `minfo` VALUES (1,'buyer01','小胡','027-88888888','我有一件毛衣要捐出去','<p>我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去</p>','2017-03-18 05:21:06','爱心');
INSERT INTO `minfo` VALUES (2,'buyer01','小胡','027-88888888','我要一件旧毛衣','<p>我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣我要一件旧毛衣</p>','2017-03-18 05:22:55','求购');
/*!40000 ALTER TABLE `minfo` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table news
#

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `content` text,
  `savetime` varchar(255) default NULL,
  `infotype` varchar(255) default NULL,
  `filename` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

#
# Dumping data for table news
#
LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;

INSERT INTO `news` VALUES (2,'《来自星星的你》引发阅读热潮 剧中图书销售大涨 ','<p>【开新农场】风景秀丽，景色怡人，&ldquo;中国的莱茵河&rdquo;!23</p>','2017-03-19 04:56:42','新闻','201303241116030007.jpg');
INSERT INTO `news` VALUES (3,'','<p>北京市石景山区石景山路29号京燕大厦东座</p>\n<p>电话：（8610）62727777</p>\n<p>传真：（8610）68873201</p>\n<p>联系人：李小姐</p>\n<p>邮箱：gonghui@cyou-inc.com</p>\n<p><strong>投诉热线：</strong></p>\n<p>如果您发现畅游公司员工违反诚信正直、公平公正、信息保密等职业道德规范等问题，欢迎联系我们进行举报：</p>\n<p>联系人：霍小姐</p>\n<p>电子邮箱：<a target=\"_blank\" href=\"mailto:hotline@cyou-inc.com\">hotline@cyou-inc.com</a></p>\n<p><strong>销售联系方式</strong></p>\n<p>搜狐游戏是一家集游戏研发、运营、维护、销售、推广于一体的数字娱乐产品及服务提供商。以&ldquo;实现多方共赢&rdquo;为原则，采用分区域渠道销售模式，为广大 客户提供网络游戏产品及服务。目前设有华北、东北、华东、华中、华南、西南、西北七个区域，区域核心经销商和合作经销商达数百家。我们希望拓展更广泛的新 渠道，为广大客户提供更加便利的销售通路和服务。 <br />\n以下为各区域联系方式：</p>\n<p>\n','','联系我们','');
INSERT INTO `news` VALUES (4,'','<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;经政府文化管理部门批准，云南玺正图书代理有限公司受云南省文化厅的委托，对&ldquo;2012年乡镇文化站图书产品采购项目&rdquo;采用公开招标方式进行招标，欢迎具有相应资质、供货、设备安装及服务能力的投标人参加本项目投标。&nbsp;&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 活动时间：2012年7月3日-2012年7月4日 <br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 活动地点：上海市徐汇区衡山路932号 光谷图书城三号楼&nbsp;王女士</p>','','公告','');
INSERT INTO `news` VALUES (5,'','','','广告','201404051003560004.bmp');
INSERT INTO `news` VALUES (6,'','','','广告','201404051005110005.bmp');
INSERT INTO `news` VALUES (7,'','','','广告','201404051006560006.bmp');
INSERT INTO `news` VALUES (10,'俄罗斯政府减租减税提振图书销售 新华网重庆频道','<p>集体聚集抵制宏达钼铜项目。今日，四川</p>','2017-03-19 04:56:42','新闻','201303241117450008.jpg');
INSERT INTO `news` VALUES (11,'英国乐购超市开通电子书销售平台 中国出版网','<p>通报了宏达钼铜项目有关情况。通报称</p>','2017-03-19 04:56:42','新闻','201304212140260009.jpg');
INSERT INTO `news` VALUES (12,'俄罗斯政府计划减租减税 提振图书销售 新华网','<p>集体聚集抵制宏达钼铜项目。今日，四川省什邡</p>','2017-03-19 04:56:42','新闻','201603282214410005.jpeg');
INSERT INTO `news` VALUES (13,'书店“逆袭”:经营的是书,更是文化体验(附照片) 和讯','<p>什邡市人民政府新闻办公室官方微博&ldquo;活力什邡&rdquo;发</p>','2017-03-19 04:56:42','新闻','201603282214310004.jpg');
INSERT INTO `news` VALUES (14,'微信卖书 只打雷不下雨 网易新闻','<p><strong>活动时间：</strong>2012年7月6日-2012年7月15日</p>\r\n<p><strong>活动地点：</strong>曲阜路166号</p>\r\n<p><strong>活动内容：</strong>大悦城年中购物季疯狂血拼3折起！</p>\r\n<p style=\"text-align: center\">点击图片进入下一页<br />\r\n&nbsp;</p>','2017-03-19 04:56:42','新闻','201603282214200003.jpg');
INSERT INTO `news` VALUES (15,'','<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 自2004年初正式涉足电子商务领域以来，京东商城一直保持高速成长，连续六年增长率均超过200%。京东商城始终坚持以纯电子商务模式运营，缩减中间环节，为消费者在第一时间提供优质的产品及满意的服务。</p>\n<p>京东商城目前拥有遍及全国各地2500万注册用户，近6000家供应商，在线销售家电、数码通讯、电脑、家居百货、服装服饰、母婴、图书、食品等11大类数万个品牌百万种优质商品，日订单处理量超过30万单，网站日均PV超过5000万。2010年，京东商城跃升为中国首家规模超过百亿的网络零售企业，销售规模占据国内网购零售份额32.5%。</p>\n<h3>飞速发展 捷报频传</h3>\n<p>高速发展的京东商城获得了多项殊荣，&quot;中国企业未来之星&quot;、&quot;2008中国最具投资价值企业50强&quot;、&quot;年度商业模式10强&quot;、&quot;2009年度网民最喜爱的网上购物商城&quot;、&quot;2009中国最具投资价值企业50强&quot;、&quot;2009年度北京十大商业品牌&quot;、&quot;2010德勤高科技高增长中国50强&quot;等奖项的荣膺，不仅是对京东商城业绩的肯定，更是对公司未来前景的充分认可。</p>\n<h3>资本注入 势不可挡</h3>\n<p>京东商城无论在访问量、点击率、销售量及行业影响力上，均在国内B2C网购平台中首屈一指。飞速发展和广阔前景赢得了国际著名风险投资基金的青睐。2007年，京东商城获得了来自今日资本千万美元的融资。2008年底，今日资本、雄牛资本以及亚洲著名投资银行家梁伯韬先生私人公司共计2100万美元的联合注资，为京东商城的高速发展提供了资金保障。2011年初，京东商城获得俄罗斯投资者数字天空技术(DST)、老虎基金等共6家基金和社会知名人融资共计15亿美元。这是中国互联网市场迄今为止单笔金额最大的融资，说明投资者对京东商业模式和出色经营业绩的认可，对于正在发展的京东商城乃至中国电子商务行业具有非常积极的意义。</p>\n<h3>用户体验 以人为本</h3>\n<p>京东商城提供了灵活多样的商品展示空间，消费者查询、购物都将不受时间和地域的限制。依托多年打造的庞大物流体系，消费者充分享受了&quot;足不出户，坐享其成&quot;的便捷。2009年初，京东商城斥资成立物流公司,布局全国物流体系。目前，京东商城分布在华北、华东、华南、西南、华中的五大物流中心覆盖了全国各大城市，并在沈阳、西安、杭州等城市设立二级库房，仓储总面积达到50万平方米。</p>\n<p>2009年至今，京东商城陆续在天津、苏州、杭州、南京、深圳、宁波、无锡、济南、武汉、厦门等超过130座重点城市建立了城市配送站，为用户提供物流配送、货到付款、移动POS刷卡、上门取换件等服务。2010年，京东商城在北京等城市率先推出&quot;211限时达&quot;配送服务，在全国实现&quot;售后100分&q...','','商城介绍','');
INSERT INTO `news` VALUES (16,'电子书销售:“围墙花园”难打破 中国经济网','<p>数码相机发展至今，格局已经有了很大的改变，我们看到近几年单电相机的蓬勃发展，它的崛起让其他类型的相机作出了市场调整，对于厂商来说，权衡好不同类型产品线的市场份额已达到利润最大值是首要任务。而对消费者来说，数码相机市场的新格局，带来的是更多产品性能的提升，也出现了更多突破性的元素，今天我们就来总结一下，2012年里，数码相机都有了哪些转变。</p>','2017-03-19 04:56:42','新闻','201603282214110002.jpg');
INSERT INTO `news` VALUES (17,'北京三联韬奋书店2014年3月图书销售榜 凤凰网读书频道','<p>根据市场调研机构的数据，今年全球相机销售预计将下调4.3%，原因是受到手机制造商不断推出的能拍摄高分辨率照片和视频的手机产品的影响。佳能、索尼、尼康等相机制造商正努力推出新产品，以应对自2009年以来最严重的市场需求下降。相机转型之战从今年下半年全面展开</p>','2017-03-19 04:56:42','新闻','201603282214010001.jpg');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table pinlun
#

DROP TABLE IF EXISTS `pinlun`;
CREATE TABLE `pinlun` (
  `id` bigint(20) NOT NULL auto_increment,
  `saver` varchar(255) default NULL,
  `savetime` varchar(255) default NULL,
  `content` text,
  `pid` varchar(255) default NULL,
  `infotype` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Dumping data for table pinlun
#
LOCK TABLES `pinlun` WRITE;
/*!40000 ALTER TABLE `pinlun` DISABLE KEYS */;

INSERT INTO `pinlun` VALUES (2,'admin','2017-03-19 04:56:42','不错还','11','商品');
/*!40000 ALTER TABLE `pinlun` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table pros
#

DROP TABLE IF EXISTS `pros`;
CREATE TABLE `pros` (
  `id` bigint(20) NOT NULL auto_increment,
  `proshop` varchar(255) default NULL,
  `proname` varchar(255) default NULL,
  `price` varchar(255) default NULL,
  `discount` varchar(255) default NULL,
  `filename` varchar(255) default NULL,
  `bei` varchar(255) default NULL,
  `btype` varchar(255) default NULL,
  `stype` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `savetime` varchar(255) default NULL,
  `cjnum` varchar(255) default NULL,
  `fz` varchar(255) default NULL,
  `sdate` varchar(255) default NULL,
  `edate` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

#
# Dumping data for table pros
#
LOCK TABLES `pros` WRITE;
/*!40000 ALTER TABLE `pros` DISABLE KEYS */;

INSERT INTO `pros` VALUES (1,'seller01','追梦生涯','99','9','201404051044230027.bmp','    任何一款车的寿命都不会超过10年，为了抓住消费者的心，全球主流汽车厂商对旗下最紧俏的车型，更是平均每5年就要进行一次升级换代。一款30年以上的车型，只有博物馆才是它最好的归宿。让人无法理解的是，在中国，今年一季度，这款“骨灰级”车型每月还能销售一万辆以上。更神奇的是，在中国市场上可以同时买到帕萨特二代、五代、七代三款产品。','图书类','杂志','上架','2017-03-19 04:56:42','0','精美书架一个，铅笔一套','2017-01-01','2017-07-01');
INSERT INTO `pros` VALUES (2,'seller01','天地不仁，往事堪衷','108','9','201404051043330026.bmp','任何一款车的寿命都不会超过10年，为了抓住消费者的心，全球主流汽车厂商对旗下最紧俏的车型，更是平均每5年就要进行一次升级换代。一款30年以上的车型，只有博物馆才是它最好的归宿。让人无法理解的是，在中国，今年一季度，这款“骨灰级”车型每月还能销售一万辆以上。更神奇的是，在中国市场上可以同时买到帕萨特二代、五代、七代三款产品。','图书类','工具书','上架','2017-03-19 04:56:42','2','精美书架一个，铅笔一套','2017-01-01','2017-07-01');
INSERT INTO `pros` VALUES (3,'seller01','欲望米屋','77','9','201404051043010025.bmp','任何一款车的寿命都不会超过10年，为了抓住消费者的心，全球主流汽车厂商对旗下最紧俏的车型，更是平均每5年就要进行一次升级换代。一款30年以上的车型，只有博物馆才是它最好的归宿。让人无法理解的是，在中国，今年一季度，这款“骨灰级”车型每月还能销售一万辆以上。更神奇的是，在中国市场上可以同时买到帕萨特二代、五代、七代三款产品。','图书类','工具书','上架','2017-03-19 04:56:42','0','精美书架一个，铅笔一套','2017-01-01','2017-07-01');
INSERT INTO `pros` VALUES (4,'seller01','自见书','55','9','201404051042250024.bmp','任何一款车的寿命都不会超过10年，为了抓住消费者的心，全球主流汽车厂商对旗下最紧俏的车型，更是平均每5年就要进行一次升级换代。一款30年以上的车型，只有博物馆才是它最好的归宿。让人无法理解的是，在中国，今年一季度，这款“骨灰级”车型每月还能销售一万辆以上。更神奇的是，在中国市场上可以同时买到帕萨特二代、五代、七代三款产品。','图书类','工具书','上架','2017-03-19 04:56:42','2','精美书架一个，铅笔一套','2017-01-01','2017-07-01');
INSERT INTO `pros` VALUES (5,'seller01','精美小剪刀','66','9','201503141122320005.jpg','任何一款车的寿命都不会超过10年，为了抓住消费者的心，全球主流汽车厂商对旗下最紧俏的车型，更是平均每5年就要进行一次升级换代。一款30年以上的车型，只有博物馆才是它最好的归宿。让人无法理解的是，在中国，今年一季度，这款“骨灰级”车型每月还能销售一万辆以上。更神奇的是，在中国市场上可以同时买到帕萨特二代、五代、七代三款产品。','文具类','绘图类','上架','2017-03-19 04:56:42','4','精美书架一个，铅笔一套','2017-01-01','2017-07-01');
INSERT INTO `pros` VALUES (6,'seller01','彩色圆珠笔','88','9','201503141122050004.jpg','任何一款车的寿命都不会超过10年，为了抓住消费者的心，全球主流汽车厂商对旗下最紧俏的车型，更是平均每5年就要进行一次升级换代。一款30年以上的车型，只有博物馆才是它最好的归宿。让人无法理解的是，在中国，今年一季度，这款“骨灰级”车型每月还能销售一万辆以上。更神奇的是，在中国市场上可以同时买到帕萨特二代、五代、七代三款产品。','文具类','笔类','上架','2017-03-19 04:56:42','0','精美书架一个，铅笔一套','2017-01-01','2017-07-01');
INSERT INTO `pros` VALUES (7,'seller01','钢制铅笔筒','99','9','201503141121240003.jpg','任何一款车的寿命都不会超过10年，为了抓住消费者的心，全球主流汽车厂商对旗下最紧俏的车型，更是平均每5年就要进行一次升级换代。一款30年以上的车型，只有博物馆才是它最好的归宿。让人无法理解的是，在中国，今年一季度，这款“骨灰级”车型每月还能销售一万辆以上。更神奇的是，在中国市场上可以同时买到帕萨特二代、五代、七代三款产品。','文具类','笔类','上架','2017-03-19 04:56:42','3','精美书架一个，铅笔一套','2017-01-01','2017-07-01');
INSERT INTO `pros` VALUES (10,'seller01','彩色回形针','22','9','201503141120560002.jpg','“旺旺”是膨化食品类中的品牌，旺旺仙贝是其最早的产品，现在还有旺旺雪饼、旺旺厚烧海苔、还有旺旺大米饼等。国家质检总局公布2010年第二批产品质量国家监督抽查结果，其中，潍坊瑞麦食品有限公司于2010年4月18日生产的“旺旺仙贝”被查出大肠菌群超标。-----','文具类','绘图类','上架','2017-03-19 04:56:42','4','精美书架一个，铅笔一套','2017-01-01','2017-07-01');
INSERT INTO `pros` VALUES (11,'seller01','黑色铅笔','99','','201503141120300001.jpg','德芙巧克力是世界最大宠物食品和休闲食品制造商美国跨国食品公司玛氏（Mars）公司在中国推出的系列产品之一，1989年进入中国，1995年成为中国巧克力领导品牌，“牛奶香浓，丝般感受”成为经典广告语。 然而，消费者食用德芙巧克力时发现异物不是一两次。2013年1月初，有消费者反映吃德芙巧克力时发现活蛆。1月6日，德芙巧克力官方声明道歉，表示将取走该样品调查，并给予10倍价格赔偿。-----','文具类','笔类','上架','2017-03-19 04:56:42','7','精美书架一个，铅笔一套','2017-01-01','2017-07-01');
/*!40000 ALTER TABLE `pros` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table proscar
#

DROP TABLE IF EXISTS `proscar`;
CREATE TABLE `proscar` (
  `id` bigint(20) NOT NULL auto_increment,
  `uname` varchar(255) default NULL,
  `pid` varchar(255) default NULL,
  `num` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `savetime` varchar(255) default NULL,
  `pj` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201503202222110013 DEFAULT CHARSET=utf8;

#
# Dumping data for table proscar
#
LOCK TABLES `proscar` WRITE;
/*!40000 ALTER TABLE `proscar` DISABLE KEYS */;

INSERT INTO `proscar` VALUES (201503202020470007,'buyer01','11','120','已确认收货','2017-03-19 08:20:47','好评');
INSERT INTO `proscar` VALUES (201503202036060008,'buyer01','7','120','已确认收货','2017-03-19 08:36:06','好评');
INSERT INTO `proscar` VALUES (201503202211070003,'buyer01','6','100','订单已被拒绝','2017-03-19 10:11:07','好评');
INSERT INTO `proscar` VALUES (201503202211590004,'888','6','110','订单已接受并已发货','2017-03-19 10:11:59','');
INSERT INTO `proscar` VALUES (201503202220290005,'buyer01','3','100','已确认收货','2017-03-19 10:20:29','好评');
INSERT INTO `proscar` VALUES (201503202222110006,'888','3','90','订单已被拒绝','2017-03-19 10:22:11','');
INSERT INTO `proscar` VALUES (201503202222110011,'buyer01','5','123','订单已接受并已发货','2017-03-19 10:03:39','');
INSERT INTO `proscar` VALUES (201503202222110012,'buyer01','4','100','订单已接受并已发货','2017-03-19 10:29:46','');
/*!40000 ALTER TABLE `proscar` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table proscarjy
#

DROP TABLE IF EXISTS `proscarjy`;
CREATE TABLE `proscarjy` (
  `id` int(11) NOT NULL auto_increment,
  `uname` varchar(255) default NULL,
  `pid` varchar(255) default NULL,
  `num` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table proscarjy
#
LOCK TABLES `proscarjy` WRITE;
/*!40000 ALTER TABLE `proscarjy` DISABLE KEYS */;

INSERT INTO `proscarjy` VALUES (1,'buyer01','11','1');
/*!40000 ALTER TABLE `proscarjy` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table prosorder
#

DROP TABLE IF EXISTS `prosorder`;
CREATE TABLE `prosorder` (
  `id` int(11) NOT NULL auto_increment,
  `uname` varchar(255) default NULL,
  `savetime` varchar(255) default NULL,
  `prosinfo` varchar(255) default NULL,
  `toshop` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `fkstatus` varchar(255) default NULL,
  `tinfo` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

#
# Dumping data for table prosorder
#
LOCK TABLES `prosorder` WRITE;
/*!40000 ALTER TABLE `prosorder` DISABLE KEYS */;

INSERT INTO `prosorder` VALUES (21,'buyer01','2017-03-19 10:11:24','精美小剪刀-66-9-5-1','seller01','已确认收货','已付款','');
INSERT INTO `prosorder` VALUES (22,'buyer01','2017-03-19 10:30:54','天地不仁，往事堪衷-108-9-2-1','seller01','已确认收货','已付款','');
INSERT INTO `prosorder` VALUES (23,'buyer01','2017-03-19 05:33:18','彩色圆珠笔-88-9-6-1','seller01','订单已接受并已发货','已付款','');
/*!40000 ALTER TABLE `prosorder` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table splb
#

DROP TABLE IF EXISTS `splb`;
CREATE TABLE `splb` (
  `id` bigint(20) NOT NULL auto_increment,
  `tglparentid` varchar(255) default NULL,
  `datashowname` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

#
# Dumping data for table splb
#
LOCK TABLES `splb` WRITE;
/*!40000 ALTER TABLE `splb` DISABLE KEYS */;

INSERT INTO `splb` VALUES (4,'-1','食品类');
INSERT INTO `splb` VALUES (5,'4','小吃');
INSERT INTO `splb` VALUES (6,'4','进口食品');
INSERT INTO `splb` VALUES (7,'-1','电子类');
INSERT INTO `splb` VALUES (8,'-1','休闲类');
INSERT INTO `splb` VALUES (9,'-1','文具类');
INSERT INTO `splb` VALUES (10,'-1','图书类');
INSERT INTO `splb` VALUES (11,'7','笔记本');
INSERT INTO `splb` VALUES (12,'7','台式机');
INSERT INTO `splb` VALUES (13,'8','健身器材');
INSERT INTO `splb` VALUES (14,'8','玩具类');
INSERT INTO `splb` VALUES (15,'9','笔类');
INSERT INTO `splb` VALUES (16,'9','绘图类');
INSERT INTO `splb` VALUES (17,'10','工具书');
INSERT INTO `splb` VALUES (18,'10','杂志');
INSERT INTO `splb` VALUES (20,'10','小说类');
INSERT INTO `splb` VALUES (21,'7','手机');
/*!40000 ALTER TABLE `splb` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table sysuser
#

DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser` (
  `id` bigint(20) NOT NULL auto_increment,
  `uname` varchar(255) default NULL,
  `upass` varchar(255) default NULL,
  `utype` varchar(255) default NULL,
  `tname` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  `age` varchar(255) default NULL,
  `tel` varchar(255) default NULL,
  `addrs` varchar(255) default NULL,
  `filename` varchar(255) default NULL,
  `qq` varchar(255) default NULL,
  `bei` varchar(255) default NULL,
  `savetime` varchar(255) default NULL,
  `hps` int(11) default NULL,
  `status` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

#
# Dumping data for table sysuser
#
LOCK TABLES `sysuser` WRITE;
/*!40000 ALTER TABLE `sysuser` DISABLE KEYS */;

INSERT INTO `sysuser` VALUES (1,'admin','123','管理员','小胡','女','29','027-88888888','武汉下钱村','201404050953390001.jpg','3422411111','. . .','',NULL,'正常');
INSERT INTO `sysuser` VALUES (3,'buyer01','123','买家','小胡','女','27','027-88888888','五号楼五楼502','201404051100330028.jpg','342241111','...','2017-03-19 04:56:42',NULL,'正常');
INSERT INTO `sysuser` VALUES (9,'seller01','123','卖家','老王文具','女','34','02788888888','武北武汉武昌区','201503141043220003.jpg','864500852','【书城】正品惊爆折扣 最全书城特卖信息 百度品牌特卖','2017-03-19 04:56:42',8,'正常');
INSERT INTO `sysuser` VALUES (10,'seller02','123','卖家','小胡文具店','女','23','02788888888','南京市下钱西村3号','201503141043150002.jpg','864500852','云中书城,全球领先的小说下载阅读网站,提供言情小说、穿越小说、玄幻小说','2017-03-19 04:56:42',0,'正常');
INSERT INTO `sysuser` VALUES (11,'seller03','123','卖家','主营文具','女','24','02788888888','武汉下钱东村123','201503141043080001.jpg','864500852','无忧书城,提供古典、现代、外国等文学书籍以及武侠、言情、科幻、官场','2017-03-19 04:56:42',0,'正常');
INSERT INTO `sysuser` VALUES (12,'seller04','123','卖家','嵩阳书院','男','25','027-88888888','武汉下钱村','201404051028250014.bmp','864500852','书城去「京东」东,超便宜的正版图书商城,精品正版保证!做一个读书人','2017-03-19 04:56:42',0,'正常');
INSERT INTO `sysuser` VALUES (13,'seller05','123','卖家','三味书屋','男','24','02788888888','武汉光谷','201404051027550013.bmp','864500852','当当网,全球著名的网上书城,购书来当当,省钱又放心!当当网,全球领先','2017-03-19 04:56:42',0,'正常');
INSERT INTO `sysuser` VALUES (14,'seller06','123','卖家','老胡书店','女','22','02788888888','武汉光谷','201404051027210012.bmp','864500852','亚马逊的网上书店,精品图书,一网打尽!书到付款,送货上门!','2017-03-19 04:56:42',0,'正常');
INSERT INTO `sysuser` VALUES (15,'888','888','买家','小张','女','44','02788888888','北京朝阳区123号','201210281234230001.jpg','4521786','6','2017-03-19 04:56:42',NULL,'正常');
INSERT INTO `sysuser` VALUES (16,'999','999','管理员','999','女','','','','201211150900270001.png','','','2017-03-19 04:56:42',NULL,'正常');
/*!40000 ALTER TABLE `sysuser` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table yqlj
#

DROP TABLE IF EXISTS `yqlj`;
CREATE TABLE `yqlj` (
  `id` bigint(20) NOT NULL auto_increment,
  `ljname` varchar(255) default NULL,
  `ljurl` varchar(255) default NULL,
  `filename` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Dumping data for table yqlj
#
LOCK TABLES `yqlj` WRITE;
/*!40000 ALTER TABLE `yqlj` DISABLE KEYS */;

INSERT INTO `yqlj` VALUES (1,'百度','http://www.baidu.com','201207021739570007.bmp');
INSERT INTO `yqlj` VALUES (2,'google','http://www.google.com','201207021424190002.gif');
INSERT INTO `yqlj` VALUES (3,'优酷','http://www.youku.com','201207021726330001.png');
INSERT INTO `yqlj` VALUES (4,'淘宝','http://www.taobao.com','201207021729150002.png');
INSERT INTO `yqlj` VALUES (5,'支付宝','https://www.alipay.com/','201207021731270003.png');
INSERT INTO `yqlj` VALUES (6,'淘宝联盟','http://www.alimama.com/','201207021733380005.bmp');
INSERT INTO `yqlj` VALUES (7,'一淘网','http://www.etao.com/?tbpm=t','201207021735520006.png');
/*!40000 ALTER TABLE `yqlj` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
