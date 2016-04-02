<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'testList.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="resource/js/jquery-2.2.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$.ajax({
		type : "get",
		url : "information/aList",
		dataType : function(data) {
			var totalCount = data.totalSize;
			var pageSize = 10;
			var pageTotal = Math.ceil(totalCount / pageSize);
			var currentPage = null;
			var startRow = pageSize * (currentPage - 1);
			var endRow = startRow + pageSize - 1;
		}
	});
});
</script>

</head>

<body>
	This is my JSP page.
	<br>
</body>
</html>
