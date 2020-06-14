<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.ssm.entity.User"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">   
    <script type="text/javascript" src="/travel_agency/js/jquery-3.3.1.min.js"></script>
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
<form method="post" action="/travel_agency/admin/userAdd.jsp">
		<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
            <tr>
              <td width="200" height="26" align="center" bgcolor="#FFFFFF">添加用户</td>
              <td height="26" align="left" bgcolor="#FFFFFF">
                <label>
                  &nbsp;<input type="submit" name="button" id="button" value="添加" />
                </label>                                                    </td>
            </tr>
		</table>
</form>
<form id="form1" name="form1" method="post" action="finduserbyname.do">
	<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB" >
         <tr>
           <td width="200" height="26" align="center" bgcolor="#FFFFFF">请输入姓名</td>
           <td height="26" align="left" bgcolor="#FFFFFF">
             <label>
               &nbsp;<input name="name" type="text" value="" id="name" size="40" />&nbsp;
               <input type="submit" name="button" id="button" value="查询" />
             </label>                                                    </td>
         </tr>
	</table>
<br/>
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
          <tr>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">ID</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">姓名</td>
            
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">性别</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">省份</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">城市</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">住址</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">联系方式</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">身份证号</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">朋友电话</td>
            <td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">管理</td>
         </tr>
         <c:if test ="${!empty userList}">
         		<c:forEach items="${userList}" var ="user">
         			<tr>
           				<td height="26" align="center" bgcolor="#FFFFFF" >${user.id }</td>
           				<td height="26" align="center" bgcolor="#FFFFFF">${user.name }</td>
           				<td height="26" align="center" bgcolor="#FFFFFF">${user.sex }</td>
           				<td height="26" align="center" bgcolor="#FFFFFF">${user.province }</td>
           				<td height="26" align="center" bgcolor="#FFFFFF" >${user.city }</td>
           				<td height="26" align="center" bgcolor="#FFFFFF" >${user.address }</td>
           				<td height="26" align="center" bgcolor="#FFFFFF" >${user.phone }</td>
           				<td height="26" align="center" bgcolor="#FFFFFF" >${user.idnumber }</td>
           				<td height="26" align="center" bgcolor="#FFFFFF" >${user.frPhoneNunber }</td>
           				<td height="26" align="center" bgcolor="#FFFFFF" ><a href="${pageContext.request.contextPath }/getUser.do?id=${user.id }&grand=7">修改</a> | <a href="getalluser.do" onclick="del(${user.id })">删除</a></td>
   	</tr>
				</c:forEach>
			</c:if>
         <tr>
           <td height="26" colspan="11" align="center" bgcolor="#FFFFFF">${page.info }</td>
           <script language="javascript" src="/travel_agency/js/popup.js"></script>
           <script language="javascript">
           function del(id){
        		if (window.confirm("您确定要删除吗?"))
        		{
        			$.ajax({
        				url:"${pageContext.request.contextPath }/deluser.do",
        				type:"post",
        				data:JSON.stringify({id:id}),
        				contentType:"application/json;charset=UTF-8",
        				dataType:"json",
        				success:function(data){
        					if(data!=null){
        						if (data.id > 0){
        							alert("删除成功！");
        						} else {
        								alert("删除失败！");
        						}
        					}
        				}
        			});
        		}
        	}
           </script>                           
         </tr>
</table>      
</form> 		
</body>
</html>
