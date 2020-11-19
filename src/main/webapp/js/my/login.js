$(function(){
	
	var checkName= false;
	var checkPwd= false;
	
	$("#uname").blur(function(){
		check_uname();
	});
	$("#upwd").blur(function(){
		check_upwd();
	});
	function check_uname(){
		var $len = $("#uname").val().length  
		if($len<5||$len>18){
			$("#unamemsg").html("用户名长度有误");
			checkName =true;
		}else{
			$("#unamemsg").html("");
			checkName =false;
		}
	}
	function check_upwd(){
		var $len = $("#upwd").val().length  
		if($len<5||$len>18){
			$("#upwdmsg").html("密码长度有误");
			checkPwd= true;
		}else{
			$("#upwdmsg").html("");
			checkPwd= false;
		}
	}
	
	
	$("#form2").submit(function(){
		check_uname();
		check_upwd();
		if(checkPwd == false && checkName ==false){
			var uname =  $.trim($("#uname").val());
			var upwd =  $.trim($("#upwd").val());
			var url = "/login";
			var data = {"uname":uname,"upwd":upwd,"urname":"ss"};
			$.post(url,data,function(result){
				if(result=="true"){
					 window.location.href = "index.jsp";
				}else{
					alert("用户不存在或账号密码有误");
					 window.location.href = "denglu.jsp";
				}
			})
		}
		
		return false;
	});
})


function mygwc(suid){
	if(suid==null){
		alert("请先登录！");
		window.location.href="denglu.jsp";
	}else{
		window.location.href="/gowuche?suid="+suid+"";
	}
}