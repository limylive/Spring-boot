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
          <div class="xiugaimima member_boxsty">
       		<p class="stitle"><strong>修改密码</strong></p>
            <form id="form2" name="form2" method="post" action="">
 					
		    <table width="337" height="141" border="0" cellpadding="0" cellspacing="0" class="ziliao_table">
 				   <tr>
 				     <td width="65">昵　　称：</td>
 				     <td width="272">
 				       <label>
 				         <input type="text" name="textfield2" id="textfield2" class="input-text-2" />
			           </label>
			         </td>
		      </tr>
 				   <tr>
 				     <td>真实姓名：</td>
 				     <td><input type="text" name="textfield3" id="textfield3" class="input-text-2" /></td>
		      </tr>
 				   <tr>
 				     <td>性　　别：</td>
 				     <td><label class="radio">
                        <input type="radio" id="sexRadio" value="1" name="Sex"  /><span class="m">男</span>
                    </label>
                    <label class="radio">
                        <input type="radio" id="sexRadio1" value="0" name="Sex"  checked="checked" /><span class="f">女</span>
                    </label>
&nbsp;</td>
		      </tr>
<script type="text/javascript" src="http://my.damai.cn/js/dateselects.js"></script>

				   <tr>
 				     <td>出生日期：</td>
 				     <td><script type="text/javascript">
                    FnCreateYearMonthDay('birthY', 1, 'birthM', 1, 'birthD', 1);
                </script> 
</td>
		      </tr>
 				   <tr>
 				     <td>婚姻状况：</td>
 				     <td><select name="Marriage" class="sel-3">
                        <option value="">请选择</option>
                                            <option value="已婚"  >已婚</option>
                                            <option value="恋爱中"  >恋爱中</option>
                                            <option value="单身"  >单身</option>
                                        </select>
</td>
		      </tr>
 				   <tr>
 				     <td>子女状况：</td>
 				     <td><label class="radio">
                        <input type="radio" id="CRadioGroup1_0" value="0" name="Children"  /><span>无</span>
                    </label>
                    <label class="radio">
                        <input type="radio" id="CRadioGroup1_1" value="1" name="Children"  /><span>有</span>
                    </label>
</td>
		      </tr>
 				   <tr>
 				     <td>教育程度：</td>
 				     <td>
                     	<select name="Education" class="sel-3">
                        <option value="">请选择</option>
                                            <option value="高中及以下"  >高中及以下</option>
                                            <option value="大学专科"  >大学专科</option>
                                            <option value="大学本科"  >大学本科</option>
                                            <option value="硕士"  >硕士</option>
                                            <option value="博士及以上"  >博士及以上</option>
                                        </select>

                     
                     </td>
		      </tr>
 				   <tr>
 				     <td>月 收 入：</td>
 				     <td>
                     	<select name="MonthInCome" class="sel-3">
                        <option value="">请选择</option>
                                            <option value="0"  >无收入</option>
                                            <option value="1999"  >2000元以下</option>
                                            <option value="2001"  >2000~3999元</option>
                                            <option value="4001"  >4000~5999元</option>
                                            <option value="6001"  >6000~7999元</option>
                                            <option value="8001"  >8000~9999元</option>
                                            <option value="10001"  >10000~15000元</option>
                                            <option value="15001"  >15000元以上</option>
                                        </select>

                     
                     </td>
		      </tr>
 				   <tr>
 				     <td>家　　乡：</td>
 				     <td><select id="hometownproid" name="PHometown" class="sel-4" 
                        onchange="loadArea(jQuery('select[name=PHometown] option:selected').attr('pid'),'hometowncityid')">
                        <option value="不限">不限</option>
                                            <option value="北京" pid="851"  >北京</option>
                                            <option value="上海" pid="871"  >上海</option>
                                            <option value="广东" pid="892"  >广东</option>
                                            <option value="浙江" pid="1579"  >浙江</option>
                                            <option value="四川" pid="1376"  >四川</option>
                                            <option value="山东" pid="1834"  >山东</option>
                                            <option value="河北" pid="2313"  >河北</option>
                                            <option value="江苏" pid="1037"  >江苏</option>
                                            <option value="天津" pid="1208"  >天津</option>
                                            <option value="辽宁" pid="1702"  >辽宁</option>
                                            <option value="河南" pid="2147"  >河南</option>
                                            <option value="福建" pid="355"  >福建</option>
                                            <option value="湖北" pid="585"  >湖北</option>
                                            <option value="湖南" pid="701"  >湖南</option>
                                            <option value="安徽" pid="2519"  >安徽</option>
                                            <option value="黑龙江" pid="2647"  >黑龙江</option>
                                            <option value="陕西" pid="3249"  >陕西</option>
                                            <option value="广西" pid="2023"  >广西</option>
                                            <option value="江西" pid="464"  >江西</option>
                                            <option value="重庆" pid="199"  >重庆</option>
                                            <option value="山西" pid="2983"  >山西</option>
                                            <option value="贵州" pid="241"  >贵州</option>
                                            <option value="内蒙古" pid="3125"  >内蒙古</option>
                                            <option value="吉林" pid="2811"  >吉林</option>
                                            <option value="香港特别行政区" pid="847"  >香港特别行政区</option>
                                            <option value="云南" pid="1228"  >云南</option>
                                            <option value="新疆" pid="80"  >新疆</option>
                                            <option value="甘肃" pid="3367"  >甘肃</option>
                                            <option value="澳门特别行政区" pid="849"  >澳门特别行政区</option>
                                            <option value="宁夏" pid="53"  >宁夏</option>
                                            <option value="台湾省" pid="839"  >台湾省</option>
                                            <option value="海南" pid="1184"  >海南</option>
                                            <option value="西藏" pid="2901"  >西藏</option>
                                            <option value="青海" pid="1"  >青海</option>
                                        </select>
                    <select id="hometowncityid" name="CHometown" class="sel-4">
                        <option value="不限">不限</option>
                    </select>
