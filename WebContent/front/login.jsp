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
<title>e快捷网上订餐系统</title>
<link rel="shortcut icon" type="images/x-icon" href="<%=basePath %>/images/bitbug_favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
    <link rel="stylesheet" href="<%=basePath %>css/bootstrap.css">
    <link rel="stylesheet" href="<%=basePath %>css/login.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/css.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
	
    <script src="<%=basePath %>js/jquery.js"></script>
    <script src="<%=basePath %>js/bootstrap.js"></script>
	
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>e捷网上订餐系统</title>
</head>
<body style="background: url(<%=basePath %>images/manager.jpg);">
	<div class="top">
   <span><marquee direction="right" behavior="scroll" size="20px" width="1000px" style="color: #e15b1a;">您好！欢迎使用e捷网上订餐系统，祝您订餐愉快！</marquee><!-- <a href="login.html">[登录]</a>&nbsp;<a href="reg.html">[注册]</a> --></span>
  </div><!--top/-->

    <div>
        <div class="be-content pren">

            <div class="ioc_text">
                <img src="<%=basePath %>images/logonew.png" alt="">
                <span>请登录您的用户</span>
            </div>

            <div>
                <form action="<%=basePath %>puser/login" method="post">
                    <div class="br-content">

                         <div class="input-group mb-4 bootint">
                             <div class="input-group-prepend">
                                 <span class="input-group-text"><i class="fa fa-user"></i></span>
                             </div>
                             <input name="zh" class="form-control" placeholder="Account">
                         </div>

                         <div class="input-group mb-4 bootint">
                             <div class="input-group-prepend">
                                 <span class="input-group-text"><i class="fa fa-unlock-alt"></i></span>
                             </div>
                             <input type="password" class="form-control" placeholder="Your Password" name="pass">
                         </div>

                        <div class="br-text">
                            <p>
                                <span>没有账号?</span>
                                <a href="<%=basePath %>front/register.jsp">立即注册</a>
                                <a href="<%=basePath %>front/index.jsp">退出</a>
                            </p>

                        </div>
                        <div style="padding-top: 10px">
                            <input type="submit" class="btn" value="登录">
                        </div>
                        <div class="be-con">
                            <span>Copyright © 2018 - 2019 <a href="<%=basePath %>front/login.jsp">系统登陆</a></span>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
</body>
</html>