<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.ssm.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>管理页面</title>

<!-- 调用CSS，JS -->
<link href="${pageContext.request.contextPath}/resources/admin/images/style.css" rel="stylesheet" type="text/css" />
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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/fun.base.js" charset="gbk"></script>
</head>
<body>
<form  name="f1" method="post" action="${pageContext.request.contextPath }/addSalesman.do" onsubmit="return ck()">
				
						<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
                          	<tr>
                            	<td height="27" align="center" background="${pageContext.request.contextPath}/resources/admin/images/index1_72.gif" bgcolor="#FFFFFF">姓名</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text"  name="name"/></td>
    						</tr>
                         	<tr>
                            	<td height="27" align="center" background="${pageContext.request.contextPath}/resources/admin/images/index1_72.gif" bgcolor="#FFFFFF">性别</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text"  name="sex" /></td>
        					</tr>
        					<tr>
                            	<td height="27" align="center" background="${pageContext.request.contextPath}/resources/admin/images/index1_72.gif" bgcolor="#FFFFFF">联系电话</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text" id="phone"  name="phone" /></td>
        					</tr>
        					<tr>
                            	<td height="27" align="center" background="${pageContext.request.contextPath}/resources/admin/images/index1_72.gif" bgcolor="#FFFFFF">身份证</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text" id="idnumber"  name="idnumber" /></td>
        					</tr>
    						<tr>
    							<td height="27" align="center" background="${pageContext.request.contextPath}/resources/admin/images/index1_72.gif" bgcolor="#FFFFFF"></td>
								<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="submit" value="提交"/><input type="reset" value="重置"/></td>
    						</tr>
                            <script type="text/javascript" charset="utf-8">
                            function ck(){
                           
                            	if(f1.name.value==""){
                            		alert("姓名不能为空");
                            		return false;
                            	}
                            	
                            	//身份证号校验
                            	if(isIdCardNo()==false) return false;
                            	//alert('ff');
                            	
                            	if(checkPhone()==false) return false;
                            	return true;
                            }

</script>
</table>      
</form>               
</body>
</html>