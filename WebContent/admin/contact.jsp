<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.*"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
<link rel="stylesheet" href="/travel_agency/admin/images/style.css" type="text/css"></link></head> 
<body>

<form id="form1" name="form1" method="post" action="/travel_agency/admin/customer.jsp?f=f">
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
          <tr>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">ID</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">姓名</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">邮箱</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">联系电话</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">主题</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF" colspan="3">操作</td>
         </tr>
         <tr><td>
         <s:if test="contactList==null||contactList.size()==0">
         无记录
         </s:if> 
         </td></tr>                      
         <s:iterator var="ent" value="contactList">
         <tr>
           <td height="26" align="center" bgcolor="#FFFFFF"><s:property value="#ent.getId()"></s:property></td>
           <td height="26" align="center" bgcolor="#FFFFFF"><s:property value="#ent.getUserName()"></s:property></td>
           <td height="26" align="center" bgcolor="#FFFFFF"><s:property value="#ent.getUserEmail()"></s:property></td>
           <td height="26" align="center" bgcolor="#FFFFFF"><s:property value="#ent.getUserPhone()"></s:property></td>
           <td height="26" width="500" align="center" bgcolor="#FFFFFF"><s:property value="#ent.getUserMsg()"></s:property></td> 
           <td height="26" align="center" bgcolor="#FFFFFF"><a href="/travel_agency/contact!delContact?id=<s:property value='#ent.getId()'/>">删除</a></td>
         </tr>
         </s:iterator> 
</table>      
</form> 		
</body>
</html>
