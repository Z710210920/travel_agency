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
    <title>guide</title>
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
	<s:set name="key" value=""/>
	<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB" style="display:none">
         <tr>
           <td width="200" height="26" align="center" bgcolor="#FFFFFF">请输入相关信息</td>
           <td height="26" align="left" bgcolor="#FFFFFF">
             <label>
               &nbsp;<input name="key" type="text" value="<s:property value='#key'/>" id="textfield" size="40" />&nbsp;
               <input type="submit" name="button" id="button" value="查询" />
             </label>                                                    </td>
         </tr>
	</table>
<br/>
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
          <tr>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">导游ID</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">导游姓名</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">性别</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">年龄</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">信息</td>
         </tr>                       
         <s:iterator var="ent" value="toursGuideList">
         <tr>
           <td height="26" align="center" bgcolor="#FFFFFF"><s:property value="#ent.getGuideId()"></s:property></td>
           <td height="26" align="center" bgcolor="#FFFFFF"><s:property value="#ent.getGuideName()"></s:property></td>
           <td height="26" align="center" bgcolor="#FFFFFF"><s:property value="#ent.getGuideSex()"></s:property></td>
           <td height="26" align="center" bgcolor="#FFFFFF"><s:property value="#ent.getGuideAge()"></s:property></td>
           <td height="26" align="center" bgcolor="#FFFFFF"><s:property value="#ent.getGuideInfo()"></s:property></td> 
         </tr>
         </s:iterator> 
         <tr>
           <td height="26" colspan="11" align="center" bgcolor="#FFFFFF">${page.info }</td>
           <script language="javascript" src="/travel_agency/js/popup.js"></script>
           <script language="javascript">
           function update(no)
           {
              window.location="/travel_agency/admin/customeredit.jsp?id="+no;
           }
           </script>                           
         </tr>
</table>      
</form> 		
</body>
</html>
