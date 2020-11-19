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
    
    
    
    
     <div class="inside_member">
     	<div class="member_leftnav">
       		<h3><strong>会员中心</strong></h3>
        		<h4>交易管理</h4>
        			<ul>
                    	<li><a href="#">订单管理</a></li>
                        <li><a href="#">我的积分</a></li>
                        <li><a href="#">缺货登记</a></li>
                        <li><a href="#">预定登记</a></li>
                        <li><a href="#">演出通知</a></li>
                        <li><a href="#">我的收藏</a></li>
                    </ul>
				
                
                <h4>账户中心</h4>
        			<ul>
               	    <li><a href="#">订单管理</a></li>
                        <li><a href="#">我的积分</a></li>
                        <li><a href="#">缺货登记</a></li>
                        <li><a href="#">预定登记</a></li>
                        <li><a href="#">演出通知</a></li>
                        <li><a href="#">我的收藏</a></li>
                    </ul>
                
                
        </div>	
        
        
        
        <div class="member_rightc">
          <div class="shouhuodiz member_boxsty">
       		<p class="stitle"><strong>收货地址</strong></p>
       		 	 
    <div class="content per-edit-list per-wd02">
    <form id="daform" action=" " method="post">
        <dl>
            <dt><span class="c4">*</span>收&nbsp;货&nbsp;人：</dt>
            <dd>
                <input type="text" class="input-text-2" name="UserName" id="UserName" value="" maxlength="27"/> 
            </dd>
        </dl>
        <dl>
            <dt><span class="c4">*</span>所在地区：</dt>
            <dd>
                <select class="sel-4" name="ProvinceID" id="ProvinceID" 
                    onchange="loadArea(jQuery('select[name=ProvinceID] option:selected').val(),'CityID','RegionID')">
                    <option value="-1">不限</option>
                                    <option value="851">北京</option>
                                    <option value="871">上海</option>
                                    <option value="892">广东</option>
                                    <option value="1579">浙江</option>
                                    <option value="1376">四川</option>
                                    <option value="1834">山东</option>
                                    <option value="2313">河北</option>
                                    <option value="1037">江苏</option>
                                    <option value="1208">天津</option>
                                    <option value="1702">辽宁</option>
                                    <option value="2147">河南</option>
                                    <option value="355">福建</option>
                                    <option value="585">湖北</option>
                                    <option value="701">湖南</option>
                                    <option value="2519">安徽</option>
                                    <option value="2647">黑龙江</option>
                                    <option value="3249">陕西</option>
                                    <option value="2023">广西</option>
                                    <option value="464">江西</option>
                                    <option value="199">重庆</option>
                                    <option value="2983">山西</option>
                                    <option value="241">贵州</option>
                                    <option value="3125">内蒙古</option>
                                    <option value="2811">吉林</option>
                                    <option value="847">香港特别行政区</option>
                                    <option value="1228">云南</option>
                                    <option value="80">新疆</option>
                                    <option value="3367">甘肃</option>
                                    <option value="849">澳门特别行政区</option>
                                    <option value="53">宁夏</option>
                                    <option value="839">台湾省</option>
                                    <option value="1184">海南</option>
                                    <option value="2901">西藏</option>
                                    <option value="1">青海</option>
                                </select>&nbsp;省&nbsp;
                <select class="sel-4" name="CityID" id="CityID" 
                    onchange="loadCod(jQuery('select[name=CityID] option:selected').val(),'RegionID')">
                    <option value="-1">不限</option>
                </select>&nbsp;市&nbsp;
                <select class="sel-5" name="RegionID" id="RegionID">
                    <option value="-1">不限</option>
                </select>&nbsp;区&nbsp; 
            </dd>
        </dl>
        <dl>
            <dt><span class="c4">*</span>街道地址：</dt>
            <dd>
                <input type="text" name="FullAddress" id="FullAddress" class="input-text-2" maxlength="100"/>
                <span class="per-txt">不需要重复填写省/市/区</span> 
            </dd>
        </dl>
        <dl>
            <dt>邮政编码：</dt>
            <dd>
                <input type="text" class="input-text-2" name="PostalCode" id="PostalCode" value=""/>
                <span class="per-txt">正确的邮编有助于加快送货速度</span> 
            </dd>
        </dl> 
        <dl> 
            <dt><span class="c4">*</span>手&#12288;&#12288;机：</dt> 
            <dd>
                <input type="text" class="input-text-2" name="Phone" id="Phone" value=""/> 
            </dd> 
          </dl> 
          <dl> 
            <dt>固定电话：</dt> 
            <dd>
                <input type="text" class="input-text-2" name="Tele" id="Tele" value=""/>
                <span class="per-txt">固定电话请带区号：如 01099998761</span>
            </dd> 
          </dl>
        <dl>
            <dt>身份证号：</dt>
            <dd>
                <input type="text" name="Card" id="Card" class="input-text-2"/>
                <span class="per-txt">用作取票凭证或兑换电子票/预定券的方式</span> 
            </dd>
        </dl>
 		
        <div>
          <label>
            <input type="submit" name="button2" id="button2" value="保存" class="buts" />
          </label>
        </div>
        
    </form>
    </div>
</div>

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