</td>
		      </tr>
 				   <tr>
 				     <td>现居住地：</td>
 				     <td><select id="hometownproid" name="PHometown" class="sel-4" 
                        onchange="loadArea(jQuery('select[name=PHometown] option:selected').attr('pid'),'hometowncityid')">
                        <option value="不限">不限</option>
                                            <option value="北京" pid="851"  >北京</option>
                                            <option value="上海" pid="871"  >上海</option>
                                            <option value="广东" pid="892"  >广东</option>
                                            <option value="浙江" pid="1579"  >浙江</option>
                                            <option value="四川" pid="1376"  >四川</option>
                                            <option value="山东" pid="1834"  >山东</option>
                                            <option value="河北" pid="2313"  >河北</option>
                                            <option value="江苏" pid="1037"  >江苏</option>
                                            <option value="天津" pid="1208"  >天津</option>
                                            <option value="辽宁" pid="1702"  >辽宁</option>
                                            <option value="河南" pid="2147"  >河南</option>
                                            <option value="福建" pid="355"  >福建</option>
                                            <option value="湖北" pid="585"  >湖北</option>
                                            <option value="湖南" pid="701"  >湖南</option>
                                            <option value="安徽" pid="2519"  >安徽</option>
                                            <option value="黑龙江" pid="2647"  >黑龙江</option>
                                            <option value="陕西" pid="3249"  >陕西</option>
                                            <option value="广西" pid="2023"  >广西</option>
                                            <option value="江西" pid="464"  >江西</option>
                                            <option value="重庆" pid="199"  >重庆</option>
                                            <option value="山西" pid="2983"  >山西</option>
                                            <option value="贵州" pid="241"  >贵州</option>
                                            <option value="内蒙古" pid="3125"  >内蒙古</option>
                                            <option value="吉林" pid="2811"  >吉林</option>
                                            <option value="香港特别行政区" pid="847"  >香港特别行政区</option>
                                            <option value="云南" pid="1228"  >云南</option>
                                            <option value="新疆" pid="80"  >新疆</option>
                                            <option value="甘肃" pid="3367"  >甘肃</option>
                                            <option value="澳门特别行政区" pid="849"  >澳门特别行政区</option>
                                            <option value="宁夏" pid="53"  >宁夏</option>
                                            <option value="台湾省" pid="839"  >台湾省</option>
                                            <option value="海南" pid="1184"  >海南</option>
                                            <option value="西藏" pid="2901"  >西藏</option>
                                            <option value="青海" pid="1"  >青海</option>
                                        </select>
                    <select id="hometowncityid" name="CHometown" class="sel-4">
                        <option value="不限">不限</option>
                    </select>
</td>
		      </tr>
 				   <tr>
 				     <td>详细地址：</td>
 				     <td> <input type="text" class="input-text-2" name="DetailAddress" value="" maxlength="100"/></td>
		      </tr>
 				   <tr>
 				     <td>身份证号：</td>
 				     <td><input id="cardinp" type="text" class="input-text-2" name="IdentityCard" value=""/></td>
		      </tr>
 				   <tr>
 				     <td>QQ：</td>
 				     <td><input id="qqinp" type="text" class="input-text-2"  name="QQ" value=""/></td>
		      </tr>
 				   <tr>
 				     <td>MSN：</td>
 				     <td><input id="qqinp" type="text" class="input-text-2" name="QQ" value=""/></td>
		      </tr>
 				   <tr>
 				     <td>主页/微博：</td>
 				     <td><input type="text" class="input-text-2" name="HomePage" value="" maxlength="200"/></td>
		      </tr>
 				 
 				   <tr>
 				     <td>&nbsp;</td>
 				     <td> <input type="submit" name="button2" id="button2" value="保存" class="tj_buts" style="margin-left:0;" /></td>
		      </tr>
		    </table>
            
            
            </form>
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
