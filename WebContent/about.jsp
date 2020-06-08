<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.User"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Free Our-Trav Website Template | About :: w3layouts</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="./css/style.css" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
</head>
<body>
<% User user = (User)session.getAttribute("user"); %>
   <div class="header-top">
	<div class="wrap">
			<div class="logo">
				<a href="index.html"><img src="./images/logo.png" alt=""/></a>
			</div>
	    <ul class="follow_icon">
	    <%if(user!=null){ %>
	   	    <li><a href="toursGroup!userPlan" style="opacity: 2;"><span style="color:white">[订单]</span></a></li>
	        <li><a href="login.jsp" style="opacity: 1;"><span style="color:white">当前登录：<%=user.getName() %> |</span></a></li>
	        <li><a href="user!quit" style="opacity: 1;"><span style="color:white">退出</span></a></li>
	        <%}else{ %>
	        <li><a href="login.jsp" style="opacity: 1;"><span style="color:white">登陆 |</span></a></li>
			<li><a href="register.jsp" style="opacity: 1;"><span style="color:white">注册</span></a></li>
			<%} %>
		</ul>
		 <div class="clear"></div>
	</div>
   </div>
   <div class="header-bottom"> 
		<div class="wrap"> 
			  <div class="subMenu1 smint">
 	           	 <div class="inner">
					<ul>
						<li> <a href="index.jsp" id="sTop" class="subNavBtn">主页</a> </li>
						<li class="active"> <a href="about.jsp" id="s1" class="subNavBtn">关于</a> </li>
						<li> <a href="toursRoute" id="s2" class="subNavBtn">旅游路线</a> </li>
						<li> <a href="toursGuide" id="s4" class="subNavBtn">导游信息</a> </li>
						<li> <a href="contact.jsp" id="s3" class="subNavBtn">联系我们</a> </li>
					    <div class="clear"></div>
					 </ul>
				  </div>
				</div>
			    <div class="clear"></div>
			</div>
	  </div>   
 <div class="main">
	<div class="wrap">
		<div class="heading">
				<h3>关于 我们</h3>
				<p>XX旅行社创立于XXXX年XX月，以“让旅游更简单”为使命，为消费者提供由北京、上海、广州、深圳等64个城市出发的旅游产品预订服务，产品全面，价格透明，全年365天24小时400电话预订，并提供丰富的后续服务和保障。</p>
				<p>XX旅行社提供8万余种旅游产品供消费者选择，涵盖跟团、自助、自驾、邮轮、酒店、签证、景区门票以及公司旅游等，已成功服务累计超过400万人次出游。</p>
				<h4>跟团游</h4>
				<p>包括周边短线游、国内长线、出境游，行程透明、质量可靠。</p>
				<h4>自助游</h4>
				<p>海岛、港澳、三亚、丽江、九寨沟、厦门等既有国内外自助游套餐亦可单订某项产品或任意搭配组合。</p>
				<h4>景点门票</h4>
				<p>数千家精品景区，超低价订购。</p>
				<h4>住宿</h4>
				<p>5A级宾馆</p>
				</div>
			
	</div>
</div>
<div class="content-bot1">
 	<div class="wrap">
				<div class="col_1_of_4 span_1_of_4">
					<h3>Destinations:</h3>
					<div class="world">
              <span></span>
           </div>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<img src="./images/pic3.jpg" alt=""/>
					<figcaption>
						<div class="col-1">
                              <a href="more.html">Lorem ipsum dolor</a>
                              <div class="para">vallis euismod Vestibulum ante ipsum fau cibus.</div>
                         </div>
                         <div class="price-1"><strong>$599</strong></div>
                    </figcaption>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<img src="./images/pic4.jpg" alt=""/>
					<figcaption>
						<div class="col-1">
                              <a href="more.html">Lorem ipsum dolor</a>
                              <div class="para">vallis euismod Vestibulum ante ipsum fau cibus.</div>
                        </div>
                        <div class="price-1"><strong>$599</strong></div>
                    </figcaption>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<img src="./images/pic5.jpg" alt=""/>
					<figcaption>
							<div class="col-1">
                                 <a href="more.html">Lorem ipsum dolor</a>
                                 <div class="para">vallis euismod Vestibulum ante ipsum fau cibus.</div>
                            </div>
                           <div class="price-1"><strong>$599</strong></div>
                    </figcaption>
				</div>
				<div class="clear"></div>
		   </div>
	</div>
<div class="footer">
 	<div class="wrap">
 		<div class="copy">
			<p> Â© 2013 All rights Reserved | Design by <a href="http://w3layouts.com">W3Layouts</a></p>
		</div>
 	</div>
 </div>
</body>
</html>
