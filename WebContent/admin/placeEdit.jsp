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
					<form  name="f1" method="post" action="toursPlace!updatePlace.action" onsubmit="return ck()" enctype="multipart/form-data">
				
						<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
						    <tr><td><input type="hidden" id="id"name="id" value='<s:property value="place.id"/>'></input></td></tr>
                          	<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">景点名称</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text" id="name" name="name" value='<s:property value="place.name"/>'/>例如：夫子庙</td>
    						</tr>
                         	<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">所在城市</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;
                            	<select name="cityId" onchange="selectCity(this)">
                            	<option value="<s:property value="place.city.id"/>" selected="true"><s:property value="place.city.name"/></option>
                            	<s:iterator var="ent" value="cityList">
                            	<s:if test="#ent.id==#place.city.id">
                            	<option value="<s:property value='#ent.getId()'/>" selected="true"><s:property value="#ent.getName()"/></option>
                            	</s:if>
                            	<s:else>
                            	<option value="<s:property value='#ent.getId()'/>"><s:property value="#ent.getName()"/></option>
                            	</s:else>                          	
                            	</s:iterator>
                            	</select>
                            	</td>
        					</tr>
                     		<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" style="background-repeat:no-repeat" bgcolor="#FFFFFF">景点介绍</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<textarea id="info" name="info" style="height:100px;width:300px"><s:property value="place.info"/></textarea>最多500字</td>
    						</tr>
    						<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">景点级别</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;
                            	<select name="level" style="width:200px">
                            	    <option value="<s:property value='place.level'/>" selected="true"><s:property value='place.level'/></option>
	                            	<option value="AAAAA">国家AAAAA旅游景区</option>
	                            	<option value="AAAA">国家AAAA旅游景区</option>
	                            	<option value="AAA">国家AAA旅游景区</option>
                            	</select>
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
