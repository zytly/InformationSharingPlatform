/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : sechandmall

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2019-05-11 14:34:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for changes
-- ----------------------------
DROP TABLE IF EXISTS `changes`;
CREATE TABLE `changes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `nostatus` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `pbei` varchar(255) DEFAULT NULL,
  `touname` varchar(255) DEFAULT NULL,
  `topid` varchar(255) DEFAULT NULL,
  `topname` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201503202223470009 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of changes
-- ----------------------------
INSERT INTO `changes` VALUES ('201503202003110006', 'buyer01', '一本好书', '八成新', '201503202003100005.jpg', '很好看', 'seller01', '10', '彩色回形针', '已成交', '2017-03-19 08:03:11');
INSERT INTO `changes` VALUES ('201503202223470008', 'buyer01', '我有本书', '八成', '201503202223460007.jpg', '很好看', 'seller01', '1', '追梦生涯', '已拒绝', '2017-03-19 10:23:47');

-- ----------------------------
-- Table structure for compl
-- ----------------------------
DROP TABLE IF EXISTS `compl`;
CREATE TABLE `compl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `touname` varchar(255) DEFAULT NULL,
  `pcontent` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `recont` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201503202149050003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of compl
-- ----------------------------
INSERT INTO `compl` VALUES ('201503202149050002', 'seller01', 'seller01', '不发货给我', '201503202149040001.jpg', '我封了他', '2017-03-19 09:49:05');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `saver` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `content` text,
  `recontent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES ('5', 'admin', '2019-05-11 09:50:42', '21132144', '好的');
INSERT INTO `messages` VALUES ('6', 'buyer01', '2019-05-11 12:59:44', '跪求北大计算专业课机考资料', '发你QQ邮箱了');
INSERT INTO `messages` VALUES ('7', 'admin', '2019-05-11 01:04:27', '好的提供下百度网盘地址，分享给你', '');

-- ----------------------------
-- Table structure for minfo
-- ----------------------------
DROP TABLE IF EXISTS `minfo`;
CREATE TABLE `minfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `tname` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `savetime` varchar(255) DEFAULT NULL,
  `infotype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of minfo
-- ----------------------------
INSERT INTO `minfo` VALUES ('1', 'buyer01', '小胡', '027-88888888', '我有一件毛衣要捐出去', '<p>我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去我有一件毛衣要捐出去</p>', '2017-03-18 05:21:06', '爱心');
INSERT INTO `minfo` VALUES ('3', '888', '小张', '02788888888', '联想笔记本', '<h2>&nbsp;石家庄铁道大学软件工程</h2>', '2019-05-10 11:34:50', '爱心');
INSERT INTO `minfo` VALUES ('4', 'buyer01', '小胡', '027-88888888', '求购河北工业大学人工智能专业课资料', '<p>&nbsp;本人石家庄铁道16级大学学生，想报考河工大人工智能专业的专硕，求提供学习资料。</p>\r\n<p>联系电话：15176107396</p>\r\n<p>QQ:2267821028</p>', '2019-05-11 01:02:47', '求购');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `savetime` varchar(255) DEFAULT NULL,
  `infotype` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('3', '', '<p>石家庄铁道大学软件工程系</p>\r\n<p>电话：（8610）6272xxxx7</p>\r\n<p>传真：（8610）68873201</p>\r\n<p>联系人：徐先生</p>\r\n<p>邮箱：8525555@qq.com</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '', '联系我们', '');
INSERT INTO `news` VALUES ('4', '', '<h3 style=\"color: red;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;考研资料共享平台目前处于试运行状态，如有不足之处欢迎大家提出宝贵的意见，以便我们及时修改！！！！</h3>', '', '公告', '');
INSERT INTO `news` VALUES ('15', '', '<h2>专注考研领域</h2>\r\n<h2><span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft yahei&quot;; text-align: center;\">摒弃庞杂、纷乱的信息堆积方式，我们遵从便捷悦用，删繁就简，真正致力于考研领域，为学子提供最新、最有用的信息及备考资料。</span></h2>\r\n<h2>整合优质资讯</h2>\r\n<h2><span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft yahei&quot;; text-align: center;\">从海量的信息资源中，提取对考研复习最有效、最专业的资讯，大大节省复习时间。满满干货、篇篇精品，让您的阅读变得更具价值。</span></h2>\r\n<h2>提供专业资料&nbsp;</h2>\r\n<h2><span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft yahei&quot;; text-align: center;\">考研真题权威全面，资料检索方便快捷。提供专业课历年真题、笔记、视频让复习如虎添翼；配套答案详解，让困惑不再、信心满满。</span></h2>\r\n<h2>引入社区互动</h2>\r\n<h2><span style=\"color: rgb(153, 153, 153); font-family: &quot;Microsoft yahei&quot;; text-align: center;\">开放发表权限，分享个人观点，讨论复习方案，寻求经验指导，不止你一个人在奋斗！即时的沟通渠道，让遇见志同道合的TA更简单。</span></h2>\r\n<p>&nbsp;</p>', '', '商城介绍', '');
INSERT INTO `news` VALUES ('18', '石家庄铁道大学土木工程研究生招生信息网', '<p>&nbsp;<span style=\"color: rgb(51, 51, 51); font-family: \" microsoft=\"\">石家庄铁道大学2018年接收推荐免试研究生工作办法</span></p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　根据河北省招生委员会《关于做好河北省2018年推荐优秀应届本科毕业生免试攻读研究生工作的通知》(冀教考研招〔2017〕6号)文件精神，2018年我校接收优秀应届本科毕业生免试攻读全日制硕士学位研究生的专业目录和招收名额见《石家庄铁道大学2018年接收推荐免试攻读全日制硕士研究生专业目录》，具体实施办法如下：</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　<strong style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent;\">一、接收条件和奖助</strong></p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　1.具有为共产主义远大理想和中国特色社会主义共同理想而奋斗的信念和信心，坚定的时代责任感和历史使命感，模范践行社会主义核心价值观，品德良好，成绩优秀，遵纪守法，无任何违法违纪或受处分记录。</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　2.具有推荐免试资格的优秀应届本科毕业生，且身体健康状况符合国家规定的体检要求。</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　3.被我校录取的推免生正式报到后，即享受优秀生源奖助，每人一次性奖励30000元。国家助学金、国家奖学金、学业奖学金等其他奖助贷政策标准执行《石家庄铁道大学全日制研究生奖助办法(试行)》(研究生学院网站提供下载)。</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　<strong style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent;\">　二、申请程序</strong></p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　1.2017年9月28日~10月25日期间，申请人登陆&ldquo;推免服务系统&rdquo;网上报名(网址:http://yz.chsi.com.cn/tm)，按系统要求如实提交个人信息。</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　2.接到我校复试通知后，申请人须按时参加我校复试(综合面试)，复试时须提交以下材料：</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　① 本科阶段1-6学期的成绩单原件(须加盖教务部门公章);</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　② 本人自述(包括思想政治表现、学习情况、社会活动和实践、对所申请专业的了解和认识等内容，不超过1000字);</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　③ 体检证明(本科就读学校医院或市级医院出具);</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　以下材料复试时须携带原件，以备核实。</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　④ 身份证复印件和学生证复印件;</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　⑤ 各种奖励证书或荣誉证书复印件;</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　⑥ 发表的高水平学术论文、知识产权、创新性成果证明材料复印件。</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　3.我校向复试合格的学生发送待录取通知。</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　4.收到待录取通知的学生须在规定时间内接受待录取，否则取消待录取资格。</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　<strong style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent;\">三、其他</strong></p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　1.申请人在本科阶段7-8学期学习成绩有不及格科目，或受到纪律处分，或政审、体检不合格的，取消录取资格。</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　2.我校确定接收的推免生，在2018年9月入学报到时未获得学士学位证书及毕业证书的，学校将取消其录取资格。</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　3.被我校接收的推免生不得再报名参加全国硕士研究生入学考试。</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　4.申请人应提供真实、准确和符合要求的材料，如有弄虚作假，一经发现立即取消录取资格。</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　<strong style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent;\">四、联系方式：</strong></p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　单位名称：石家庄铁道大学 单位代码：10107</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　联系地址：石家庄市北二环东路17号石家庄铁道大学研究生招生办公室(第五教学楼113室)，邮编：050043。</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　联系电话：0311-87935136</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　电子邮箱：yanzhaoban@stdu.edu.cn</p>\r\n<p style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; text-indent: 2em; color: rgb(51, 51, 51); font-family: \" microsoft=\"\">　　附件：<a href=\"http://free.eol.cn/download/gwy/2018sjz.doc\" style=\"margin: 0px; padding: 0px; list-style: none; -webkit-tap-highlight-color: transparent; color: rgb(51, 51, 51); text-decoration-line: none;\">石家庄铁道大学2018年接收推荐免试攻读硕士研究生专业目录</a></p>', '2019-05-11 11:29:46', '新闻', '201905111151180006.jpg');
INSERT INTO `news` VALUES ('19', '北京大学研究生招生信息', '<p>&nbsp;关于北京大学 2019 年管理类联考考生思想政治理论课考试的通知 根据教育部有关文件要求和《北京大学 2019 年硕士研究生招生复试与录取工 作有关规定》，现将管理类联考考生思想政治理论课考试的有关事项通知如下： 一、范围与形式 1、范围： （1）马克思主义基本原理。 （2）毛泽东思想和中国特色社会主义理论体系概论（含习近平新时代中国特 色社会主义思想）。 2、题型：简答题与论述题。 3、形式：闭卷，笔试。 二、考生与专业 1、参加了相应院系面试并通过的考生【工商管理硕士（不含高级管理人员工 商管理硕士<emba>）、工程管理硕士】； 2、达到我校相应复试分数线的考生【公共管理硕士、会计硕士、审计硕士】； 注：所有考生须凭准考证和本人有效居民身份证参加考试。 三、时间与地点 1、时间：2019 年 3 月 16 日（周六）上午 9:00-11:00。 2、地点*：北京大学第三教学楼、深圳研究生院 *为方便考生参加考试，学校在深圳研究生院增设了考场，需要在深圳参加考试的，请务 必于 3 月 8 日 12:00 之前向报考院系教务办公室提出书面申请，逾期未申请者请到北京大学 第三教学楼参加考试。 具 体 教 室 安 排 请 于 3 月 15 日 见 北 京 大 学 研 究 生 招 生 网 （ 网址： https://admission.pku.edu.cn）的有关通知。 北京大学研究生招生办公室 2019 年 3 月 5 日</emba></p>', '2019-05-11 12:38:47', '新闻', '201905111238460004.jpg');
INSERT INTO `news` VALUES ('20', '燕山大学', '<p>&nbsp;<span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 16px; text-align: justify; text-indent: 2em;\">燕山大学是河北省人民政府、教育部、工业和信息化部、国家国防科技工业局四方共建的全国重点大学，河北省重点支持的国家一流大学和世界一流学科建设高校，北京高科大学联盟成员。</span></p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; width: 835px; color: rgb(51, 51, 51); font-size: 16px; line-height: 30px; text-indent: 2em; font-family: &quot;Microsoft YaHei&quot;; text-align: justify;\">学校源于哈尔滨工业大学，始建于1920年。1958年哈尔滨工业大学重型机械系及相关专业成建制迁至工业重镇齐齐哈尔市富拉尔基区，组建了哈尔滨工业大学重型机械学院。1960年独立办学，定名为东北重型机械学院，成为原机械工业部直属高校。1978年被确定为全国重点高等院校。1985年至1997年学校整体南迁秦皇岛市。1997年经原国家教委批准，更名为燕山大学。1998年，由原机械工业部划转到河北省，实行中央与地方共建，以河北省管理为主。2000年，河北轻工业管理学校并入燕山大学。</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; width: 835px; color: rgb(51, 51, 51); font-size: 16px; line-height: 30px; text-indent: 2em; font-family: &quot;Microsoft YaHei&quot;; text-align: justify;\">2016年，作为教育部选定的两所高校之一，学校的工程专业国家认证接受了《华盛顿协议》国际专家的观摩考察，支撑我国正式加入《华盛顿协议》国际工程教育组织。学校现有9个工科专业通过工程教育专业认证，标志着这些专业的人才培养质量得到国际认同，进入全球工程教育的&ldquo;第一方阵&rdquo;。</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; width: 835px; color: rgb(51, 51, 51); font-size: 16px; line-height: 30px; text-indent: 2em; font-family: &quot;Microsoft YaHei&quot;; text-align: justify;\">学校占地面积4000亩，建筑面积106万平方米。现有普通高等教育在校生38000人。现有教职工3200人，其中专职教师2200人，教师中教授481人（含博士生导师234人），副教授641人。有中国科学院院士1人，国家&ldquo;千人计划&rdquo;入选者5人，国家&ldquo;万人计划&rdquo;入选者4人，长江学者奖励计划特聘教授8人，国家杰出青年科学基金获奖者9人。</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; width: 835px; color: rgb(51, 51, 51); font-size: 16px; line-height: 30px; text-indent: 2em; font-family: &quot;Microsoft YaHei&quot;; text-align: justify;\">学校设有11个博士后流动站，14个博士学位一级学科，1个专业博士学位类别（工程博士），33个硕士学位一级学科，11个专业硕士学位类别，17个工程硕士授权领域，64个本科专业，已形成以工学为主，文学、理学、经济学、管理学、法学、艺术学、哲学、教育学等9个学科门类共同发展的学科格局；拥有5个国家重点学科、5个国防特色学科和16个省级重点学科，工程学、材料科学、化学3个学科进入ESI排名全球前1%。在全国第四轮学科评估中，8个学科获得B类以上评估结果，其中机械工程为A类，全国排名前10%，材料科学与工程为B+，全国排名前20%。</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; width: 835px; color: rgb(51, 51, 51); font-size: 16px; line-height: 30px; text-indent: 2em; font-family: &quot;Microsoft YaHei&quot;; text-align: justify;\">学校设有研究生院和18个直属学院，即机械工程学院、材料科学与工程学院、电气工程学院、信息科学与工程学院（软件学院）、经济管理学院、外国语学院、建筑工程与力学学院、文法学院（公共管理学院）、马克思主义学院、理学院、环境与化学工程学院、艺术与设计学院、车辆与能源学院、体育学院、里仁学院、国防科学技术学院、国际教育学院和继续教育学院。</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; width: 835px; color: rgb(51, 51, 51); font-size: 16px; line-height: 30px; text-indent: 2em; font-family: &quot;Microsoft YaHei&quot;; text-align: justify;\">学校建有亚稳材料制备技术与科学国家重点实验室、冷轧板带装备及工艺国家工程技术研究中心、先进制造成形技术及装备国家地方联合工程研究中心、极端条件下机械结构和材料科学国防重点学科实验室、国家创新人才培养示范基地、国际科技合作基地、省部共建协同创新中心、国家技术转移示范机构、3个河北省协同创新中心以及43个省部级重点实验室、工程技术研究中心和社会科学研究基地；设有国家大学科技园和燕山大学出版社。</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; width: 835px; color: rgb(51, 51, 51); font-size: 16px; line-height: 30px; text-indent: 2em; font-family: &quot;Microsoft YaHei&quot;; text-align: justify;\">学校在重型机械成套设备、亚稳材料科学与技术、并联机器人理论与技术、流体传动与电液伺服控制技术、工业自动化控制理论与技术、精密塑性成型技术、大型锻件锻造工艺与热处理技术、极端条件下机械结构与材料科学等研究领域具有国际先进水平。2000年以来，学校连续获得国家科技奖励19项，其中国家科技进步一等奖2项、二等奖9项、国家技术发明二等奖4项、国家自然科学二等奖4项，承担&ldquo;973&rdquo;、&ldquo;863&rdquo;、国家重点研发计划、国家自然科学基金和国家社会科学基金项目970项。2013年和2014年，学校连续有2项科研成果入选&ldquo;中国科学十大进展&rdquo;和&ldquo;中国高校十大科技进展&rdquo;。</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; width: 835px; color: rgb(51, 51, 51); font-size: 16px; line-height: 30px; text-indent: 2em; font-family: &quot;Microsoft YaHei&quot;; text-align: justify;\">学校积极开展国际间的学术交流合作，共与英国、美国、加拿大、德国、俄罗斯、法国、韩国、日本等20多个国家和地区的80余所国际高水平大学、科研机构建立了友好合作关系，在学生交流、教师交流、科研合作、合作办学、联办会议等领域开展国际交流与合作。</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; width: 835px; color: rgb(51, 51, 51); font-size: 16px; line-height: 30px; text-indent: 2em; font-family: &quot;Microsoft YaHei&quot;; text-align: justify;\">以服务国家装备制造业、战略性新兴产业、国防科技工业和区域经济社会发展为己任，燕山大学4万余名师生员工意气风发，解放思想，锐意进取，科学发展，正努力把学校建设成为&ldquo;特色鲜明的一流大学&mdash;&mdash;具有机械、材料等世界一流学科，学研产协同和军民融合发展办学特色的中国一流大学&rdquo;而努力奋斗。</p>\r\n<p class=\"vsbcontent_end\" style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; width: 835px; color: rgb(51, 51, 51); font-size: 16px; line-height: 30px; text-indent: 2em; font-family: &quot;Microsoft YaHei&quot;; text-align: justify;\">(2019年3月更新)</p>', '2019-05-11 12:42:28', '新闻', '201905111242260005.jpg');

-- ----------------------------
-- Table structure for pinlun
-- ----------------------------
DROP TABLE IF EXISTS `pinlun`;
CREATE TABLE `pinlun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `saver` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `content` text,
  `pid` varchar(255) DEFAULT NULL,
  `infotype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pinlun
-- ----------------------------
INSERT INTO `pinlun` VALUES ('2', 'admin', '2017-03-19 04:56:42', '不错还', '11', '商品');
INSERT INTO `pinlun` VALUES ('3', 'buyer01', '2019-05-11 10:45:21', '留言', '12', '商品');

-- ----------------------------
-- Table structure for pros
-- ----------------------------
DROP TABLE IF EXISTS `pros`;
CREATE TABLE `pros` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `proshop` varchar(255) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `bei` varchar(255) DEFAULT NULL,
  `btype` varchar(255) DEFAULT NULL,
  `stype` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `cjnum` varchar(255) DEFAULT NULL,
  `fz` varchar(255) DEFAULT NULL,
  `sdate` varchar(255) DEFAULT NULL,
  `edate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pros
