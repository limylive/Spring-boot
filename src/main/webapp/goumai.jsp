<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>梦田票务</title>
<link href="css/header.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type=text/javascript src="js/jquery-1.7.1.min.js"></script>
<script type=text/javascript src="js/ifocus.js"></script>
<script type="text/javascript" src="js/scool.js"></script>
<script type="text/javascript" src="js/imgp.js"></script>
<script type="text/javascript" src="js/jquery.switchable[all].min.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.pack.js"></script>
<script type="text/javascript" src="js/datepicker.js"></script>
<script type="text/javascript" src="js/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="css/jquery.fancybox-1.3.4.css" media="screen" />
<script type="text/javascript" src="js/jquery.ad-gallery.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>

 <script type="text/javascript">
$(document).ready(function(){
	
 
	 
	/*loginBox*/
	$(".buy_zwt a").on('click',function(){
		var _this = $(".all_box .layer_pop_box").eq($(this).prevAll().length),
			_thistop = -_this.height() / 2,
			_thisleft = -_this.width() / 2;		
			_this.css({top:"50%",left:"50%","margin-top":(_thistop),"margin-left":(_thisleft)}).show(300);
	}),$(".layer_pop_box .closer").on('click',function(){
		var _this = $(this).closest(".layer_pop_box")
		_this.hide(200);
	});
	
	
	/*selectBox*/
	$(".search_box .select").hover( function () {
		$(this).addClass("select_over");
	},function () {
		$(this).removeClass("select_over");
	}).on('click',function(){
		var _this = $(this),
			_bthis = $(this).find(".list");
		if ( _this.attr('isopen') ) {
			_bthis.slideUp(200 , function(){
				_this.removeAttr('isopen');
			});			
		} else {
			_bthis.slideDown(200,function(){
				_this.attr('isopen',"1");
			});	
		}
	}).on('mouseleave',function(){
		var _thisa = $(this).find(".list"),
			_this = $(this);
		_thisa.hide();
		_this.removeAttr('isopen');
	}),$(this).find(".list li").hover( function (){
		$(this).addClass("sel");		
	},function (){
		$(this).removeClass("sel");	
	}).on('click',function(){
		var _this = $(this).jsp();
		var _thisText = $(this).closest(".select").find(".text");
		_thisText.jsp(_this);
	})
	$(".search_box .button input").click(function(){
		var endinfo= "";
		$(".search_box .select .text").each(function(i){
			endinfo=endinfo+(i+1)+":"+$(this).jsp()+";\n";
		});						
		alert(endinfo);						
	});
	
 
 

});
</script>

<script type="text/javascript">
		$(document).ready(function() {
			/*
			*   Examples - images
			*/

			$("a#example1").fancybox();
			
			});
	</script>


<script type="text/javascript">
  $(function() {
	  if($("#username").text()!=""){
			$("#loginAndReg").hide()
		}else{
			$("#exit").hide()
		}
  
    var galleries = $('.ad-gallery').adGallery();
    $('#switch-effect').change(
      function() {
        galleries[0].settings.effect = $(this).val();
        return false;
      }
    );
    $('#toggle-slideshow').click(
      function() {
        galleries[0].slideshow.toggle();
        return false;
      }
    );
    $('#toggle-description').click(
      function() {
        if(!galleries[0].settings.description_wrapper) {
          galleries[0].settings.description_wrapper = $('#descriptions');
        } else {
          galleries[0].settings.description_wrapper = false;
        }
        return false;
      }
    );
  });
  </script>

<script type="text/javascript">

function mygwc(suid){
	if(suid==null){
		alert("请先登录！");
		window.location.href="denglu.jsp";
	}else{
		window.location.href="/gowuche?suid="+suid+"";
	}
}
</script>
<!--[if IE 6]>
<script src="js/DD_belatedPNG.js"></script>
<script>
  DD_belatedPNG.fix('.but_gp,.rslides');
