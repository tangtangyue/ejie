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
<link rel="shortcut icon" type="images/x-icon" href="<%=basePath %>/images/bitbug_favicon.ico">
<head>
	<meta charset="UTF-8">
	<title>e快捷网上订餐系统</title>
	<link rel="shortcut icon" type="images/x-icon" href="<%=basePath %>/images/bitbug_favicon.ico">
	<style type="text/css">
		body{
			background: url(../images/manager.jpg) no-repeat;
		}
		.end{
			width: 1000px;
			height: 600px;
			margin: 0 auto;
		}
		.image{
			margin-left: 400px;
			margin-top: 200px;
		}
		.h3 h3{
			height: 50px;
			width: 700px;
			margin: 50px auto;
			padding-left: 100px;
			font-size: 25px;
		}
		.a a{
			text-decoration: none;
			padding-left: 20px;
			color: #ccc;

		}
		.a a:hover{
			color: red;
		}

	</style>
</head>
<body>
	<div class="a"><a href="<%=basePath %>index/index">返回首页</a></div>
	<div class="end">
		<div class="image"><img src="<%=basePath %>images/logonew.png"></div>
		<div class="h3"><h3>你好！目前系统功能升级中，近期将会开通，敬请期待！</h3>
		</div>
	</div>
</body>
</html>