-- ----------------------------
INSERT INTO `pros` VALUES ('13', 'seller01', '12', '123', '', '201905111215500002.jpg', '124', '公共课', '', '下架', '2019-05-11 12:15:52', '0', '哈', '2019-05-13', '2019-10-23');
INSERT INTO `pros` VALUES ('14', 'seller01', '文都网校视频', '100', '', '201905111250330001.png', '政治 英语 数学 三科视频', '公共课', '', '上架', '2019-05-11 12:50:35', '0', '附赠考研真题', '2019-05-07', '2020-01-17');
INSERT INTO `pros` VALUES ('15', 'seller01', '2020汤家凤1800题', '10', '', '201905111256090002.png', '020汤家凤1800题数学二 考研数学接力题典1800 数二文都考研数学1800题 汤家凤数2搭李永乐复习全书', '公共课', '', '上架', '2019-05-11 12:56:10', '0', '无', '2019-05-07', '2019-08-15');
INSERT INTO `pros` VALUES ('16', 'seller01', '计算机408专业课', '50', '', '201905111257300003.png', '经典专业课', '图书类', '', '上架', '2019-05-11 12:57:31', '0', '无', '2019-04-30', '2020-05-06');

-- ----------------------------
-- Table structure for proscar
-- ----------------------------
DROP TABLE IF EXISTS `proscar`;
CREATE TABLE `proscar` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `pj` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201503202222110013 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of proscar
-- ----------------------------

