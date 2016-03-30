<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>information-order</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="resource/css/information.css">
<link rel="stylesheet" type="text/css" href="resource/css/main.css">
<link href="resource/plugins/qq/css/sucaijiayuan.css" type="text/css"
	rel="stylesheet">
<script type="text/javascript" src="resource/js/jquery-2.2.1.js"></script>
<script src="resource/plugins/qq/js/sucaijiayuan.js"
	type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$.ajax({
		type : "get",
		url : "page/checkLogin",
		dataType : "json",
		success : function(data) {
			if (data.result == "true") {
				/* window.location.href = "information/infoOrd"; */
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
				您好, <a href="page/toInforPer">用户名</a> <a href="#"
					style="color: #333;">退出</a>
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
				href="page/toInforPer">个人中心</a> </span> <span class="right top1">|</span> <span
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
	<div style="border: 1px solid #dfdfdf;clear: both;"></div>
	<div class="center">
		<div class="information_left left">
			<ul>
				<li><h2>个人中心</h2></li>
				<li><a href="page/toInforPer">基础信息</a></li>
				<li><a href="page/toInforUp">修改信息</a></li>
				<li><a href="page/toInforPas">密码修改</a></li>
			</ul>
			<ul>
				<li><h2>我的订单</h2></li>
				<li><a href="information/infoOrd" class="check">全部订单</a></li>
				<li><a href="information/infoHan">已购买订单</a></li>
				<li><a href="information/infoUnh">待处理订单</a></li>
			</ul>
			<ul>
				<li>
					<h2>我的发布</h2></li>
				<li><a href="information/infoAll">全部发布</a></li>
				<li><a href="information/infoRel">已发布订单</a></li>
				<li><a href="information/infoAud">待审核订单</a></li>
			</ul>
		</div>
		<div class="information_right right">
			<div class="information">
				<div class="information_title">*修改信息</div>
				<div class="information_top">
					<span>用户名</span>
				</div>
				<div class="information_list">
					<table>
						<thead>
							<tr>
								<td width="65%">标题</td>
								<td width="35%">时间</td>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="list" var="information" status="st">
								<tr>
									<td>
										<s:property value="#information.bt"/>
									</td>
									<td>
										<s:property value="#information.fbsj"/>
									</td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
					<div>${pageBar}</div>
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
	<!-- 代码 开始 -->
	<div class="scrollsidebar" id="scrollsidebar">
		<div class="side_content">
			<div class="side_list">
				<div class="side_title">
					<a title="隐藏" class="close_btn"><span>关闭</span> </a>
				</div>
				<div class="side_center">
					<div class="custom_service">
						<p>
							<a title="点击这里给我发消息"
								href="http://wpa.qq.com/msgrd?v=3&amp;uin=729670773&amp;site=www.cactussoft.cn&amp;menu=yes"
								target="_blank"><img
								src="http://wpa.qq.com/pa?p=2:729670773:41"> </a>
						</p>
					</div>
					<div class="other">
						<p>
							<img src="resources/plugins/qq/images/qrcode.jpg" />
						</p>
						<p>客户服务热线</p>
						<p>130-0000-0000</p>
					</div>
					<div class="msgserver">
						<p>
							<a href="http://www.sucaijiayuan.com">给我们留言</a>
						</p>
					</div>
				</div>
				<div class="side_bottom"></div>
			</div>
		</div>
		<div class="show_btn">
			<span>在线客服</span>
		</div>
	</div>
	<!-- 代码 结束 -->
	<script type="text/javascript">
		$(function() {
			$("#scrollsidebar").fix({
				float : 'right', //default.left or right
				//minStatue : true,
				skin : 'blue', //green or blue
				durationTime : 600
			});
		});
	</script>
</body>
</html>
