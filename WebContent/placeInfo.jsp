<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.User"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
						<li> <a href="specials.jsp" id="s4" class="subNavBtn">导游信息</a> </li>
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
		<div class="tours">
		<s:if test="place==null">无该景点信息</s:if>
				<h3>景点名称:&nbsp;&nbsp;&nbsp;<s:property value="place.name"></s:property></h3>
				<div style="height:100px">
				<h3><s:property value="place.info"></s:property></h3>
				</div>
 		</div>
		<div class="heading1">
				<h3>其他景点</h3>
		</div>
			<div class="content-bot">
				<div class="col_1_of_4 span_1_of_a">
					<div class="container right">
						<img src="./images/pic6.jpg" alt="image">
						<article class="text css3-4">
							<h1><a href="#" class="css3-4">Thailand</a></h1>
						</article>
					</div>
			    </div>
				<div class="col_1_of_4 span_1_of_a">
					<div class="container right">
						<img src="./images/pic7.jpg" alt="image">
						<article class="text css3-4">
							<h1><a href="#" class="css3-4">Mexico</a></h1>
						</article>
					</div>
			    </div>
				<div class="col_1_of_4 span_1_of_a">
					<div class="container right">
						<img src="./images/pic8.jpg" alt="image">
						<article class="text css3-4">
							<h1><a href="#" class="css3-4">Italy</a></h1>
						</article>
					</div>
			    </div>
				<div class="col_1_of_4 span_1_of_a">
					<div class="container right">
						<img src="./images/pic9.jpg" alt="image">
						<article class="text css3-4">
							<h1><a href="#" class="css3-4">Thailand</a></h1>
						</article>
					</div>
			    </div>
				<div class="clear"></div>
		   </div>
	</div>
</div>
 <div class="main">
	<div class="wrap">
		<div class="tours">
			<h3>There are plenty of places that are worth seeing</h3>
				<div class="lsidebar span_1_of_single">
					  <img src="./images/single-img.jpg" alt=""/>
				</div>
				<div class="cont span_2_of_single1">
				       <h4>Lorem ipsum dolor consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.</h4>
					   	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</div>	
				 <div class="clear"></div>	
				 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
				 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait</p>
				 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
				 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait</p>		
		   </div>
	</div>
</div>
<div class="content-bot1">
 	<div class="wrap">
				<div class="col_1_of_4 span_1_of_4">
					<h3>目的地:</h3>
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
