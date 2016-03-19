$(document).ready(function(){
	$(function(){
		$(".login_btn").click(function(){
			if(checkInput()){
				$(form).action("user/login");
			}else{
				return false;
			}
		});
	});
	function checkInput(){
		if($("input[name=email]").val()==null||$("input[name=email]").val()==""){
			alert("E-mail不能为空！");
			$("input[name=email]").focus();
			return false;
		}
		if($("input[name=password]").val()==null||$("input[name=password]").val()==""){
			alert("密码不能为空！");
			$("input[name=password]").focus();
			return false;
		}
		return true;
	}
});