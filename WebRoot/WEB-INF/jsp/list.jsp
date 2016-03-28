<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>list</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="resource/css/list.css">
<link rel="stylesheet" type="text/css" href="resource/css/main.css">

<script type="text/javascript" src="resource/js/jquery-2.2.1.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$.ajax({
		type : "get",
		url : "page/checkLogin",
		dataType : "json",
		success : function(data) {
			if (data.result == "true") {
				/* window.location.href = "information/list"; */
			} else {
				window.location.href = "page/toLogin";
			}
		}
	});
});
</script>

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
				<li><a href="index.jsp">首页</a>
				</li>
				<li><a href="user/toRegister">免费注册</a> <a href="#">使用教程</a> <a
					href="#">联系我们</a> <a href="#">企业资质</a> <a href="user/toRelease">我要发布</a>
				</li>
				<li id="part_img"><a href="user/toList"> <img
						src="resource/image/search.png"> </a>
				</li>
			</ul>
		</div>
	</div>
	<div class="center">
		<div class="list">
			<div class="list_top">
				<span>买卖信息列表</span>
			</div>
			<div>
				<ul class="list_n">
					<s:iterator value="list" var="information" status="st">
						<li><a href="information/listDetail?id=1">
								<!-- <s:hidden value="#information.id"></s:hidden> -->
								<h1>
									<s:property value="#information.bt" />
								</h1> <span><s:property value="#information.fbsj" /> </span>
								<p>
									<s:property value="#information.nr" />
								</p> </a>
						</li>
					</s:iterator>
				</ul>
				<div>${pageBar}</div>
			</div>
		</div>
	</div>
	<div class="foot_track">
		<div class="center">
			<ul>
				<li><img src="resource/image/fuwu_1.png">
				</li>
				<li><img src="resource/image/fuwu_2.png">
				</li>
				<li><img src="resource/image/fuwu_3.png">
				</li>
				<li><img src="resource/image/fuwu_4.png">
				</li>
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
