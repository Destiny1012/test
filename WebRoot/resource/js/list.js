$(document).ready(function(){
	$.ajax({
		type : "get",
		url : "information/getAll",
		dateType : "json",
		success : function(data){
			$('#information').empty();
			var list = '';
			$.each(data.list, function(infor, value){
				list += '<li><a href="user/toDetail"><h1>'+value.bt+'</h1><span>'+value.fbsj+'</span><p>'+value.nr+'</p></li>';
			});
			$('#information').html(list);
		}
	});
});