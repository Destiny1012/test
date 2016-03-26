$(document).ready(function() {
	$.ajax({
		type : "get",
		url : "page/checkLogin",
		dataType : "json",
		success : function(data) {
			if (data.result == "true") {
				window.location.href = "information/getList";
			} else {
				window.location.href = "page/toLogin";
			}
		}
	});
});