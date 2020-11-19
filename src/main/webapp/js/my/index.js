$(document).ready(function(){
	index();
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

function index(){
	$.ajax({
		url:"/index",
		success:function(result,testStatus)
		{
			var tickets = eval(result);
			var str = "";
			for (var i =0;i<=7;i++) {
				str+='<li><a href="findById?tid='+tickets[i].tid+'"><img src="'+tickets[i].timg+'" width="144" height="189" /></a>';
				str+='<span class="but_gp"><a href="goumai.jsp"></a></span>';
				str+='<p> <a href="findById?tid='+tickets[i].tid+'">"'+tickets[i].tname+'"</a> 	</p>';
				str+='</li>';
				//alert(tickets[i].venue.vname);
			}
			
			$("#right").append(str);
			var left = "";
			left+='<li><a href="findById?tid='+tickets[9].tid+'"><img src="'+tickets[9].timg+'" width="280" height="410" /></a>';
			//left+='<span class="but_gp"><a href="yuding.jsp"></a></span>';
			left+='<p><a href="findById?tid='+tickets[9].tid+'">"'+tickets[9].tname+'"</a></p></li>';
			//alert(left);
			$("#left").append(left);
			
			var top ='<a href="findById?tid='+tickets[8].tid+'"><img src="'+tickets[8].timg+'" height="100%" width="100%" border="0" /></a>';
			$("#top").append(top)
			//<span class="tu" id="lll"> <a href="goumai.jsp" class="lianjie"></a></span>
			
		},
		error:function(xhr,errrorMessage,e){
		}
		});
}