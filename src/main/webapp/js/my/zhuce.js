function mygwc(suid){
	if(suid==null){
		alert("请先登录！");
		window.location.href="denglu.jsp";
	}else{
		window.location.href="/gowuche?suid="+suid+"";
	}
}


$(function() {
	var error_name = false;
	var error_password = false;
	var error_check_password = false;
	var error_check = false;

	$('#uname').blur(function() {
		check_name();
	});

	$('#upwd').blur(function() {
		check_password();
	});

	$('#uupwd').blur(function() {
		check_cpwd();
	});

	function check_name() {
		var len = $('#uname').val().length;
		if (len < 5 || len > 18) {
			$('#unamemsg').html('请输入5-18个字符的用户名');
			error_name = true;
		} else {
			$('#unamemsg').html("");
			error_name = false;
		}
	}

	function check_password() {
		var len = $('#upwd').val().length;
		if (len < 8 || len > 18) {
			$('#upwdmsg').html('密码最少8位，最长18位')
			error_password = true;
		} else {
			$('#upwdmsg').html("");
			error_password = false;
		}
	}

	function check_cpwd() {
		var pass = $('#upwd').val();
		var cpass = $('#uupwd').val();

		if (pass != cpass) {
			$('#uupwdmsg').html('两次输入的密码不一致');
			error_check_password = true;
		} else {
			$('#uupwdmsg').html("");
			error_check_password = false;
		}

	}

	$('#form2').submit(
			function() {
				check_name();
				check_password();
				check_cpwd();

				if (error_name == false && error_password == false
						&& error_check_password == false
						&& error_check == false) {
					var uname = $.trim($("#uname").val());
					var upwd = $.trim($("#upwd").val());
					var url = "/register";
					var data = {
						"uname" : uname,
						"upwd" : upwd
					};
					$.post(url, data, function(res) {
						if (res == "true") {
							alert("注册成功");
							window.location.href = "denglu.jsp";
						} else {
							alert("注册失败，该用户已存在！");
							window.location.href = "zhuce.jsp";
						}
					});
				}
				return false;
			});

});