<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.ssm.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">   
    <title>My JSP 'user.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	    <!-- 调用CSS，JS -->

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "宋体";
	font-size: 12px;
	color: #333333;
	background-color: ;
}
.STYLE1 {
	color: #333333;
	font-size: x-large;
	font-family: Arial, Helvetica, sans-serif;
}
-->
</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/images/style.css" type="text/css"></link></head> 
<body>
<form method="post" action="toursRoute!addRoutePage.action">
		<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
            <tr>
              <td width="200" height="26" align="center" bgcolor="#FFFFFF">业绩查询</td>
            </tr>
		</table>
</form>
<form id="form1" name="form1" method="post" action="/travel_agency/admin/customer.jsp?f=f">
	
<br/>
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
          <tr>
            <td height="27" align="center" background="${pageContext.request.contextPath}/resources/admin/images/index1_72.gif" bgcolor="#FFFFFF">姓名</td>
            <td height="27" align="center" background="${pageContext.request.contextPath}/resources/admin/images/index1_72.gif" bgcolor="#FFFFFF">性别</td>
            <td height="27" align="center" background="${pageContext.request.contextPath}/resources/admin/images/index1_72.gif" bgcolor="#FFFFFF">联系电话</td>
            <td height="27" align="center" background="${pageContext.request.contextPath}/resources/admin/images/index1_72.gif" bgcolor="#FFFFFF">身份证</td>
            <td height="27" align="center" background="${pageContext.request.contextPath}/resources/admin/images/index1_72.gif" bgcolor="#FFFFFF">绩效</td>
         </tr> 
         <tr>
           <td height="26" align="center" bgcolor="#FFFFFF">${name }</td>
           <td height="26" align="center" bgcolor="#FFFFFF">${sex }</td>
           <td height="26" align="center" bgcolor="#FFFFFF">${phone }</td>
           <td height="26" align="center" bgcolor="#FFFFFF">${idnumber }</td>
           <td height="26" align="center" bgcolor="#FFFFFF">${performance }</td>
         </tr>
</table>      
</form> 		
</body>
</html>
