<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/images/style.css" type="text/css"></link></head> 
<body>
<form method="post" action="${pageContext.request.contextPath }/toAddSalesman">
		<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
            <tr>
              <td width="200" height="26" align="center" bgcolor="#FFFFFF">业务员管理</td>
              <td height="26" align="left" bgcolor="#FFFFFF">
              	<input type="submit" value="添加推销员">
              </td>
            </tr>
		</table>
</form>
<br/>
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
          <tr>
            <td height="27" align="center" background="${pageContext.request.contextPath}/resources/admin/images/index1_72.gif" bgcolor="#FFFFFF">姓名</td>
            <td height="27" align="center" background="${pageContext.request.contextPath}/resources/admin/images/index1_72.gif" bgcolor="#FFFFFF">工号</td>
            <td height="27" align="center" background="${pageContext.request.contextPath}/resources/admin/images/index1_72.gif" bgcolor="#FFFFFF">性别</td>
            <td height="27" align="center" background="${pageContext.request.contextPath}/resources/admin/images/index1_72.gif" bgcolor="#FFFFFF">联系电话</td>
            <td height="27" align="center" background="${pageContext.request.contextPath}/resources/admin/images/index1_72.gif" bgcolor="#FFFFFF">身份证</td>
            <td height="27" align="center" background="${pageContext.request.contextPath}/resources/admin/images/index1_72.gif" bgcolor="#FFFFFF">业绩</td>
            <td height="27" align="center" background="${pageContext.request.contextPath}/resources/admin/images/index1_72.gif" bgcolor="#FFFFFF">操作</td>
         </tr> 
         
         	<c:if test ="${!empty salesmanList}">
         		<c:forEach items="${salesmanList}" var ="salesman">
         			<tr>
           				<td height="26" align="center" bgcolor="#FFFFFF">${salesman.name }</td>
           				<td height="26" align="center" bgcolor="#FFFFFF">${salesman.id }</td>
           				<td height="26" align="center" bgcolor="#FFFFFF">${salesman.sex }</td>
           				<td height="26" align="center" bgcolor="#FFFFFF">${salesman.phone }</td>
           				<td height="26" align="center" bgcolor="#FFFFFF">${salesman.idnumber }</td>
           				<td height="26" align="center" bgcolor="#FFFFFF">${salesman.performance }</td>
           				<td height="26" align="center" bgcolor="#FFFFFF"><a href="${pageContext.request.contextPath }/toEditSalesman.do?id=${salesman.id }">修改</a> | <a href="javascript:void(0)" onclick="del(${salesman.id })">删除</a></td>
         			</tr>
				</c:forEach>
			</c:if>
         	<c:if test="${empty salesmanList}">
         		<div>
         			<tr>
         			<td colspan="7" align="center">
         			暂无用户
         			</td>
         			</tr>
         		</div>
         	</c:if>      
</table>      
<script type="text/javascript">
function del(id){
	if (window.confirm("您确定要删除吗?"))
	{
		$.ajax({
			url:"${pageContext.request.contextPath }/delSalesman.do",
			type:"post",
			data:JSON.stringify({id:id}),
			contentType:"application/json;charset=UTF-8",
			dataType:"json",
			success:function(data){
				if(data!=null){
					if (data.id > 0){
						alert("删除成功！");
						window.location.reload();
					} else {
							alert("删除失败！");
							window.location.reload();
					}
				}
			}
		});
	}
}
</script>
</body>
</html>