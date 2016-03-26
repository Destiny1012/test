<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>detail</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="resource/css/detail.css">
<link rel="stylesheet" type="text/css" href="resource/css/main.css">

<script type="text/javascript" src="resource/js/jquery-2.2.1.js"></script>
<script type="text/javascript" src="resource/js/session.js"></script>

</head>

<body>
	<div class="top">
		<div class="top_box">
			<div class="login">
				欢迎来到28卡 <span> <a href="login.jsp">请登录</a> - <a
					href="user/toRegister">免费注册</a> </span>
			</div>
			<div class="right top_obtain top_index">
				<div class="nav_text">
					<a href="#">订单查询</a>
				</div>
			</div>
			<span class="right top1">|</span>
			<div class="right top_obtain top_index">
				<div class="nav_text">
					<a href="#">客服中心</a>
				</div>
			</div>
			<span class="right top1">|</span>
			<div class="right top_obtain top_index">
				<div class="nav_text">
					<a href="#">我是卖家</a>
				</div>
			</div>
			<span class="right top1">|</span>
			<div class="right top_obtain top_index">
				<div class="nav_text">
					<a href="#">我的订单</a>
				</div>
			</div>
			<span class="right top1">|</span> <span class="right top2"> <a
				href="user/toInforPer">个人中心</a> </span> <span class="right top1">|</span> <span
				class="right top3"> <a href="index.jsp">首页</a> </span>
		</div>
	</div>
	<div class="center logo">
		<div class="left">
			<a href="index.jsp"> <img src="resource/image/logo.gif"> </a>
		</div>
		<div class="right search">
			<div class="search_box">
				<div style="height: 30px;">
					<form>
						<input type="text" placeholder="请输入订单号">
						<button type="submit"></button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="navigation">
		<div class="center part">
			<ul>
				<li><a href="index.jsp">首页</a></li>
				<li><a href="user/toRegister">免费注册</a> <a href="#">使用教程</a> <a
					href="#">联系我们</a> <a href="#">企业资质</a> <a href="user/toRelease">我要发布</a></li>
				<li id="part_img"><a href="user/toList"> <img
						src="resource/image/search.png"> </a></li>
			</ul>
		</div>
	</div>
	<div class="center">
		<div class="detail">
			<div class="detail_top">
				<span>买卖信息详情</span>
			</div>
			<div class="detail_content">
				<div class="detail_title">
					<h1>【Java基础+项目实战+面试技巧】培训</h1>
					<span>更新时间: 2015-07-05 09:00</span>
				</div>
				<div class="detail_n">
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;美联科技教育秉承的是一种高强度、高深度的课程训练法，高深度的课程单凭学员自己琢磨来做项目的话没有一到两年时间是不可能达到的，美联科技教育的做法是由教师带领学员
						手把手的写代码，每一个字母、每一行程序都是由老师敲完一遍再指导学员敲第二遍，你将了解到整个项目的前后思路，并且将项目做到前所未有的深度，美联科技教育设有专门企业面试培训课程，培训学员面试技巧，帮助学员轻松找到理想工作。
						丰富的多模式教学方法，先进的多媒体教学方式，以及独特的个性化学习，使学员在掌握理论知识与工具的同时，具备良好的自学能力和个人素质，从而具备更强的实际操作技能，在求职市场上，也更具竞争力。
						美联科技教育王老师是资深互联网从业者，毕业于清华大学，后加入阿里巴巴和搜狐等知名互联网企业，参与了阿里云推荐团队的初创，曾负责和参与了云搜索，云推荐，展示广告等多款产品的设计研发和团队管理工作，项目经验丰富，讲课风趣幽默。</p>
				</div>
				<div class="detail_person">
					<table>
						<tr>
							<td width="50%">联系人：无名氏</td>
							<td width="50%">手机：13664320122</td>
						</tr>
						<tr>
							<td>QQ:1234567890</td>
							<td>E-mail:123456@163.com</td>
						</tr>
					</table>
					<span>联系时请说在28卡上看到的</span>
				</div>
			</div>
		</div>
	</div>
	<div class="foot_track">
		<div class="center">
			<ul>
				<li><img src="resource/image/fuwu_1.png"></li>
				<li><img src="resource/image/fuwu_2.png"></li>
				<li><img src="resource/image/fuwu_3.png"></li>
				<li><img src="resource/image/fuwu_4.png"></li>
			</ul>
		</div>
	</div>
	<div class="foot">
		<div class="center foot_font">
			<a href="index.jsp" class="hs"> 首 页 </a> | <a href="#" class="hs">
				 关于我们 </a> | <a href="#" class="hs"> 联系我们 </a> | <a href="#" class="hs">
				 免责声明 </a> | <a href="#" class="hs"> 商务合作 </a> | <a href="#" class="hs"> 诚聘英才 </a>
			| <a href="#" class="hs"> 注册28发卡前必读 </a> | <a href="#" class="hs"> 公司资质 </a><br>
			Copyright Reserved 2008-2014 © <a href="#" class="hs">www.28ka.com</a>
			 盐城启迅网络科技有限公司 <a href="#" class="hs"> 软件著作权证登记号：2014SR085501</a><br>
			<a href="#" class="hs">工业和信息化部备案号: 苏ICP备14006047号</a> <a href="#"
				class="hs"> 增值电信业务经营许可证：苏B2-20140287</a> <a href="#" class="hs">
				苏B1-20140103 </a><br> <span style="color: #ff4444">本平台仅为商品寄售平台工具，不具备任何API类支付接口功能，不提供任何支付网关服务，本身不参与任何实际经营活动
			</span><br> 企业QQ：4000002462 客服热线：0515-80980799 举报邮箱：jubao@qixunka.com<br>
			法律顾问：厚普律师事务所-徐益峰<br> <span style="color: #ff0000">友情链接： </span>
			<a href="#" style="color: #ff0000;" class="hs">游戏点卡商城</a> | <a
				href="#" style="color: #ff0000;" class="hs">点卡回收平台</a> | <a href="#"
				style="color: #ff0000;" class="hs">点卡商城</a> | <a href="#"
				style="color: #ff0000;" class="hs">自动发卡平台</a>
		</div>
	</div>
</body>
</html>
