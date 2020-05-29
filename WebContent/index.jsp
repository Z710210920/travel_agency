<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>旅行社管理系统</title> <!-- 调用CSS，JS -->
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
	background-color: #2286C2;
}

.STYLE1 {
	color: #333333;
	font-size: x-large;
	font-family: Arial, Helvetica, sans-serif;
}
-->
</style>

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
	<%
String roletype="用户";//替换user.getRole().equals("管理员")
 %>

</head>
<body onload="showLeftTime()">
	<script language="javascript" type="text/javascript">
</script>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td height="74" colspan="2"
				background="/travel_agency/admin/images/index1_03.gif">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="2%" rowspan="2">&nbsp;</td>
						<td width="31%" rowspan="2"><span class="STYLE1">旅行社信息系统</span></td>
						<td width="6%" rowspan="2">&nbsp;</td>
						<td width="61%" height="38" align="right">&nbsp;</td>
					</tr>
					<tr id="4@1">
						<td align="right">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<a href="register.jsp" class="font2" target="main"><strong>&nbsp;&nbsp;注册</strong></a>&nbsp;
								<a href="login.jsp" class="font2" target="main"><strong>&nbsp;&nbsp;登录</strong></a>&nbsp;
								</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<table width="100%" border="0" cellspacing="10" cellpadding="0">
					<tr>
						<td width="10%" valign="top">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="8" height="8"><img
										src="/travel_agency/admin/images/index1_23.gif" width="8"
										height="29" /></td>
									<td width="99%"
										background="/travel_agency/admin/images/index1_24.gif"></td>
									<td width="8" height="8"><img
										src="/travel_agency/admin/images/index1_26.gif" width="8"
										height="29" /></td>
								</tr>
								<tr>
									<td background="/travel_agency/admin/images/index1_45.gif"></td>
									<td bgcolor="#FFFFFF"
										style="padding: 0 2px 0 2px; vertical-align: top; height: 600px;">

										<table width="230" border="0" cellpadding="0" cellspacing="5">

											<%if(roletype.equals("用户")) {%>
											<tr onClick="show('1')" style="cursor: hand">
												<td width="12%" align="center"><img
													src="/travel_agency/admin/images/index1_54.gif" width="15"
													height="11" /></td>
												<td width="88%">旅行管理</td>
											</tr>

											<tr id="1@1">
												<td align="center"></td>
												<td>
													<table width="100%" border="0" cellspacing="5"
														cellpadding="0">
														<tr onClick="change('旅行管理 > 旅行路线')" style="cursor: hand">
															<td width="18%" align="center"><img
																src="/travel_agency/admin/images/index1_68.gif"
																width="11" height="14" /></td>
															<td width="82%"><s:if test=""></s:if><a
																href="travel_route_user.jsp" target="main">旅行路线</a></td>
														</tr>

														<tr onClick="change('旅行管理 > 导游信息')" style="cursor: hand">
															<td width="18%" align="center"><img
																src="/travel_agency/admin/images/index1_68.gif"
																width="11" height="14" /></td>
															<td width="82%"><a href="specials.jsp" target="main">导游信息</a></td>
														</tr>
														<tr onClick="change('旅行管理 > 订单查询')" style="cursor: hand">
															<td width="18%" align="center"><img
																src="/travel_agency/admin/images/index1_68.gif"
																width="11" height="14" /></td>
															<td width="82%"><a href="ding.jsp"
																target="main">订单查询</a></td>
														</tr>
														<tr onClick="change('旅行管理 > 购物车')" style="cursor: hand">
															<td width="18%" align="center"><img
																src="/travel_agency/admin/images/index1_68.gif"
																width="11" height="14" /></td>
															<td width="82%"><a href="gou.jsp"
																target="main">购物车</a></td>
														</tr>
														<%} %>
														<tr onClick="change('旅行管理 >推广链接')" style="cursor: hand">
															<td width="18%" align="center"><img
																src="/travel_agency/admin/images/index1_68.gif"
																width="11" height="14" /></td>
															<td width="82%"><a href="salesman_promote.jsp"
																target="main">推广链接</a></td>
														</tr>
														<tr onClick="change('旅行管理 > 推广查询')" style="cursor: hand">
															<td width="18%" align="center"><img
																src="/travel_agency/admin/images/index1_68.gif"
																width="11" height="14" /></td>
															<td width="82%"><a href="salesman_query.jsp"
																target="main">推广查询</a></td>
														</tr>
														<tr onClick="change('旅行管理 > 论坛')" style="cursor: hand">
															<td width="18%" align="center"><img
																src="/travel_agency/admin/images/index1_68.gif"
																width="11" height="14" /></td>
															<td width="82%"><a href="forum.jsp" target="main">论坛</a></td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
									<td background="/travel_agency/admin/images/index1_47.gif"></td>
								</tr>
								<tr>
									<td width="8" height="8"><img
										src="/travel_agency/admin/images/index1_91.gif" width="8"
										height="8" /></td>
									<td background="/travel_agency/admin/images/index1_92.gif"></td>
									<td width="8" height="8"><img
										src="/travel_agency/admin/images/index1_93.gif" width="8"
										height="8" /></td>
								</tr>
							</table>
						</td>
						<td width="70%" valign="top">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="8" height="8"><img
										src="/travel_agency/admin/images/index1_23.gif" width="8"
										height="29" /></td>
									<td width="99%"
										background="/travel_agency/admin/images/index1_24.gif"></td>
									<td width="8" height="8"><img
										src="/travel_agency/admin/images/index1_26.gif" width="8"
										height="29" /></td>
								</tr>
								<tr height="200">
									<td height="500"
										background="/travel_agency/admin/images/index1_45.gif"></td>
									<td width="99%" bgcolor="#FFFFFF"
										style="height: 590px; vertical-align: top;">
										<table width="100%" border="0" cellspacing="10"
											cellpadding="0">
											<tr>
												<td>
													<table width="100%" border="0" cellpadding="0"
														cellspacing="1" bgcolor="#C4E7FB">
														<tr>
															<td>
																<table width="100%" border="0" cellpadding="0"
																	cellspacing="5" bgcolor="#FFFFFF">
																	<tr>
																		<td height="20">&nbsp; <%if(roletype.equals("客户经理")) {%>
																			&nbsp;&nbsp;&nbsp;您当前的位置：
																			<div style="display: inline;" id="c">我的联系人</div> <%}else{ %>
																			&nbsp;&nbsp;&nbsp;您当前的位置：
																			<div style="display: inline;" id="c">用户管理</div> <%} %>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td>
													<%if(roletype.equals("客户经理")){ %> <iframe width="100%"
														scrolling="yes" frameborder="0" height="340"
														src="admin/customer.jsp" style="background: transparent"
														allowtransparency name="main"></iframe> <%}else{ %> <iframe
														width="100%" scrolling="yes" frameborder="0" height="540"
														src="about.jsp" style="background: transparent"
														allowtransparency name="main"></iframe> <%} %>
												</td>
											</tr>
										</table>
									</td>
									<td background="/travel_agency/admin/images/index1_47.gif"></td>
								</tr>
								<tr>
									<td width="8" height="8"><img
										src="/travel_agency/admin/images/index1_91.gif" width="8"
										height="8" /></td>
									<td background="/travel_agency/admin/images/index1_92.gif"></td>
									<td width="8" height="8"><img
										src="/travel_agency/admin/images/index1_93.gif" width="8"
										height="8" /></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>
