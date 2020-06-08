<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.dao.*"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>预定行程</title>

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
<script language=javascript>
function window.onload() { 

	if(top.location != self.location){ 

	var a = window.parent.document.getElementsByTagName('iframe'); 

	for (var i=0; i<a.length; i++){ 

	if (a[i].name == self.name) {a[i].height = document.body.scrollHeight+320; return;}}} 
	}
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
					<form  name="f1" method="post" action="toursGroup!addGroup" onsubmit="return ck()" enctype="multipart/form-data">
				
						<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
							<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">旅行路线</td>
                            	<td bgcolor="#FFFFFF"><s:property value="toursRoute.title"/></td>
    						</tr>
    						<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">行程安排</td>
                            	<td bgcolor="#FFFFFF">
                            		<s:if test="placeList.size==0">
                            			<s:property value="toursRoute.route"/>
                            		</s:if>
                            		<s:iterator var="place" value="placeList">
                            		=><a href="/travel_agency/toursPlace!placeInfo?id=<s:property value='#place.id'/>">
                            		<s:property value="#place.name"/><s:property value="#place.name"/></a>
                            		</s:iterator>
                            	</td>
    						</tr>
    						<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">住宿安排</td>
                            	<td bgcolor="#FFFFFF">【五星级酒店】</td>
    						</tr>
    						<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">★用餐安排</td>
                            	<td bgcolor="#FFFFFF">中式午晚餐（五菜一汤）；10人一桌</td>
    						</tr>
    						<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">行程天数：</td>
                            	<td height="27" bgcolor="#FFFFFF"><s:property value="toursRoute.daysCount"></s:property>天</td>
    						</tr>
    							<input type="hidden" name="toursRouteId" id="toursRouteId" value='<s:property value="toursRoute.id"/>'/>
								<input type="hidden" name="unitPrice" id="unitPrice" value="<s:property value='toursRoute.unitPrice'/>"/>
                          	<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">价格</td>
                            	<td bgcolor="#FFFFFF">￥<s:property value="toursRoute.unitPrice"/></td>
    						</tr>
    						<tr>
                            	<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">出行日期</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="text" id="startDate" name="startDate"/>
									<s:date name="userBean.birthday" format="yyyy-MM-dd hh:MM:ss" /></td>
                            </tr>
                         	<tr>
                         		<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">报团人数</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input id="totalPeople" name="totalPeople" type="text" name="totalPeople"/></td>
        					</tr>
        					<tr>
                         		<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF">选择导游</td>
                            	<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<select name="toursGuideId">
									<option>请选择</option>
									<s:iterator var="ent" value="toursGuideList">
									<option value="<s:property value='#ent.guideId'/>"><s:property value="#ent.guideName"/></option>
									</s:iterator>
									</select></td>
        					</tr>
    						<tr>
    							<td height="27" align="center" background="/travel_agency/admin/images/index1_72.gif" bgcolor="#FFFFFF"></td>
    							<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;<input type="submit" value="立即预定"/><input type="reset" value="重置"/></td>
    						</tr>
                            <script type="text/javascript">
                            function ck(){
                            /*
                            	if(f1.guideName.value==""){
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