$(document).ready(function(){
	if($("#username").text()!=""){
		$("#loginAndReg").hide()
	}else{
		$("#exit").hide()
	}
	loadVenue();
});
function mygwc(suid){
	if(suid==null){
		alert("请先登录！");
		window.location.href="denglu.jsp";
	}else{
		window.location.href="/gowuche?suid="+suid+"";
	}
}

function loadVenue(){
	$.ajax({
			url:"/changuan",
			success:function(result,testStatus){
				var venues = eval(result);
				// alert(venues);
				var str ="";
				$.each(venues,function(i,element){
					str+='<dl class="clearfix">';
					str+='<dt><a href="#"><img src="'+venues[i].vimg+'" width="185" height="120" /></a></dt> <dd>';
					str+='<h3 class="yahei"><a href="#">'+venues[i].vname+'</a></h3>';
					str+='<br /><p><b>'+venues[i].vcity+'</b></p>'; 
					str+='<br /><p>地点：'+venues[i].vaddress+'</p>'; 
					str+=' </dd> </dl>'; 
					});
				
				$("#changguan").append(str);
			}	
		});
}
		
