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

<title>model</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet" href="resource/css/model.css">

</head>

<body>
	<div class="top">
		<div class="logo">
			<img src="resource/image/logo.gif">
		</div>
		<div class="index_right">
			<a href="#">安全退出</a>
			<a href="#">修改密码</a>
			<a href="#">首页</a>
		</div>
	</div>
	
</body>
</html>