</script>
<![endif]-->
</head>
<body>
	<div id="header">
		<div class="w1002" style="overflow:visible; height:105px;">

				<div class="header_top">你好:<span id="username">${sessionScope.user.uname}</span>-<span id="exit"><a href="exit">退出登录</a></span>
				<span id="loginAndReg"><a href="denglu.jsp" class="dl">用户登录</a><a href="zhuce.jsp" class="dl">注册用户</a></span>	|<a
						href="member.jsp">我的梦田</a><span><a id="mygwc" onclick="mygwc(${sessionScope.user.uid})" href="#">购物车</a> 
						</span>
				</div>

				<div class="site_logo floatl">
					<a href="#"><img src="images/site_logo.gif" width="170" height="65" /></a>
				</div>

				<div class="header_city floatl search_box">

				</div>


				<div class="header_search floatl">
					<p class="hot">热门搜索：</p>
					<form id="form1" name="form1" action="">
						<div><input type="text" name="textfield" id="textfield" class="input_style" /><input type="submit" name="button" id="button" value=" " class="but_tj" /></div>
					</form>
				</div>
			</div>

  
  
		  <div id="site_nav">
			<div class="clearfix nav_post">
			</span><p class="yahei"><a href="index.jsp">首 页</a><a
				href="yanchanghui.jsp">巡 演</a><a href="yanchanghui.jsp">订 票</a><a
				href="changguan_list.jsp">售票场馆</a></p>
		  </div>
		</div>
	  </div>
    
    
    
    
    
    <div class="inside_buycent">
    	<p class="your_post"><a href="#">梦田票务</a> > <a href="#">${tik.venue.vcity}</a> > <a href="#">${tik.ttype}></a>${tik.tname}</p>
    		<div class="buy_maibox">
            	<h1 class="yahei">${tik.tname}</h1>
                <div class="left">
                    <div class="left_poster">
                        <a href="#"><img src="${tik.timg }" width="278" height="384" /></a>
                    
                    </div>
 
                   
                        <script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=6693269" ></script>
                        <script type="text/javascript" id="bdshell_js"></script>
                        <script type="text/javascript">
                        document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
                        </script>
                        <!-- Baidu Button END -->
                        <div class="clear"></div>

                                            
                </div>
                
                
                
                <script type="text/javascript">
					function showid(idname){
					var isIE = (document.all) ? true : false;
					var isIE6 = isIE && ([/MSIE (\d)\.0/i.exec(navigator.userAgent)][0][1] == 6);
					var newbox=document.getElementById(idname);
					newbox.style.zIndex="9999";
					newbox.style.display="block"
					newbox.style.position = !isIE6 ? "fixed" : "absolute";
					newbox.style.top =newbox.style.left = "50%";
					newbox.style.marginTop = - newbox.offsetHeight / 2 + "px";
					newbox.style.marginLeft = - newbox.offsetWidth / 2 + "px";  
					var layer=document.createElement("div");
					layer.id="layer";
					layer.style.width=layer.style.height="100%";
					layer.style.position= !isIE6 ? "fixed" : "absolute";
					layer.style.top=layer.style.left=0;

					layer.style.zIndex="9998";
					layer.style.opacity="0.6";
					document.body.appendChild(layer);
					var sel=document.getElementsByTagName("select");
					for(var i=0;i<sel.length;i++){        
					sel[i].style.visibility="hidden";
					}
					function layer_iestyle(){      
					layer.style.width=Math.max(document.documentElement.scrollWidth, document.documentElement.clientWidth)
					+ "px";
					layer.style.height= Math.max(document.documentElement.scrollHeight, document.documentElement.clientHeight) +
					"px";
					}
					function newbox_iestyle(){      
					newbox.style.marginTop = document.documentElement.scrollTop - newbox.offsetHeight / 2 + "px";
					newbox.style.marginLeft = document.documentElement.scrollLeft - newbox.offsetWidth / 2 + "px";
					}
					if(isIE){layer.style.filter ="alpha(opacity=60)";}
					if(isIE6){  
					layer_iestyle()
					newbox_iestyle();
					window.attachEvent("onscroll",function(){                              
					newbox_iestyle();
					})
					window.attachEvent("onresize",layer_iestyle)          
					}  
					layer.onclick=function(){newbox.style.display="none";layer.style.display="none";for(var i=0;i<sel.length;i++){
					sel[i].style.visibility="visible";
					}}
					}
					</script>


                
                
                <div class="right">
                	<div class="piao_js">
                    	
                        <p><span>演出时间： ${tik.tshowTime }</span>演出场馆： <a href="#">${tik.venue.vname}</a></p>
                        
                    
                       <div class="clear"></div>
                    
                      <p class="price">售票价格：<span>${tik.tprice }</span><a id="example1" href="images/zwt.jpg" ></a></p>
                    </div>
                    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
             	
                    
                    
                    <div class="buy_buttom"><a onclick="goumai(${tik.tid},${sessionScope.user.uid})" href="#"><img src="images/icon_buy2.gif"  width="158" height="50" /></a><a  onclick="goumai(${tik.tid},${sessionScope.user.uid})" href="#"><img src="images/icon_gwc2.gif" width="158" height="50"/></a></div>
                    
                
                </div>
                
