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
<form method="post" action="/travel_agency/admin/customeradd.jsp" style="display:none">
		<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB" >
            <tr>
              <td width="200" height="26" align="center" bgcolor="#FFFFFF">添加用户</td>
              <td height="26" align="left" bgcolor="#FFFFFF">
                <label>
                  &nbsp;<input type="submit" name="button" id="button" value="添加" />
                </label>                                                    </td>
            </tr>
		</table>
</form>
<form id="form1" name="form1" method="post" action="/travel_agency/admin/customer.jsp?f=f">
	<s:set name="key" value=""/>
<br/>
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB" >
          <tr>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">团队ID</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">报团人姓名</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">旅游路线</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">导游</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">团队人数</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">团队费用</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">出发日期</td>
         </tr>                       
         <s:iterator var="ent" value="toursGroupList">
         <tr>
           <td height="26" align="center" bgcolor="#FFFFFF"><s:property value="#ent.getGroudId()"></s:property></td>
           <td height="26" align="center" bgcolor="#FFFFFF"><s:property value="#ent.getUser().getName()"></s:property></td>
           <td height="26" align="center" bgcolor="#FFFFFF"><s:property value="#ent.getToursRoute().getTitle()"></s:property></td>
           <td height="26" align="center" bgcolor="#FFFFFF"><s:property value="#ent.getToursGuide().getGuideName()"></s:property></td>
           <td height="26" align="center" bgcolor="#FFFFFF"><s:property value="#ent.getTotalPeople()"></s:property></td> 
           <td height="26" align="center" bgcolor="#FFFFFF"><s:property value="#ent.getTotalPrice()"></s:property></td> 
           <td height="26" align="center" bgcolor="#FFFFFF"><s:date name="#ent.getStartDate()" format="yyyy-MM-dd hh:mm"/></td>         
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
