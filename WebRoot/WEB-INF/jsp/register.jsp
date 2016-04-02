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

<title>register</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="resource/css/register.css">
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
<script type="text/javascript">
  //验证密码 
    function checkpsd1(){
        psd1=register.password.value;
        var flagZM = false;
        var flagSZ = false;
        var flagQT = false;
        if(psd1.length<6 || psd1.length>12){
            divpassword1.innerHTML='<font class="tips_false">长度错误</font>';
        }else{
              for(var i=0;i < psd1.length;i++){
                    if((psd1.charAt(i) >= 'A' && psd1.charAt(i)<='Z') || (psd1.charAt(i)>='a' && psd1.charAt(i)<='z')){
                        flagZM = true;
                    }else if(psd1.charAt(i)>='0' && psd1.charAt(i)<='9'){
                        flagSZ = true;
                    }else{
                        flagQT = true;
                    };
                }
                if(!flagZM || !flagSZ || flagQT){
                	divpassword1.innerHTML='<font class="tips_false">密码必须是字母数字的组合</font>';
                }else{
                	divpassword1.innerHTML='<font class="tips_true">输入正确</font>';
                };
            };
    }
    //验证确认密码 
    function checkpsd2(){
            if(register.password.value != register.password1.value){
            	divpassword2.innerHTML='<font class="tips_false">您两次输入的密码不一样</font>';
            }else{
				divpassword2.innerHTML='<font class="tips_true">输入正确</font>';
            }
    }
    //验证邮箱
    function checkemail(){
    	a = register.email.value.indexOf("@");
        b = register.email.value.lastIndexOf(".");
        if (a < 1 || b - a < 2){
        	divemail.innerHTML='<font class="tips_false">请输入正确邮箱</font>';
        }else{
            $.ajax({
            	type : "get",
            	url : "user/checkEmail",
            	dataType : "json",
            	success : function(data) {
            		if((name == email).size > 0){
            			divemail.innerHTML='<font class="tips_false">此email已被注册</font>';
            		}else{
            			divemail.innerHTML='<font class="tips_true">输入正确</font>';
            		}
            	}
            });
        }
    }
    //验证手机
    function checktel(){
    	phone = register.tel.valu;
    	tels = /^1[3|4|5|7|8][0-9]{9}$/;
    	alert("456");
    	if (!(tels.test(phone))){
    		alert("123");
    		divtel.innerHTML='<font class="tips_true">输入正确</font>';
    	}else{
    		divtel.innerHTML='<font class="tips_false">请输入正确手机号</font>';
    	};
    }
</script>

</head>

<body>
	<div class="top">
		<div class="top_box">
			<div class="login">
				欢迎来到28卡 <span> <a href="page/toLogin">请登录</a> - <a
					href="page/toRegister">免费注册</a> </span>
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
				<li><a class="menu_on" href="index.jsp">首页</a>
				</li>
				<li><a href="page/toRegister">免费注册</a> <a href="#">使用教程</a> <a
					href="#">联系我们</a> <a href="user/toList">企业资质</a> <a
					href="page/toRelease">我要发布</a>
				</li>
				<li id="part_img"><a href="#"> <img
						src="resource/image/search.png"> </a>
				</li>
			</ul>
		</div>
	</div>
	<div class="center">
		<div class="register">
			<div class="register_top">
				<span class="left"> 注册新用户- 商家注册通道 买家请勿注册 </span> <img class="right"
					style="margin: 10px" src="resource/image/zclc_1.png">
			</div>
			<div class="register_left left">
				<div class="nav_top">
					<div class="nav_in">
						<span>用户注册</span>
					</div>
				</div>
				<div class="nav_content">
					<form name="register" action="user/save" method="post">
						<ul>
							<li>
								<label>登陆Email：</label>
								<input type="text" name="email" placeholder="请输入Email" onblur="checkemail()" required>
								<span class="tips" id="divemail">请输入邮箱</span>
							</li>
							<li>
								<label>密码：</label>
								<input type="password" name="password" placeholder="请输入密码" maxlength="8" onblur="checkpsd1()" required>
								<span class="tips" id="divpassword1">密码必须由字母和数字组成</span>
							</li>
							<li>
								<label>确认密码：</label>
								<input type="password" name="password1" placeholder="请确认密码" maxlength="8" onkeyup="checkpsd2()" required>
								<span class="tips" id="divpassword2">两次密码需要相同</span>
							</li>
							<li>
								<label>手机：</label>
								<input type="text" name="tel" placeholder="请输入手机" maxlength="11" onblur="checktel()" required>
								<span class="tips" id="divtel">请输入中国大陆手机号</span>
							</li>
							<li>
								<label>QQ：</label>
								<input type="text" name="qq" placeholder="请输入QQ" required>
							</li>
							<li>
								<label>验证码：</label>
								<input type="text" style="width: 100px;" required>
								<!-- <img src="#" style="width: 70px;height: 23px;vertical-align: middle;"> -->
								<div id="vCode2" style="vertical-align: middle; width:100px; height: 30px; line-height:30px;border: 1px solid #ccc; display: inline-block;"></div>
							</li>
							<li style="padding-left: 135px;font-size: 12px;"><input
								type="checkbox"
								style="vertical-align: middle;width: 16px;height: 16px;border: 1px solid #c5ced7;">
								同意 <a href="#" style="color: #2864b4;">《用户协议》</a>
								(甲方在本网站注册成功视为无条件接受本协议所有条款)</li>
							<li style="padding-left: 135px;"><input type="submit"
								value="" onclick="password()"
								style="background: url('./resource/image/tyzc_1.png') no-repeat;width: 184px;cursor: pointer;">
							</li>
						</ul>
					</form>
				</div>
			</div>
			<div class="register_right right">
				<ul>
					<li>28卡为您提供发卡一站式服务 <br> 便捷你我，快乐生活</li>
					<li><a href="#" style="color: #36c;">已有28KA账号，请登录 </a></li>
					<li><a href="login.html" class="login_btn"> <img
							src="resource/image/dl.png"> </a></li>
				</ul>
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
