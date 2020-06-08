<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.*"%>
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
					<form  name="f1" method="post" action="toursRoute!addRoute.action" onsubmit="return ck()" enctype="multipart/form-data">
				
						<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
                          	<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">标题</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text" id="title" name="title"/>例如：南京五日游</td>
    						</tr>
                         	<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">路线</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;
                            	添加景点<select name="addPlace" onchange="selectPlace(this)">
                            	<option selected="true">请选择</option>
                            	<s:iterator var="ent" value="placeList">
                            	<option value="<s:property value='#ent.getName()'/>"><s:property value="#ent.getName()"/></option>
                            	</s:iterator>
                            	</select>
                            	<input type="button" onclick="resetPlace()" value="重置路线"/>
                            	<input type="text" id="route" name="route" value="" readonly="readonly"/>格式为A景点_B景点_C景点，如：上海_苏州_杭州</td>
    						</tr>
                     		<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">单人价格</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text" id="phoneNumber" name="unitPrice"/>只允许输入数字</td>
    						</tr>
    						<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">行程天数</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;
                            	<select name="daysCount" style="width:100px">
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
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;上传图片
                            	<input type="file" id="imgFile" name="imgFile"/>
                            	</td>
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