<script>
     function goumai(tid,uid){
    		if(tid==null||uid==null){
    			alert("请先登录");
    			window.location.href="denglu.jsp";
    		}else{
    			window.location.href="addshopping?stid="+tid+"&suid="+uid+"";
    		}
    	}
</script> 
                
                
                <div class="clear"></div>
            
            </div>
    
    
    </div>
    
	
    

 
    			   		
               
 
                
                
               
                
               
                    
                   
 
                   
                    
                   
                
                
                
    
    
    <script type="text/javascript"> 

    
function $i(id){
	return document.getElementById(id);
}
function tabswitch(c, config){
	this.config = config ? config : {start_delay:3000, delay:1500};
	this.container = $i(c);
	this.pause = false;
	this.nexttb = 1;
	this.tabs = this.container.getElementsByTagName('dt');
	var _this = this;
	if(this.tabs.length<1)this.tabs = this.container.getElementsByTagName('li');
	for(var i = 0; i < this.tabs.length; i++){
		var _ec = this.tabs[i].getElementsByTagName('span');
		if(_ec.length<1)_ec = this.tabs[i].getElementsByTagName('a');
		if(_ec.length<1){
			_ec = this.tabs[i]
		}else{
			_ec = _ec[0];
		}
		_ec.onmouseover = function(e) {
			_this.pause = true;
			var ev = !e ? window.event : e;
			_this.start(ev, false, null);
		};
		
		_ec.onmouseout = function() {
			_this.pause = false;
		};
		
		try{
			$i(this.tabs[i].id + '_body').onmouseover = function(){
				_this.pause = true;
			};
			
			$i(this.tabs[i].id + '_body').onmouseout = function(){
				_this.pause = false;
			};
		}catch(e){}
	}
 
	if ($i(c + '_sts')) {
		var _sts = $i(c + '_sts');
		var _step = _sts.getElementsByTagName('li');
		if(_step.length<1)_step = _sts.getElementsByTagName('div');
		_step[0].onclick = function() {
			if (_this.tabs[_this.tabs.length-1].className.indexOf('current') > -1) {
				_this.nexttb = _this.tabs.length + 1;
			};
			_this.nexttb = _this.nexttb - 2 < 1 ? _this.tabs.length : _this.nexttb - 2;
			//alert(_this.nexttb);
			_this.start(null, null, _this.nexttb);
		};
		
		_step[1].onclick = function() {
			_this.nexttb = _this.nexttb < 1 ? 1 : _this.nexttb;
			_this.start(null, null, _this.nexttb);
		};
	};
	
	this.start = function(e, r, n){
		if(_this.pause && !e)return;
		if(r){
			curr_tab = $i(_this.container.id + '_' + rand(4));
		}else{
			if(n){				
				curr_tab = $i(_this.container.id + '_' + _this.nexttb);
			}else{
				curr_tab = e.target ? e.target : e.srcElement;
				if(curr_tab.id=="")curr_tab = curr_tab.parentNode;
			}
		}
		
		var tb = curr_tab.id.split("_");
		for(var i = 0; i < _this.tabs.length; i++){
			if(_this.tabs[i]==curr_tab){
				_this.tabs[i].className="current";
				try{					
					$i(_this.tabs[i].id + '_body').style.display = "block";
				}catch(e){}
			}else{
				_this.tabs[i].className="";
				try{
					$i(_this.tabs[i].id + '_body').style.display = "none";
				}catch(e){}
			}
		}
		_this.nexttb = parseInt(tb[tb.length-1]) >= _this.tabs.length ? 1 : parseInt(tb[tb.length-1]) + 1;
	};
}
//设置
var tab1,tab2;
function init_load(){
    if ($i('tab1')) {
		tab1 = new tabswitch('tab1', {});
		setInterval("tab1.start(null, null, 1);", 6000);
	}
	 
}
if(window.attachEvent){
    window.attachEvent("onload",init_load);
}else if(window.addEventListener){
    window.addEventListener("load",init_load,false);
}
</script> 
        
        
        
        
       
        
 
        
        


 
</body>
</html>
