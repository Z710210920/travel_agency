<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>

  </head>
  
  <body>
    <h3>关于 我们</h3>
				<p>XX旅行社创立于XXXX年XX月，以“让旅游更简单”为使命，为消费者提供由北京、上海、广州、深圳等64个城市出发的旅游产品预订服务，产品全面，价格透明，全年365天24小时400电话预订，并提供丰富的后续服务和保障。</p>
				<p>XX旅行社提供8万余种旅游产品供消费者选择，涵盖跟团、自助、自驾、邮轮、酒店、签证、景区门票以及公司旅游等，已成功服务累计超过400万人次出游。</p>
				<h4>跟团游</h4>
				<p>包括周边短线游、国内长线、出境游，行程透明、质量可靠。</p>
				<h4>自助游</h4>
				<p>海岛、港澳、三亚、丽江、九寨沟、厦门等既有国内外自助游套餐亦可单订某项产品或任意搭配组合。</p>
				<h4>景点门票</h4>
				<p>数千家精品景区，超低价订购。</p>
				<h4>住宿</h4>
				<p>5A级宾馆</p>
  </body>
</html>
