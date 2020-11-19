<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<script src="js/foucsbox.js" type="text/javascript"></script>
<script type="text/javascript" src="js/bigpicroll.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript" src="js/my/gouwuche.js"></script>

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
						href="member.jsp">我的梦田</a><span><a id="mygwc" onclick="mygwc(${sessionScope.user.uid})" href="#">购物车</a> </span>
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
            href="changguan.jsp">售票场馆</a></p>
      </div>
    </div>
  </div>
    
    
    
    
     <div class="inside_cart">
     	 	<p class="btitle yahei"><strong>购物车</strong><span>Cart</span></p>
            	<div class="payment-header">
                	<div ></div>
                </div>
                
                <div class="sp_xx">
               	  <table width="928" height="84" border="0" cellpadding="0" cellspacing="0">
              
                	  <tr class="ttitle">
                	    <td width="307" height="34">商品信息</td>
                	    <td width="101">单价</td>
                	    <td width="116"></td>
                	    <td width="141">购买票数</td>
                	    <td width="132">合计</td>
                	    <td width="129">操作</td>
              	    </tr>
              	    
              	       <c:forEach items="${ lists }" var="s">
                	  <tr>
                	    <td class="sp">
                       	  <table width="302" height="45" border="0" cellpadding="0" cellspacing="0">
                       	  	
                        	   <tr>
                        	     <td width="82" class="leftimg"><img src="${s.ticketinfo.timg}" width="144" height="189" /></td>
                        	     <td width="220">
                                 	
                                    <p><a href="#">${s.ticketinfo.tname}</a></p>
                                    <p>地点：${s.venue.vname}</p>
                                    <p>时间：${s.ticketinfo.tshowTime}</p>
                                    <p>票价：<span class="cartTicketListPrice" id="5">${s.ticketinfo.tprice}</span></p>
                                 
                                 </td>
                      	     </tr>
                      	     
               	        </table></td>
                	    <td>${s.ticketinfo.tprice}</td>
                	    <td></td>
                	    <td class="shul">
                	    <input id="${s.sid}" type="button" onclick="run1(0,${s.sid},${s.suid})" style="width: 20px;height: 20px" value="-"/>
											<input id="${s.sid}=" type="text" style="width: 20px;" value="${s.snumber}"/>
											<input  type="button" onclick="run2(1,${s.sid},${s.suid})" style="width: 20px;height: 20px" value="+"/></td>
                	    <td ><span class="cartTicketListSumPrice">${s.ticketinfo.tprice*s.snumber }</span></td>
                	    <td><a href="delete?sid=${s.sid}&uid=${s.suid}"><img src="images/icon_x2.gif" width="19" height="19" /></a></td>
              	    </tr>
              	    </c:forEach>
              	
              	  </table>
              	  
                </div>
              
                
                <div class="jiesuan_next">
                	商品总价(不含运费)： <strong></span> <span>合计 : </span><span class="cartSumPrice" id="Sum"> ￥0.00</span></strong>元<c:forEach items="${ lists }" var="s"><a href="deleteAll?suid=${s.suid}">	</c:forEach><img src="images/icon_js.gif" width="86" height="32" /></a>
                </div>
                <div class="ganxinq">
                    <div id="carousel_container">
               
                	<div id="carousel_inners">
                    
                </div>
                
                </div>
                
                <div ></div>
 				<div ></div>
   	 	</div>
        
     
     
     
     
     </div>
        
        
     
     
     	<div class="clear"></div>
     
     
     
     
     
     
     </div>
    
    
    
    
    
    
     
    
    
    <div class="changguan_focus"></div>
    <div id="footer">
	 <div class="cont">
             <dl>
                <dt class="yahei"><a href="#">账户安全</a></dt>
                <dd>
                    <p><a href="#">找回密码</a></p>
                    <p><a href="#">账户注册</a></p>
                    <p><a href="#">账户绑定</a></p>
                </dd>
             </dl>
             <dl>
                <dt class="yahei"><a href="#">账户安全</a></dt>
                <dd>
                    <p><a href="#">找回密码</a></p>
                    <p><a href="#">账户注册</a></p>
                    <p><a href="#">账户绑定</a></p>
                </dd>
             </dl>
             <dl>
                <dt class="yahei"><a href="#">账户安全</a></dt>
                <dd>
                    <p><a href="#">找回密码</a></p>
                    <p><a href="#">账户注册</a></p>
                    <p><a href="#">账户绑定</a></p>
                </dd>
             </dl>
             <dl>
                <dt class="yahei"><a href="#">账户安全</a></dt>
                <dd>
                    <p><a href="#">找回密码</a></p>
                    <p><a href="#">账户注册</a></p>
                    <p><a href="#">账户绑定</a></p>
                </dd>
             </dl>
             <dl style="border-right:none;">
                <dt class="yahei"><a href="#">账户安全</a></dt>
                <dd>
                    <p><a href="#">找回密码</a></p>
                    <p><a href="#">账户注册</a></p>
                    <p><a href="#">账户绑定</a></p>
                </dd>
             </dl>
             <div class="clear"></div>
         </div>
         
         <div class="footer_boot">
         	<h4><a href="#">公司介绍</a> | <a href="#">品牌识别</a> | <a href="#">联系方式</a> | <a href="#">合作招商</a> | <a href="#">招聘信息</a> | <a href="#">隐私声明</a> | <a href="#">安全认证</a> | <a href="#">友情链接</a> | <a href="#">网站地图</a></h4>
                <p>本网站所有产品设计（包括造型，颜色，图案和观感），功能及其展示形式，均已受版权或产权保护。</p>
                <p>任何公司及个人不得以任何方式复制部分或全部，违者将依法追究责任，特此声明。</p>
                <p>本站部分内容来自互联网或由会员上传，版权归原作者所有。如有问题，请及时联系我们。</p>
                <p>版权所有 梦田票务 Copyright2003-2013 All Rights Reserved 京ICP备11043884号 京公网安备11010102000430号</p>
                <p>湖南梦田体育文化传播有限公司</p>
         </div>
    
    
    	<div class="footer_img"><img src="images/footer_img.gif" width="41" height="57" /></div>
    </div>        
        
        
        
        
        
       
        
        
        
        


 
</body>
</html>
