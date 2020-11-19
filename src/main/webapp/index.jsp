<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html PUBLIC" -//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>梦田票务</title>
<link href="css/header.css" rel="stylesheet" type="text/css" />
<link href="css/index.css" rel="stylesheet" type="text/css" />
<script type=text/javascript src="js/jquery-1.7.1.min.js"></script>
<script type=text/javascript src="js/ifocus.js"></script>
<script type="text/javascript" src="js/scool.js"></script>
<script type="text/javascript" src="js/imgp.js"></script>
<script type="text/javascript" src="js/jquery.switchable[all].min.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.pack.js"></script>
<script type="text/javascript" src="js/my/index.js"></script>
<script>
	$(document).ready(
			function() {

				//rotation speed and timer
				var speed = 5000;
				var run = setInterval('rotate()', speed);

				//grab the width and calculate left value
				var item_width = $('#slides li').outerWidth();
				var left_value = item_width * (-1);

				//move the last item before first item, just in case user click prev button
				$('#slides li:first').before($('#slides li:last'));

				//set the default item to the correct position 
				$('#slides ul').css({
					'left' : left_value
				});

				//if user clicked on prev button
				$('#prev').click(
						function() {

							//get the right position            
							var left_indent = parseInt($('#slides ul').css(
									'left'))
									+ item_width;

							//slide the item            
							$('#slides ul:not(:animated)').animate(
									{
										'left' : left_indent
									},
									200,
									function() {

										//move the last item and put it as first item            	
										$('#slides li:first').before(
												$('#slides li:last'));

										//set the default item to correct position
										$('#slides ul').css({
											'left' : left_value
										});

									});

							//cancel the link behavior            
							return false;

						});

				//if user clicked on next button
				$('#next').click(
						function() {

							//get the right position
							var left_indent = parseInt($('#slides ul').css(
									'left'))
									- item_width;

							//slide the item
							$('#slides ul:not(:animated)').animate(
									{
										'left' : left_indent
									},
									200,
									function() {

										//move the first item and put it as last item
										$('#slides li:last').after(
												$('#slides li:first'));

										//set the default item to correct position
										$('#slides ul').css({
											'left' : left_value
										});

									});

							//cancel the link behavior
							return false;

						});

				//if mouse hover, pause the auto rotation, otherwise rotate it
				$('#slides').hover(

				function() {
					clearInterval(run);
				}, function() {
					run = setInterval('rotate()', speed);
				});

			});

	//a simple function to click next link
	//a timer will call this function, and the rotation will begin :)  
	function rotate() {
		$('#next').click();
	}
</script>
<script type="text/javascript">
	function showarea() {
		var con = document.getElementById("t_area");
		var arealist = con.getElementsByTagName("li");
		var g = document.getElementById("t_con");
		var val2 = "seeeeeee";
		con.style.display = "block";
		for (var i = 0; i < arealist.length; i++) {
			arealist[i].onmouseover = function() {
				this.style.backgroundColor = "red"
			}
			arealist[i].onmouseout = function() {
				this.style.backgroundColor = "#F1F9FC"
			}
			arealist[i].onclick = function() {
				g.innerHTML = this.innerHTML;
				document.getElementById("textnew").innerHTML = g.innerHTML;//赋值给下面一个form的值
				document.getElementById("ttt").value = document
						.getElementById("t_con").innerHTML;//赋值给下面一个form的值
				con.style.display = "none";
			}
		}
	}
	function offarea() { //dissappeared when mouse move out this div
		var con = document.getElementById("t_area");
		con.style.display = "none";
	}
	var timer;
</script>
<!--[if IE 6]>
<script src="js/DD_belatedPNG.js"></script>
<script>
  DD_belatedPNG.fix('.but_gp,.rslides');