-- ----------------------------
-- Table structure for proscarjy
-- ----------------------------
DROP TABLE IF EXISTS `proscarjy`;
CREATE TABLE `proscarjy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of proscarjy
-- ----------------------------

-- ----------------------------
-- Table structure for prosorder
-- ----------------------------
DROP TABLE IF EXISTS `prosorder`;
CREATE TABLE `prosorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `prosinfo` varchar(255) DEFAULT NULL,
  `toshop` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `fkstatus` varchar(255) DEFAULT NULL,
  `tinfo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prosorder
-- ----------------------------
INSERT INTO `prosorder` VALUES ('21', 'buyer01', '2017-03-19 10:11:24', '精美小剪刀-66-9-5-1', 'seller01', '已确认收货', '已付款', '');
INSERT INTO `prosorder` VALUES ('22', 'buyer01', '2017-03-19 10:30:54', '天地不仁，往事堪衷-108-9-2-1', 'seller01', '已确认收货', '已付款', '');
INSERT INTO `prosorder` VALUES ('23', 'buyer01', '2017-03-19 05:33:18', '彩色圆珠笔-88-9-6-1', 'seller01', '订单已接受并已发货', '已付款', '');
INSERT INTO `prosorder` VALUES ('24', 'buyer01', '2019-05-11 10:46:22', '黑色铅笔-99--11-1,21-132--12-1', 'seller01', '待受理', '未付款', '');

-- ----------------------------
-- Table structure for splb
-- ----------------------------
DROP TABLE IF EXISTS `splb`;
CREATE TABLE `splb` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tglparentid` varchar(255) DEFAULT NULL,
  `datashowname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of splb
-- ----------------------------
INSERT INTO `splb` VALUES ('4', '-1', '食品类');
INSERT INTO `splb` VALUES ('5', '4', '小吃');
INSERT INTO `splb` VALUES ('6', '4', '进口食品');
INSERT INTO `splb` VALUES ('7', '-1', '电子类');
INSERT INTO `splb` VALUES ('8', '-1', '休闲类');
INSERT INTO `splb` VALUES ('9', '-1', '文具类');
INSERT INTO `splb` VALUES ('10', '-1', '图书类');
INSERT INTO `splb` VALUES ('11', '7', '笔记本');
INSERT INTO `splb` VALUES ('12', '7', '台式机');
INSERT INTO `splb` VALUES ('21', '7', '手机');
INSERT INTO `splb` VALUES ('22', '-1', '公共课');
INSERT INTO `splb` VALUES ('23', '22', '数学');
INSERT INTO `splb` VALUES ('24', '22', '英语');

-- ----------------------------
-- Table structure for sysuser
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `upass` varchar(255) DEFAULT NULL,
  `utype` varchar(255) DEFAULT NULL,
  `tname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `addrs` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `bei` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `hps` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysuser
