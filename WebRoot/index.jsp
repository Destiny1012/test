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

<title>index</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="resource/css/index.css">
<link rel="stylesheet" type="text/css" href="resource/css/main.css">
<link href="resource/plugins/qq/css/sucaijiayuan.css" type="text/css"
	rel="stylesheet">
<script type="text/javascript" src="resource/js/jquery-2.2.1.js"></script>
<script src="resource/plugins/qq/js/sucaijiayuan.js"
	type="text/javascript"></script>
<script type="text/javascript" src="resource/plugins/code/vCode.js"></script>
<script type="text/javascript">
	window.onload = function() {
		var container2 = document.getElementById("vCode2");
		var code2 = new vCode(container2, {
			len : 4,
			bgColor : "#444444",
			colors : [ "#DDDDDD", "#DDFF77", "#77DDFF", "#99BBFF",
			//"#7700BB",
			"#EEEE00" ]
		});
		document.getElementById("btn2").addEventListener("click", function() {
			alert(code2.verify(document.getElementById("code2").value));
		}, false);
	};
</script>
</head>

<body>
	<div class="top">
		<div class="top_box">
			<div class="login">
				<s:if test="#session.email != null">
					您好,
					<a href="page/toInforPer">${email}</a>
					<a href="#" style="color: #333;">退出</a>
				</s:if>
				<s:else>
					欢迎来到28
					<a href="page/toLogin">请登录</a>
					-
					<a href="page/toRegister">免费注册</a>
				</s:else>
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
			<span class="right top1">|</span> <span id="try" class="right top2">
				<a href="page/toInforPer">个人中心</a> </span> <span class="right top1">|</span>
			<span class="right top3"> <a href="index.jsp">首页</a> </span>
		</div>
	</div>
	<div class="center logo">
		<div class="left">
			<a href="#"> <img src="resource/image/logo.gif"> </a>
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
				<li><a class="menu_on" href="index.jsp">首页</a></li>
				<li><a href="page/toRegister">免费注册</a> <a href="#">使用教程</a> <a
					href="#">联系我们</a> <a href="#">企业资质</a> <a href="page/toRelease">我要发布</a>
				</li>
				<li id="part_img"><a href="information/list"> <img
						src="resource/image/search.png"> </a></li>
			</ul>
		</div>
	</div>
	<div class="center">
		<div class="ad">
			<div class="focus">
				<img src="resource/image/focus.jpeg">
			</div>
			<div class="news">
				<div class="news_left">最新动态</div>
				<div class="news_right">
					<span class="ico"></span>
					<div class="news_c">
						<ul>
							<li><a href="#">为什么选择我们28ka？:</a> <span>资金何来保障？用户价值何以体现？</span>
							</li>
							<li><a href="#">28卡全新发卡体验:</a> <span>带给您的不止是服务</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="list_btn">
			<div class="title_btn">
				<a class="a1" href="page/toRegister"></a> <a class="a2"
					href="page/toLogin"></a> <a class="a3" href="#"></a>
			</div>
			<form class="form_btn" action="user/loginUser">
				<ul>
					<li><input type="text" name="email" placeholder="请输入用户名/Email">
					</li>
					<li><input type="password" name="password"
						placeholder="请输入登陆密码"></li>
					<li><input type="text" placeholder="请输入验证码"
						style="width: 120px;"> <!-- <img src="#"
						style="vertical-align: middle; width: 70px; height: 23px;"> -->
						<div id="vCode2"
							style="vertical-align: middle; width:100px; height: 30px; line-height:30px;border: 1px solid #ccc; display: inline-block;"></div>
					</li>
					<li><input type="image" src="resource/image/login_1.png"
						style="float: left; margin-top: 5px; width: 120px; height: 37px; box-shadow: none; border: none;">
						<a href="#"
						style="float:left; margin-left: 5px; color: #444; line-height: 45px;">忘记密码</a>
					</li>
				</ul>
			</form>
			<div class="footer_btn">
				<ul>
					<li><i class="safe"></i> <a href="#">交易安全</a> <br> 专业平台保障
						安全无忧</li>
					<li style="margin-top: 0;"><i class="release"></i> <a href="#">自动发卡</a>
						<br> 极速发货体验 即买即发</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="center">
		<div class="content">
			<div class="content_tab">
				<img src="resource/image/tab.jpeg"
					style="width: 676px; height: 267px;">
			</div>
			<div class="kill">
				<h3 class="cent">站内动态</h3>
				<ul>
					<br>
					<li> •   <span>2016-02-21</span> <a href="#"> 启迅科技祝您新春快乐，
					</a></li>
					<li> •   <span>2015-09-27</span> <a href="#"> 关于建设银行新一代系统
					</a></li>
					<li> •   <span>2015-09-17</span> <a href="#"
						style="color: red;"> 紧急通知公告 </a></li>
					<li> •   <span>2015-06-28</span> <a href="#"
						style="color: blue;"> 28卡网站守则必读 </a></li>
					<li> •   <span>2015-06-28</span> <a href="#"
						style="color: red;"> 28发卡禁止上架销售的商 </a></li>
					<li> •   <span>2015-06-27</span> <a href="#"
						style="color: red;"> 新增支付宝以及微信支付 </a></li>
				</ul>
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
