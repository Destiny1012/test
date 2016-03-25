$(document).ready(function(){
	$.ajax({
		type : "get",
		url : "information/list",
		dateType : "json",
		success : function(data){
//			$('#information').empty();
//			var list = '';
//			$.each(data.list, function(infor, value){
//				list += '<li><a href="user/toDetail"><h1>'+value.bt+'</h1><span>'+value.fbsj+'</span><p>'+value.nr+'</p></li>';
//			});
//			$('#information').html(list);
			var totalCount = data.totalCount;
			var pageSize = 10;
			var totalPage = Math.ceil(totalCount / pageSize);
			var startPage = pageSize * (pn - 1);
			var endPage = startPage + pageSize - 1;
			$('#information').empty();
			for(var i = 0; i < pageSize; i++){
				$('#information').append('<li class="li-tag"></li>');
			}
		}
	});
});