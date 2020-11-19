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
<script src="js/foucsbox.js" type="text/javascript"></script>
<script type="text/javascript" src="js/bigpicroll.js"></script>
<script type="text/javascript" src="js/menu.js"></script>

<script type="text/javascript">
  $(function() {
  
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
    <div class="w1002">

      <div class="header_top">
        <a href="denglu.jsp" class="dl">用户登录</a><a href="zhuce.jsp"
          class="dl">注册用户</a>|<a href="member.jsp">我的梦田</a><a
          href="gowuche.jsp">购物车 </a> <b class="dl">0</b> 件
      </div>

      <div class="site_logo floatl">
        <a href="#"><img src="images/site_logo.gif" width="170" height="65" /></a>
      </div>

      <div class="header_city floatl">
        <h3> </h3>

      </div>


      <div class="header_search floatl">
        <p class="hot">热门搜索：</p>
          <form id="form1" name="form1" method="post" action="">
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
    
    
    
     <div class="help_center">
     		<p class="btitle yahei"><strong>帮助中心</strong><span>Help Center</span></p>
     
     			<div id="help_nav">
                
                	<div class="service-menu">

                        <strong class="menu-p menu-p-current"><i class="menu-i"></i><a href="#">账户安全</a></strong>
                        <div class="menu-c menu-c-current">
                            <ul>
                                <li><a href="#"> - 账户安全</a></li>
                                <li><a href="#"> - 找回密码</a></li>
                                <li><a href="#"> - 账户注册</a></li>
                                <li><a href="#"> - 账户绑定</a></li>
                                <li><a href="#"> - SSL安全证书</a></li>
                            </ul>
                        </div>
                        
                        
                        <strong class="menu-p"><i class="menu-i"></i><a href="#">账户安全</a></strong>
                        <div class="menu-c">
                            <ul>
                                <li><a href="#"> - 账户安全</a></li>
                                <li><a href="#"> - 找回密码</a></li>
                                <li><a href="#"> - 账户注册</a></li>
                                <li><a href="#"> - 账户绑定</a></li>
                                <li><a href="#"> - SSL安全证书</a></li>
                            </ul>
                        </div>
                        
                        <strong class="menu-p"><i class="menu-i"></i><a href="#">账户安全</a></strong>
                        <div class="menu-c">
                            <ul>
                                <li><a href="#"> - 账户安全</a></li>
                                <li><a href="#"> - 找回密码</a></li>
                                <li><a href="#"> - 账户注册</a></li>
                                <li><a href="#"> - 账户绑定</a></li>
                                <li><a href="#"> - SSL安全证书</a></li>
                            </ul>
                        </div>
                        
                        
                        <strong class="menu-p"><i class="menu-i"></i><a href="#">账户安全</a></strong>
                        <div class="menu-c">
                            <ul>
                                <li><a href="#"> - 账户安全</a></li>
                                <li><a href="#"> - 找回密码</a></li>
                                <li><a href="#"> - 账户注册</a></li>
                                <li><a href="#"> - 账户绑定</a></li>
                                <li><a href="#"> - SSL安全证书</a></li>
                            </ul>
                        </div>
                        
                        <strong class="menu-p"><i class="menu-i"></i><a href="#">账户安全</a></strong>
                        <div class="menu-c">
                            <ul>
                                <li><a href="#"> - 账户安全</a></li>
                                <li><a href="#"> - 找回密码</a></li>
                                <li><a href="#"> - 账户注册</a></li>
                                <li><a href="#"> - 账户绑定</a></li>
                                <li><a href="#"> - SSL安全证书</a></li>
                            </ul>
                        </div>
                        
                        
                        <strong class="menu-p"><i class="menu-i"></i><a href="#">账户安全</a></strong>
                        <div class="menu-c">
                            <ul>
                                <li><a href="#"> - 账户安全</a></li>
                                <li><a href="#"> - 找回密码</a></li>
                                <li><a href="#"> - 账户注册</a></li>
                                <li><a href="#"> - 账户绑定</a></li>
                                <li><a href="#"> - SSL安全证书</a></li>
                            </ul>
                        </div>
                        
                        
                        
                    </div>        			

	
                </div>
                
                
                
                <div class="helpcent_right">
                	<div class="help_title yahei">
                    	<strong>密码忘记了，如何找回？</strong>
                    </div>
                    <div class="huida_cont">
                   	  1、您可以在登录页面点击链接：找回密码<br />
                    	2、填入注册用的Email地址或手机号码<br />
                    	3、点击“下一步”<br />
                    	4、a)邮箱地址：进入邮箱点击重新设置密码的链接进入重设密码页面设置您常用的密码。<br />
b)手机号码：进入手机校验码界面，系统会向您的手机发送6位数字字母组合的校验码，将校验码正确输入后点击“下一步”进行重设  密码页面设置您常用的密码。s</div>
                
                
                </div>
                
                
                <div class="clear"></div>
     
     
     </div>
     
     <SCRIPT>
	 $("#left_nav > li").click(function(){if(false==$(this).next().is(':visible')){$('#left_nav > ul').slideUp(300);}
$(this).next().slideToggle(300);});$('#left_nav > ul:eq(0)').show();
</SCRIPT>
     
    
    
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
