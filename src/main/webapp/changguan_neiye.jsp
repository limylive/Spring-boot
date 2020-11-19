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

<script type="text/javascript">
  $(function() {
    $('#cgCont3').show();
	$('#cgCont3').css({
		visibility:'hidden',
		height:1,
		overflow:'hidden'
	});
	$('#tab_hd li').eq(2).children('a').click(function(){
		$('#cgCont3').css({
			visibility:'visible',
			height:'auto'
		});
	});
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
    </div>
    
    
    <div class="changguan_focus"></div>
    
    
    
    <div class="inside_cgmain">
    	
        	<div class="hdwrap">
  <div class="hdflash f_list">
  <div class="flashlist">
    <div class="f_out">
      <a href="http://www.lanrentuku.com/" target="_blank">
        <img src="images/simg_18.jpg" width="624" height="360" />
      </a>  
    </div>
    <div class="f_out">
      <a href="http://www.lanrentuku.com/" target="_blank">
        <img src="images/simg_18.jpg" width="624" height="360" />
      </a>  
    </div>
    <div class="f_out">
      <a href="http://www.lanrentuku.com/" target="_blank">
        <img src="images/simg_18.jpg" width="624" height="360" />
      </a>  
    </div>
    <div class="f_out">
      <a href="http://www.lanrentuku.com/" target="_blank">
        <img src="images/simg_18.jpg" width="624" height="360" />
      </a>  
    </div>
    <div class="f_out">
      <a href="http://www.lanrentuku.com/" target="_blank">
        <img src="images/simg_18.jpg" width="624" height="360" />
      </a>  
    </div>
    <div class="f_out">
      <a href="http://www.lanrentuku.com/" target="_blank">
        <img src="images/simg_18.jpg" width="624" height="360" />
      </a>  
    </div>
    
  </div>
  <div class="flash_tab">
    <div class="tabs f_tabs" style="width:330px;">
      <ul>
        <li class="f_tab opdiv">
          <a href="javascript:void(0);" title="意外的恋爱时光 Love Speaks (2013)">
          </a>
        </li>
        <li class="f_tab opdiv">
          <a href="javascript:void(0);" title="钢铁侠3Iron Man 3 (2013)">
          </a>
        </li>
        <li class="f_tab opdiv">
          <a href="javascript:void(0);" title="致我们终将逝去的青春 So Young / To Our Youth That To Fading Away (2013)">
          </a>
        </li>
        <li class="f_tab opdiv">
          <a href="javascript:void(0);" title=" 疯狂原始人 The Croods (2013)">
          </a>
        </li>
        <li class="f_tab opdiv">
          <a href="javascript:void(0);" title="同谋 Conspirators (2013)">
          </a>
        </li>
        <li class="f_tab opdiv">
          <a href="javascript:void(0);" title="枪花 (2013)">
          </a>
        </li>
 
      </ul>
    </div>
  </div>
  <script type="text/javascript">
    FeatureList(".f_list", {
      "onclass": "noopdiv",
      "offclass": "opdiv",
      "pause_on_act": "mouseover",
      "interval": 5000,
      "speed": 5
    });
  </script>
</div>
</div>

<div class="right_cgjs">
	<div class="content">
    	<div class="cont">
    	<h1 class="yahei">深圳湾体育中心</h1>
    	<div class="js">
        	深圳湾体育中心位于南山后海中心区东北角、深圳湾15公里滨海休闲带中段，毗邻香港，是2011年第26届世界大学生夏季运动会的主要分会场， 也是深圳未来的重点城市景观和公共活动空间。整个项目占地约30.74公顷，总建筑面积达25.6万平方米，建成后将成为深圳市的又一座标志性建筑。
        </div>
        <p>场馆地址 : 深圳市南山区滨海大道辅路 <a href="#">[查看地图]</a></p>
        <div class="fx"><!-- Baidu Button BEGIN -->
<div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare">
<span class="bds_more" style="color:#FFF;">分享到：</span>
<a class="bds_qzone"></a>
<a class="bds_tsina"></a>
<a class="bds_tqq"></a>
<a class="bds_renren"></a>
<a class="bds_t163"></a>
<a class="shareCount"></a>
</div>
<script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=6693269" ></script>
<script type="text/javascript" id="bdshell_js"></script>
<script type="text/javascript">
document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
</script>
<!-- Baidu Button END --></div>
    </div>
		</div>
</div>
        
        
        <div class="clear"></div>
  
  
  	
    <div class="cg_infoleft">
    	 
        
        
        <div class="infoleft_box">
        
        	
            
            
        
    	
            <div id="cgCont1">
            	
                
                
            		
            
            	
           		<div class="list_box">
                	<div class="left"><a href="#"><img src="images/simg_15.jpg" width="134" height="178" /></a></div>
                    <div class="right">
                    	<h3 class="yahei"><a href="#">萧敬腾X何韵诗wish love live 2013深圳音乐会 [售票中]</a></h3>
                        <p>维也纳交响乐团名家四重奏由维也纳交响乐团和维也纳歌剧院的音乐家们组成，他们在精湛诠释室内话：4006-228-228</p>
                        <p>演出场馆：长沙贺龙体育场</p>
                        <p>演出时间：2013年04月28日——10月26日</p>
                    	<p class="buy"><a href="#"> </a></p>
                    </div>
                </div>
                
                <div class="list_box">
                	<div class="left"><a href="#"><img src="images/simg_15.jpg" width="134" height="178" /></a></div>
                    <div class="right">
                    	<h3 class="yahei"><a href="#">萧敬腾X何韵诗wish love live 2013深圳音乐会 [售票中]</a></h3>
                        <p>维也纳交响乐团名家四重奏由维也纳交响乐团和维也纳歌剧院的音乐家们组成，他们在精湛诠释室内话：4006-228-228</p>
                        <p>演出场馆：长沙贺龙体育场</p>
                        <p>演出时间：2013年04月28日——10月26日</p>
                    	<p class="buy"><a href="#"> </a></p>
                    </div>
                </div>
                
                
                <div class="list_box">
                	<div class="left"><a href="#"><img src="images/simg_15.jpg" width="134" height="178" /></a></div>
                    <div class="right">
                    	<h3 class="yahei"><a href="#">萧敬腾X何韵诗wish love live 2013深圳音乐会 [售票中]</a></h3>
                        <p>维也纳交响乐团名家四重奏由维也纳交响乐团和维也纳歌剧院的音乐家们组成，他们在精湛诠释室内话：4006-228-228</p>
                        <p>演出场馆：长沙贺龙体育场</p>
                        <p>演出时间：2013年04月28日——10月26日</p>
                    	<p class="buy"><a href="#"> </a></p>
                    </div>
                </div>
                
                
                <div class="list_box">
                	<div class="left"><a href="#"><img src="images/simg_15.jpg" width="134" height="178" /></a></div>
                    <div class="right">
                    	<h3 class="yahei"><a href="#">萧敬腾X何韵诗wish love live 2013深圳音乐会 [售票中]</a></h3>
                        <p>维也纳交响乐团名家四重奏由维也纳交响乐团和维也纳歌剧院的音乐家们组成，他们在精湛诠释室内话：4006-228-228</p>
                        <p>演出场馆：长沙贺龙体育场</p>
                        <p>演出时间：2013年04月28日——10月26日</p>
                    	<p class="buy"><a href="#"> </a></p>
                    </div>
                </div>
                
                
                
            </div>
            <div id="cgCont2">
          			<div class="changg_xxjs">
                    
                   	  <div>
                    	  <p><strong>国家大剧院简介</strong></p>
                    	  <p>　　中国国家大剧院位于北京市中心天安门广场西，人民大会堂西侧，西长安街以南，由国家大剧院主体建筑及南北两侧的水下长廊、地下停车场、人工湖、绿地组成，总占地面积11.89万平方米，总建筑面积约16.5万平方米，其中主体建筑10.5万中国国家大剧院标志平方米，地下附属设施6万平方米。国家大剧院内有四个剧场，中间为歌剧院、东侧为音乐厅、西侧为戏剧场，南门西侧是小剧场，四个剧场既完全独立又可通过空中走廊相互连通。<br />
                    	    <strong>歌剧院<br />
                   	        </strong>　　歌剧院华丽辉煌，主要上演歌剧、舞剧等、芭蕾舞及大型文艺演出，有观众席2398席（含站席）。歌剧院有具备推、拉、升、降、 转功能的先进舞台、可倾斜的芭蕾舞台板、可容纳三管乐队的升降乐池，其混响时间为1.6秒，符合歌剧及舞剧等的演出要求。<br />
                    	    <strong>音乐厅<br />
                   	        </strong>　　音乐厅风格清新、高雅，适于演奏大型交响乐、民族乐，并可举办各种音乐会，有2019个席位（含站席）。音乐厅内拥有国内最大的管风琴，能满足各种不同流派作品演出的需要。此外数码墙、极具现代美感的抽象浮雕天花板、GRC墙面、龟背反声板等设计能令声音均匀、柔和地扩散反射，使音乐厅实现了建筑美学和声学美学的完美结合。<br />
                    	    <strong>戏剧场<br />
                   	        </strong>　　戏剧场是国家大剧院最具民族特色的剧场，真丝墙面烘托出传统热烈的气氛，以上演戏曲、话剧等为主，有1035个席位（含站席）。 主舞台的“鼓筒式”转台可以达到边升降边旋转的舞台效果，独特的伸出式台唇设计非常符合中国传统戏剧表演的特点。<br />
                    	    <strong>小剧场<br />
                   	        </strong>　　小剧场观众座位共计556席，整体色调风格清新典雅，重点经营室内乐、小型独奏独唱、小剧场话剧、现代舞等艺术门类的演出。 剧场中白色浮雕的天花板、MLS声扩散墙、有保温及隔音效果的隔断墙等量身设计，使声音均匀、柔和地扩散反射，突出了自然人声的效果。<br />
                    	   </p>
                  	  </div>
                    	<strong>
                    	<div>
                    	  <p><strong>国家大剧院地址</strong></p>
                  	  </div>
                   	</strong></div>
            </div>
            <div id="cgCont3">
          		
                <div id="gallery" class="ad-gallery">
      <div class="ad-image-wrapper">
      </div>
      <div class="ad-controls">
      </div>
      <div class="ad-nav">
        <div class="ad-thumbs">
          <ul class="ad-thumb-list">
            <li>
              <a href="images/1.jpg">
                <img src="images/thumbs/t1.jpg" class="image0">
              </a>
            </li>
            <li>
              <a href="images/10.jpg">
                <img src="images/thumbs/t10.jpg" title="A title for 10.jpg" class="image1">
              </a>
            </li>
            <li>
              <a href="images/11.jpg">
                <img src="images/thumbs/t11.jpg" title="A title for 11.jpg"  class="image2">
              </a>
            </li>
            <li>
              <a href="images/12.jpg">
                <img src="images/thumbs/t12.jpg" title="A title for 12.jpg"   class="image3">
              </a>
            </li>
            <li>
              <a href="images/13.jpg">
                <img src="images/thumbs/t13.jpg" title="A title for 13.jpg"  class="image4">
              </a>
            </li>
            <li>
              <a href="images/14.jpg">
                <img src="images/thumbs/t14.jpg" title="A title for 14.jpg"  class="image5">
              </a>
            </li>
            <li>
              <a href="images/2.jpg">
                <img src="images/thumbs/t2.jpg" title="A title for 2.jpg"  class="image6">
              </a>
            </li>
            <li>
              <a href="images/3.jpg">
                <img src="images/thumbs/t3.jpg" title="A title for 3.jpg"   class="image7">
              </a>
            </li>
            <li>
              <a href="images/4.jpg">
                <img src="images/thumbs/t4.jpg" title="A title for 4.jpg"  class="image8">
              </a>
            </li>
            <li>
              <a href="images/5.jpg">
                <img src="images/thumbs/t5.jpg" title="A title for 5.jpg" class="image9">
              </a>
            </li>
            <li>
              <a href="images/6.jpg">
                <img src="images/thumbs/t6.jpg" title="A title for 6.jpg"  class="image10">
              </a>
            </li>
            <li>
              <a href="images/7.jpg">
                <img src="images/thumbs/t7.jpg" title="A title for 7.jpg" class="image11">
              </a>
            </li>
            <li>
              <a href="images/8.jpg">
                <img src="images/thumbs/t8.jpg" title="A title for 8.jpg"  class="image12">
              </a>
            </li>
            <li>
              <a href="images/9.jpg">
                <img src="images/thumbs/t9.jpg" title="A title for 9.jpg"  class="image13">
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
                
                
                
            </div>
            
            <div id="cgCont4">
            		
            </div>
        
    
    	</div>
        
        
        
        
        <ul class="idTabs cgTabs clearfix" id="tab_hd">
            <li><a href="#cgCont1" class="selected">近期演出</a></li>
            <li><a href="#cgCont2">场馆详情</a></li>
            <li><a href="#cgCont3">场馆美图</a></li>
            <li><a href="#cgCont4">场馆地图</a></li>
        </ul>
        
    </div>
    
    
    
    <div class="cg_righttj">
        	<div class="tj_cg">
            	<p class="cg_title"><strong>推荐</strong>场馆<span>Recommend</span></p>
            	<ul>
                	<li><a href="#"><img src="images/cg.jpg" width="185" height="120" /></a><p><a href="#">长沙贺龙体育场</a></p></li>
                    <li><a href="#"><img src="images/cg.jpg" width="185" height="120" /></a><p><a href="#">长沙贺龙体育场</a></p></li>
                    <li><a href="#"><img src="images/cg.jpg" width="185" height="120" /></a><p><a href="#">长沙贺龙体育场</a></p></li>
                    <li><a href="#"><img src="images/cg.jpg" width="185" height="120" /></a><p><a href="#">长沙贺龙体育场</a></p></li>
                    
                
                </ul>
            
            </div>
            
            <div class="tj_yc">
        		<p class="cg_title"><strong>推荐</strong>演出<span>Recommend</span></p>
            		<ul>
                        <li><a href="#">·钢琴是怎样练成的——泽泽钢琴独奏音</a></li>
                        <li><a href="#">·匈牙利交响乐团新年音乐会</a></li>
                        <li><a href="#">·卡士之夜——世界经典之声多媒体视听</a></li>
                        <li><a href="#">·2013年“雅韵三湘•好戏连台”红色剧院</a></li>
                        <li><a href="#">·麦迪2013美国篮球传奇巨星队中国行</a></li>
                        <li><a href="#">·何日君再来-邓丽君经典金曲长沙演唱会</a></li>
                    </ul>
                    
            
            </div>
        
        
        </div>
    
    
    
    
    <div class="clear"></div>
    
    
    
    
  
  
  
  
  
  
  
  
  
  
    
    
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
    
    
    	<div class="footer_img"><img src="images/footer_img.gif" width="41" height="57" /></div>
    </div>        
        
        
        
        
        
       
        
        
        
        


 
</body>
</html>