-- ----------------------------
INSERT INTO `sysuser` VALUES ('1', 'admin', '123', '管理员', '小胡', '女', '29', '027-88888888', '武汉下钱村', '201905111210490001.jpg', '3422411111', '超级权限', '', null, '正常');
INSERT INTO `sysuser` VALUES ('3', 'buyer01', '123', '买家', '小胡', '女', '27', '027-88888888', '五号楼五楼502', '201404051100330028.jpg', '342241111', '...', '2017-03-19 04:56:42', null, '正常');
INSERT INTO `sysuser` VALUES ('13', 'seller01', '123', '卖家', '三味书屋', '男', '24', '02788888888', '武汉光谷', '201404051027550013.bmp', '864500852', '当当网,全球著名的网上书城,购书来当当,省钱又放心!当当网,全球领先', '2017-03-19 04:56:42', '0', '正常');
INSERT INTO `sysuser` VALUES ('16', '999', '666', '管理员', '张运涛', '男', '21', '15176107396', '河北省石家庄市', '201905111109290001.jpg', '85822622224', '无', '2017-03-19 04:56:42', null, '正常');
INSERT INTO `sysuser` VALUES ('17', '畅玩博客', '123456', '买家', '张运涛', '男', '21', '15176107396', '河北省石家庄市铁道大学软件工程系', '201905111110320002.jpg', '2267821028', '暂无', '2019-05-10 11:21:35', '0', '姝ｅ父');

-- ----------------------------
-- Table structure for yqlj
-- ----------------------------
DROP TABLE IF EXISTS `yqlj`;
CREATE TABLE `yqlj` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ljname` varchar(255) DEFAULT NULL,
  `ljurl` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqlj
-- ----------------------------
INSERT INTO `yqlj` VALUES ('1', '百度', 'http://www.baidu.com', '201207021739570007.bmp');
INSERT INTO `yqlj` VALUES ('2', 'google', 'http://www.google.com', '201207021424190002.gif');
INSERT INTO `yqlj` VALUES ('7', '研招网', 'https://yz.chsi.com.cn/', '201905111136490004.png');
INSERT INTO `yqlj` VALUES ('8', '清华大学', 'http://www.tsinghua.edu.cn/publish/thu2018/index.html', '201905111139080005.png');
INSERT INTO `yqlj` VALUES ('9', '石家庄铁道大学', 'http://www.stdu.edu.cn/', '201905111153580007.jpg');
INSERT INTO `yqlj` VALUES ('10', '河北科技大学', 'http://www.hebust.edu.cn/', '201905111234540003.png');
