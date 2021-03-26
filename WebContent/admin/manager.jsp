<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>e捷网上订餐系统</title>
<link rel="shortcut icon" type="images/x-icon" href="<%=basePath %>/images/bitbug_favicon.ico">
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/manager.css">
</head>
<body style="background: url(../images/manager.jpg);">
	<div class="bigbox">
		<h2>管理员登录</h2>
		<form action="<%=basePath%>/gly/login" method="post">
			<div class="zh">
				<span class="pic"></span>
				<input class="text" name="zh" type="text" placeholder="请输入账户">
			</div>
			<div class="zh">
				<span class="picture"></span>
				<input class="text" name="pass" type="password" placeholder="请输入密码">
			</div>
			<div class="login">
				<button type="submit">登录</button>
			</div>
		</form>
	</div>
</body>
</html>