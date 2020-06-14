<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.ssm.entity.User"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>注册页面</title>

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
</script>
<script type="text/javascript" src="../js/verfyUtil.js" charset="gbk"></script>
</head>
<body>
	<form id="f1" name="f1" method="post" action="login.do" target="_top">

		<table width="100%" border="0" cellpadding="0" cellspacing="1"
			bgcolor="#BBD3EB">
			<tr>
				<td height="27" align="center"
					background="/travel_agency/admin/images/index1_72.gif"
					bgcolor="#FFFFFF">用户名</td>
				<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text"
					id="name" name="name" /></td>
			</tr>
			<tr>
				<td height="27" align="center"
					background="/travel_agency/admin/images/index1_72.gif"
					bgcolor="#FFFFFF">密码</td>
				<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="password"
					id="password" name="password" /></td>
			</tr>
			<tr>
				<td height="27" align="center"
					background="/travel_agency/admin/images/index1_72.gif"
					bgcolor="#FFFFFF"></td>
				<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="button"
					value="提交" onclick="return ChHECKLOGIN()" /><input type="reset" value="重置" /></td>
			</tr>
			<script type="text/javascript">
                            function ChHECKLOGIN(){
                            	var data = $("#f1").serialize();
                        		$.ajax({
                        			type: "POST",
                                    url: "${pageContext.request.contextPath}/checklogin.do",
                                    dataType: "json",//预期服务器返回的数据类型
                                    data: data,
                                    processData:false,
                                    async:false,
                                    contentType:"application/x-www-form-urlencoded",
                                    success: function (result) {
                                        console.log(result);
                                        if (result.message == "true") {
                                            alert("登录成功！");
                                            document.getElementById("f1").submit();
                                        }
                                        else if(result.message == "false"){
                                        	alert("密码错误！");
                                        }
                                        else{
                                        	alert("登录失败！");
                                        }
                                    },
                                    error: function() {
                                    }
                                });
                            }
			</script>
		</table>
	</form>
</body>
</html>
