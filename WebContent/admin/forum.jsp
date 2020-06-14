<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.ssm.entity.*"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>管理页面</title>

<!-- 调用CSS，JS -->
<script type="text/javascript"
	src="/travel_agency/js/jquery-3.3.1.min.js"></script>
<link href="/travel_agency/admin/images/style.css" rel="stylesheet"
	type="text/css" />
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
	background-color:;
}

.STYLE1 {
	color: #333333;
	font-size: x-large;
	font-family: Arial, Helvetica, sans-serif;
}
-->
</style>

<script language="javascript">
function window.onload() { 

if(top.location != self.location){ 

var a = window.parent.document.getElementsByTagName('iframe'); 

for (var i=0; i<a.length; i++){ 

if (a[i].name == self.name) {a[i].height = document.body.scrollHeight+320; return;}}} 
} 
</script>
<script language=javascript>
function show(no)
{
for(var i=1;i<20;i++)
{
var a = document.getElementById(no+"@"+i);
if(a==null)
{
continue;
}
if(a.style.display=="")
{
a.style.display="none";
}else{
a.style.display="";
}
}

}
</script>
<script type="text/javascript">
function showzhi(inn)
{
var a = document.getElementById("loca");
a.innerHTML=inn;
}
function change(no)
{
var c = document.getElementById("c");
c.innerHTML=no;
}

function selectPlace(obj)
{
   if(obj!=null)
   {
  	 var place=obj.value;
  	 var route=document.getElementById("route");
  	 if(route.value=="")document.getElementById("route").value=place;
  	 else route.value+="_"+place;
  	 obj.options[0].selected=true;
   }
}

function resetPlace()
{
     document.getElementById("route").value=null;
}
</script>
<script type="text/javascript" src="../js/verfyUtil.js" charset="gbk"></script>
</head>
<body>
	<c:if test="${!empty postList}">
		<c:forEach items="${postList}" var="post">
			<a href="detailed.do?id=${post.id }&userName=${param.userName}">
				<table width="100%" style="border: 1px solid #000000;" border="0"
					cellpadding="0" cellspacing="0" bgcolor="#BBD3EB">
					<tr>
						<%-- <td height="26" align="center" bgcolor="#FFFFFF" >${post.id }</td> --%>
						<td height="26" align="center" bgcolor="#FFFFFF">标题:${post.theme }</td>
						<td height="26" align="center" bgcolor="#FFFFFF">姓名:${post.userName }</td>
						<td height="26" align="center" bgcolor="#FFFFFF">发帖时间:<fmt:formatDate value="${post.createtime }" pattern="yyyy-MM-dd"/></td>
						<td height="26" align="center" bgcolor="#FFFFFF">更新时间:<fmt:formatDate value="${post.updatetime }" pattern="yyyy-MM-dd"/></td>
						<td height="26" align="center" bgcolor="#FFFFFF">点击量:${post.traffic}</td>
						<%-- <td height="26" align="center" bgcolor="#FFFFFF" ><a href="${pageContext.request.contextPath }/getUser.do?id=${user.id }&grand=7">修改</a> | <a href="getalluser.do" onclick="del(${user.id })">删除</a></td> --%>
					</tr>
					<tr>
						<td colspan="5" height="27" align="left" bgcolor="#FFFFFF">内容：${post.text}</td>
					</tr>
				</table>
			</a>
		</c:forEach>
	</c:if>
	<form name="f1" id="f1" method="get" action="getallpost.do?username=${param.userName}">

		<table width="100%" border="0" cellpadding="0" cellspacing="1"
			bgcolor="#BBD3EB">
			<input type="hidden" id="userName" name="userName" value="${param.userName}"/>
			<tr>
				<td height="27" align="center"
					background="/travel_agency/admin/images/index1_72.gif"
					bgcolor="#FFFFFF">主题</td>
				<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text"
					id="theme" name="theme" style="height: 20px; width: 300px" /></td>
			</tr>
			<tr>
				<td height="27" align="center"
					background="/travel_agency/admin/images/index1_72.gif"
					bgcolor="#FFFFFF">内容</td>
				<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text"
					id="text" name="text" style="height: 100px; width: 300px" />最多255字
				</td>
			</tr>
			<tr>
				<td height="27" align="center"
					background="/travel_agency/admin/images/index1_72.gif"
					bgcolor="#FFFFFF"></td>
				<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="button"
					value="发表" onclick="ADDPOST()" /><input type="reset" value="重置" /></td>
			</tr>
			<script type="text/javascript">
			function ADDPOST() {
            	var data = $("#f1").serialize();
            	alert(data);
                $.ajax({
                    type: "POST",
                    url: "${pageContext.request.contextPath}/postAdd.do",
                    dataType: "json",//预期服务器返回的数据类型
                    data: data,
                    processData:false,
                    contentType:"application/x-www-form-urlencoded",
                    success: function (result) {
                        console.log(result);
                        if (result.result == "true") {
                            alert("发表成功！");
                            location.href="getallpost.do?userName=${param.userName}";
                        }
                    },
                    error: function() {
                        alert("发表失败！请重试");
                    }
                });
            }
                            </script>
		</table>
	</form>
</body>
</html>