</script>
<![endif]-->
</head>
<body>

	<SCRIPT type=text/javascript>
		jQuery(function() {
			$("#changeCity").click(function(a) {
				$("#allCity").slideDown(300);
				a.stopPropagation();
				$(this).blur();
			});
			$("#allCity").click(function(a) {
				a.stopPropagation()
			});
			$(document).click(function(a) {
				a.button != 2 && $("#allCity").slideUp(300)
			});
			$("#foldin").click(function() {
				$("#allCity").slideUp(300)
			});
		});
	</SCRIPT>


	<div id="header">
		<div class="w1002" style="overflow:visible; height:105px;">

				<div class="header_top">你好:<span id="username">${sessionScope.user.uname}</span>-<span id="exit"><a href="exit">退出登录</a></span>
				<span id="loginAndReg"><a href="denglu.jsp" class="dl">用户登录</a><a href="zhuce.jsp" class="dl">注册用户</a></span>	|<a
						href="member.jsp">我的梦田</a><span><a id="mygwc" onclick="mygwc(${sessionScope.user.uid})" href="#">购物车</a></span>
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
			<div>
				<div class="clearfix nav_post">
					<span><a href="#"></span><p class="yahei"><a href="index.jsp">首 页</a><a
									href="yanchanghui.jsp">巡 演</a><a href="yanchanghui.jsp">订 票</a><a
									href="changguan_list.jsp">售票场馆</a></p>

					<div class="nav_menu">
						<dl>
							<dt class="yahei ych">
								<a href="yanchanghui.jsp">演唱会</a>
							</dt>
							<dd>
								<a href="yanchanghui.jsp">内地</a><a href="yanchanghui.jsp">港台</a><a href="yanchanghui.jsp">日韩</a><a
									href="yanchanghui.jsp">欧美</a>
							</dd>
							<div class="clear"></div>
							<dt class="yahei hj">
								<a href="yanchanghui.jsp">话剧歌剧</a>
							</dt>
							<dd>
								<a href="yanchanghui.jsp">内地</a><a href="yanchanghui.jsp">港台</a><a href="yanchanghui.jsp">日韩</a><a
									href="yanchanghui.jsp">欧美</a><a href="yanchanghui.jsp">歌舞剧</a>
							</dd>
							<div class="clear"></div>
							<dt class="yahei yyh">
								<a href="yanchanghui.jsp">音乐会</a>
							</dt>
							<dd>
								<a href="yanchanghui.jsp">内地</a><a href="yanchanghui.jsp">港台</a><a href="yanchanghui.jsp">日韩</a><a
									href="yanchanghui.jsp">欧美</a>
							</dd>
							<div class="clear"></div>
							<dt class="yahei ty">
								<a href="yanchanghui.jsp">体育赛事</a>
							</dt>
							<dd>
								<a href="yanchanghui.jsp">球类运动</a><a href="yanchanghui.jsp">球类运动</a><a href="yanchanghui.jsp">球类运动</a><a
									href="yanchanghui.jsp">球类运动</a>
							</dd>
							<div class="clear"></div>
							<dt class="yahei qyzt">
								<a href="yanchanghui.jsp">曲苑杂坛</a>
							</dt>
							<dd>
								<a href="yanchanghui.jsp">内地</a><a href="yanchanghui.jsp">港台</a><a href="yanchanghui.jsp">日韩</a><a
									href="yanchanghui.jsp">欧美</a>
							</dd>
							<div class="clear"></div>
							<dt class="yahei etqz">
								<a href="yanchanghui.jsp">儿童亲子</a>
							</dt>
							<dd>
								<a href="yanchanghui.jsp">内地</a><a href="yanchanghui.jsp">港台</a><a href="yanchanghui.jsp">日韩</a><a
									href="yanchanghui.jsp">欧美</a>
							</dd>
							<div class="clear"></div>

						</dl>

					</div>

				</div>

			</div>
		</div>
	</div>



	<div id="index_focus" >
	<a href="goumai.jsp" class="lianjie" id="top"></a>
	</div>


	<div class="index_1f">
		
		<div class="index_lcbox">
			<div class="f1_left">
				<div class="left_ad">
				
				</div>
				

				<div class="sm_ad" id="left">
					
				</div>

			</div>

			<div class="f1_right">
				<ul id="right">
				</ul>
			</div>

			<div class="clear"></div>

		</div>

	</div>






















	<div id="footer">
		<div class="cont">
			<dl>
				<dt class="yahei">
					<a href="#">账户安全</a>
				</dt>
				<dd>
					<p>
						<a href="#">找回密码</a>
					</p>
					<p>
						<a href="#">账户注册</a>
					</p>
					<p>
						<a href="#">账户绑定</a>
					</p>
				</dd>
			</dl>
			<dl>
				<dt class="yahei">
					<a href="#">账户安全</a>
				</dt>
				<dd>
					<p>
						<a href="#">找回密码</a>
					</p>
					<p>
						<a href="#">账户注册</a>
					</p>
					<p>
						<a href="#">账户绑定</a>
					</p>
				</dd>
			</dl>
			<dl>
				<dt class="yahei">
					<a href="#">账户安全</a>
				</dt>
				<dd>
					<p>
						<a href="#">找回密码</a>
					</p>
					<p>
						<a href="#">账户注册</a>
					</p>
					<p>
						<a href="#">账户绑定</a>
					</p>
				</dd>
			</dl>
			<dl>
				<dt class="yahei">
					<a href="#">账户安全</a>
				</dt>
				<dd>
					<p>
						<a href="#">找回密码</a>
					</p>
					<p>
						<a href="#">账户注册</a>
					</p>
					<p>
						<a href="#">账户绑定</a>
					</p>
				</dd>
			</dl>
			<dl style="border-right: none;">
				<dt class="yahei">
					<a href="#">账户安全</a>
				</dt>
				<dd>
					<p>
						<a href="#">找回密码</a>
					</p>
					<p>
						<a href="#">账户注册</a>
					</p>
					<p>
						<a href="#">账户绑定</a>
					</p>
				</dd>
			</dl>
			<div class="clear"></div>
		</div>

		<div class="footer_boot">
			<h4>
				<a href="#">公司介绍</a> | <a href="#">品牌识别</a> | <a href="#">联系方式</a> | <a href="#">合作招商</a> | <a href="#">招聘信息</a> | <a
					href="#">隐私声明</a> | <a href="#">安全认证</a> | <a href="#">友情链接</a> | <a href="#">网站地图</a>
			</h4>
			<p>本网站所有产品设计（包括造型，颜色，图案和观感），功能及其展示形式，均已受版权或产权保护。</p>
			<p>任何公司及个人不得以任何方式复制部分或全部，违者将依法追究责任，特此声明。</p>
			<p>本站部分内容来自互联网或由会员上传，版权归原作者所有。如有问题，请及时联系我们。</p>
			<p>版权所有 梦田票务 Copyright2003-2013 All Rights Reserved 京ICP备11043884号 京公网安备11010102000430号</p>
			<p>湖南梦田体育文化传播有限公司</p>
		</div>


		<div class="footer_img">
			<img src="images/footer_img.gif" width="41" height="57" />
		</div>
	</div>











	<script>
		$(function() {
			/**/

			/*effectsBox*/
			var page = 1;
			var i = 1;
			$('.effects_box #left').click(function() {
				var $pictureShow = $('.effects_box');
				var downwidth = $pictureShow.width();
				var len = $('.effects_box ul').find('li').length;
				var effects = $('.effects_box ul');
				var page_number = Math.ceil(len / i);
				if (!effects.is(":animated")) {
					if (page == 1) {
						effects.animate({
							left : '-=' + downwidth * (page_number - 1)
						}, "slow");
						page = page_number;
					} else {
						effects.animate({
							left : '+=' + downwidth
						}, "slow");
						page--;
					}
				}
			});
			$('.effects_box #right').click(function() {
				
				var $pictureShow = $('.effects_box');
				var downwidth = $pictureShow.width();
				var len = $('.effects_box ul').find('li').length;
				var effects = $('.effects_box ul');
				var page_number = Math.ceil(len / i);
				if (!effects.is(":animated")) {
					if (page == page_number) {
						effects.animate({
							left : '0px'
						}, "slow");
						page = 1;
					} else {
						effects.animate({
							left : '-=' + downwidth
						}, "slow");
						page++;
					}
				}
			});
			$(".effects_box li").hover(function() {
				$(this).find("h3").slideDown(300);
			}, function() {
				$(this).find("h3").slideUp(300);
			});
			$(".effects_box .uclick").click(function() {
				$(".effects_box").animate({
					left : -20
				}).animate({
					left : 20
				}).animate({
					left : -10
				}).animate({
					left : 5
				}).animate({
					left : 0
				});
			});
			$(function() {
				var _ebox = $(".effects_box ul"), _eboxx = $(
						".effects_box ul li").width(), _eboxi = _ebox
						.find("li").length;
				_ebox.css({
					width : _eboxx * _eboxi
				});
			});

			$(".sibebox li").hover(
					function() {
						var _cbox = $(this).closest(".sibebox").find(
								".content .within")
						$(this).addClass("sel").siblings().removeClass("sel");
						_cbox.eq($(this).prevAll().length).show().siblings()
								.hide();
					});

		});
	</script>
	<!--<script type="text/javascript" src="js/slideshow.js"></script>-->

</body>
</html>
