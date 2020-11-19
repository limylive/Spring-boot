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
    
    
    
    <div class="inside_buycent">
    	<p class="your_post"><a href="#">梦田票务</a> > <a href="#">长沙</a> > <a href="#">话剧歌剧</a> > 2013长沙话剧 青蛇</p>
    		<div class="buy_maibox">
            	<h1 class="yahei">“天父之爱”史蒂夫•范中国巡回演奏会 北京站 </h1>
                <div class="left">
                    <div class="left_poster">
                        <a href="#"><img src="images/simg_16.jpg" width="278" height="384" /></a>
                    
                    </div>
 
                    <!-- Baidu Button BEGIN -->
                        <div id="bdshare" class="bdshare_t bds_tools_32 get-codes-bdshare">
                        
                       
                        </div>
                        <script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=6693269" ></script>
                        <script type="text/javascript" id="bdshell_js"></script>
                        <script type="text/javascript">
                        document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
                        </script>
                        <!-- Baidu Button END -->
                        <div class="clear"></div>

                                            
                </div>
                
                
                <div class="right">
                	<div class="piao_js">
                    	<p></p>
                        <p><span>演出时间： 2013-07-26</span>演出场馆： <a href="#">ThinkPad space(位于万事达中心内)</a></p>
                    
                       <div class="clear"></div>
 
                    </div>
                    
                   
                    
                    <p class="spz">预订登记</p> 
                	<div class="choose_box" style="background:#f7f7f7;">
 			        	 <div class="yud_box">
                         	<p># 本演出待定中，您可以进行预订登记。</p>
                            <p># 我们会记录您的基本信息，正式开票当天会按照预定顺序与您联系。</p>
                            <p># 演出的内容、价格、时间、场馆等信息，以最终电话确认为准。</p>
                         </div>
                         
                         <div class="yud_form">
                         <form id="form3" name="form3" method="post" action="">
                         	<p>　联系人：<input type="text" name="textfield2" id="textfield2" class="lx_put" /></p>
                            <p>所在城市：<input type="text" name="textfield2" id="textfield2" class="lx_put"  />
                             
                            </p>
               	          <p>　手机号：<input type="text" name="textfield2" id="textfield2" class="lx_put"  /></p>
                            <p>　　附言：<textarea name="textarea2" id="textarea2" cols="45" rows="5" class="lx_put2" ></textarea></p>  
                            <p>
                                <input type="submit" name="button3" id="button3" value="提交" class="tj_buts" />
                            </p>  
                       	  </form>
                         </div>
                    
                    </div>
                    
                    
                    <div class="buy_buttom"><a href="#"><img src="images/icon_buy2.gif"  width="158" height="50" /></a><a href="#"><img src="images/icon_gwc2.gif" width="158" height="50"/></a></div>
                    
                
                </div>
                
                
                
                
                <div class="clear"></div>
            	
                
                <div class="icon_guangfang">
                	<img src="images/guangfang.jpg" width="93" height="128" />
                </div>
                
                
            </div>
    
    
    </div>
    
	
    
    
    
    
    
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
         
         <p class="footer_zs">
         	<a href="#"><img src="http://www.hnpiao.com/themes/default/images/c_cx.png" width="114" height="41" /></a>
            <a href="#"><img src="http://www.hnpiao.com/themes/default/images/c_wx.jpg" width="114" height="41" /></a>
            <a href="#"><img src="http://www.hnpiao.com/themes/default/images/c_kq.jpg"  width="114" height="41" /></a>
            <a href="#"><img src="http://www.bcpcn.com/bcptags/img/BCP_cs.gif"  width="114" height="41" /></a>
         </p>
    
    
    	<div class="footer_img"><img src="images/footer_img.gif" width="41" height="57" /></div>
    </div>        
        
        
        
        
        
       
        
        
        
        


 
</body>
</html>
