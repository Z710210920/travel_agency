<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>管理页面</title>

<!-- 调用CSS，JS -->
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
					<form  name="f1" method="post" action="toursRoute!updateRoute.action" onsubmit="return ck()">
				
						<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
                          	<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">路线编号</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<s:property value="#parameters.id"/>
                            	<input type="hidden" name="id" value="<s:property value='#parameters.id'/>"/>
                           	
    						</tr>
                          	<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">标题</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text" id="name" name="title" value="<s:property value='toursRoute.getTitle()'/>"/>例如：南京五日游</td>
    						</tr>
                         	<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">路线</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text" id="name" name="route" value="<s:property value='toursRoute.getRoute()'/>"/>格式为A景点_B景点_C景点，如：上海_苏州_杭州</td>
    						</tr>
                     		<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">单人价格</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text" id="phoneNumber" name="unitPrice" value="<s:property value='toursRoute.getUnitPrice()'/>"/>只允许输入数字</td>
    						</tr>
    						<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">行程天数</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;
                            	<select name="daysCount" style="width:100px">
                            	    <option value="<s:property value='toursRoute.getId()'/>"><s:property value='toursRoute.getId()'/>天</option>
	                            	<option value="1">1天</option>
	                            	<option value="2">2天</option>
	                            	<option value="3">3天</option>
	                            	<option value="4">4天</option>
	                            	<option value="5">5天</option>
	                            	<option value="5">5天</option>
	                            	<option value="6">6天</option>
	                            	<option value="7">7天</option>
	                            	<option value="8">8天</option>
	                            	<option value="9">9天</option>
	                            	<option value="10">10天</option>
	                            	<option value="11">15天</option>
	                            	<option value="20">20天</option>
                            	</select>
                            	</td>
    						</tr>
                         	<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">路线图片</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text" id="address" name="imgFile" value="<s:property value='toursRoute.getImgFile()'/>"/></td>
    						</tr>
    			
    						<tr>
    							<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF"></td>
    							<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="submit" value="提交"/><input type="reset" value="重置"/></td>
    						</tr>
                            <script type="text/javascript">
                            function ck(){
                            /*
                            	if(f1.name.value==""){
                            		alert("姓名不能为空");
                            		return false;
                            	}
                            	
                            	//身份证号校验
                            	if(isIdCardNo()==false) return false;
                            	//alert('ff');
                            	
                            	if(isTel(f1.phoneNumber)==false&&isMobile(f1.phoneNumber)==false)
                            	{
                            	   //alert('ccc');
                            	   alert('请输入正确的电话号码或手机号:电话号码格式为国家代码(2到3位)-区号(2到3位)-电话号码(7到8位)-分机号(3位)"');
                            	   return false;
                            	}else
                            	{
                            	   //alert('ddd');
                            	}
                            	*/
                            }

<%
String suc = (String)request.getAttribute("suc");
if(suc!=null)
{
 %>
 alert("操作成功");
location.replace("/travel_agency/admin/link.jsp");
 <%}%>
                            </script>
</table>      
</form>                 
</body>
</html>
