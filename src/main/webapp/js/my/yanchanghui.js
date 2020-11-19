$(document).ready(function(){
	cityAjax();
	typeAjax();
	if($("#username").text()!=""){
		$("#loginAndReg").hide()
	}else{
		$("#exit").hide()
	}
	
	
});

function mygwc(suid){
	if(suid==null){
		alert("请先登录！");
		window.location.href="denglu.jsp";
	}else{
		window.location.href="/gowuche?suid="+suid+"";
	}
}

function goumai(tid,uid){
	if(tid==null||uid==null){
		alert("请先登录");
		window.location.href="denglu.jsp";
	}else{
		window.location.href="addshopping?stid="+tid+"&suid="+uid+"";
	}
}

function cityAjax(){
	$.ajax({
		url:"/allVenueCity",
		success:function(result,testStatus){
				var citys =eval(result)
				var city = "";
				$.each(citys,function(i,element){
					city+='|<a id="vcity" href="queryTicketByCity?vcity='+citys[i].vcity+'" ';
					city+='>'+citys[i].vcity+'</a>';
				})
				$("#citys").append(city)
			}
		}		
	)
}
function typeAjax(){
	$.ajax({
		url:"/allType",
		success:function(result,testStatus){
				var types =eval(result)
				var type = "";
				$.each(types,function(i,element){
					type+='|<a id="ttype" href="queryTicketByType?ttype='+types[i].ttype+'" ';
					type+='>'+types[i].ttype+'</a>';
				})
					//alert(type);
				$("#types").append(type)
			}
		}		
	)
}



	