<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.ssm.entity.User"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<title>管理页面</title>

<!-- 调用CSS，JS -->
<script type="text/javascript" src="/travel_agency/js/jquery-3.3.1.min.js"></script>
<link href="/travel_agency/admin/images/style.css" rel="stylesheet" type="text/css" />
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
					<form  id = "f1" name="f1" onsubmit="return false"action="getalluser.do" method="get">
				
						<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
						<input type="hidden" id="id" name="id" value="${user.id}"/>
                          	<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">姓名</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text" id="name" name="name" value="${user.name}"/></td>
    						</tr>
                         	<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">密码</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="password" id="password" name="password" value = ""/></td>
    						</tr>
                     		<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">性别</td>
								<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp; 
									<input type="radio" id="sex" name="sex" value="男" checked/>男 
									<input type="radio" id="sex" name="sex" value="女" />女
								</td>
    						</tr>
    						<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">省份</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text" id="province" name="province" value="${user.province}"/></td>
    						</tr>
    						<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">城市</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text" id="city" name="city" value="${user.city}"/></td>
    						</tr>
    						<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">住址</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text" id="address" name="address" value="${user.address}"/></td>
    						</tr>
    						<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">电话</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text" id="phone" name="phone" value="${user.phone}"/>只允许输入11位数字</td>
    						</tr>
    						<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">身份证号</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text" id="idnumber" name="idnumber" value="${user.idnumber}"/></td>
    						</tr>				
    						<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">朋友电话</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text" id="frPhoneNunber" name="frPhoneNunber" value="${user.frPhoneNunber}"/>只允许输入11位数字</td>
    						</tr>
    						<tr>
    							<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF"></td>
    							<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="button" value="提交" onclick = "EDITUSER()"/><input type="reset" value="重置"/></td>
    						</tr>
                            <script type="text/javascript">
                            function EDITUSER() {
                            	var data = $("#f1").serialize()
                            	var id = document.getElementById("idnumber"); 
                            	var name = document.getElementById("name");
                            	var sex = document.getElementById("sex");
                            	var password = document.getElementById("password");
                            	var province = document.getElementById("province");
                            	var city = document.getElementById("city");
                            	var address = document.getElementById("address");
                            	var phone = document.getElementById("phone");
                            	var frPhoneNunber = document.getElementById("frPhoneNunber");
                				if(name.value.length > 6 || name.value.length < 2){
                					alert("用户名长度异常！");
                					return false;
                				}
                				else if(province.value.length == ""){
                					alert("请填写省份！");
                					return false;
                				}
                				else if(city.value.length == ""){
                					alert("请填写城市！");
                					return false;
                				}
                				else if(address.value == ""){
                					alert("请填写住址！");
                					return false;
                				}
                				else if(!(/^1[3456789]\d{9}$/.test(phone.value))){ 
                			        alert("手机号码有误，请重填");  
                			        return false; 
                			    }
                				else if(!(/^1[3456789]\d{9}$/.test(frPhoneNunber.value))){
                					alert("手机号码有误，请重填");  
                			        return false; 
                				}
            					if (id.value.length != 15&&id.value.length != 18) {
            						alert("身份证有误，请重填");  
                			        return false; 
            					}
                                $.ajax({
                                    type: "POST",
                                    url: "${pageContext.request.contextPath}/update_user.do",
                                    dataType: "json",//预期服务器返回的数据类型
                                    data: data,
                                    processData:false,
                                    contentType:"application/x-www-form-urlencoded",
                                    success: function (result) {
                                        console.log(result);
                                        if (result.result == "true") {
                                            alert("修改成功！");
                                            location.href="/about.jsp";
                                        }
                                    },
                                    error: function() {
                                        alert("修改失败！请重试");
                                    }
                                });
                            }
                            </script>
</table>      
</form>                 
</body>
</html>
