$(document).ready(function(){
	totalPrice();
	if($("#username").text()!=""){
		$("#loginAndReg").hide()
	}else{
		$("#exit").hide()
	}

	index();

	
	
});
function totalPrice(){		
    //计算总价，编写总价方法            
     var zong = 0;             
     $(".cartTicketListSumPrice").each(function () {                 
         var all = parseInt($(this).text());                 
         zong += all;             
         })    
        // alert(zong);
         $("#Sum").text(zong);	}




function run1(a,sid,uid){
	var sss = document.getElementById(""+sid+"=").value
	
	if(sss<=1){
		  document.getElementById(""+sid+"").disabled=false;
		  return;
	}
		//使用js脚本实现控制器访问
		window.location="update?flag="+a+"&sid="+sid+"&uid="+ uid;
}
function run2(a,sid,uid){
		window.location="update?flag="+a+"&sid="+sid+"&uid="+ uid;
}
function mygwc(suid){
	if(suid==null){
		alert("请先登录！");
		window.location.href="denglu.jsp";
	}else{
		window.location.href="/gowuche?suid="+suid+"";
	}
}