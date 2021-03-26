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
</head>
<link rel="shortcut icon" type="images/x-icon" href="<%=basePath %>/images/bitbug_favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
    <link rel="stylesheet" href="<%=basePath %>css/bootstrap.css">
    <link rel="stylesheet" href="<%=basePath %>css/register.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/css.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
	
    <script src="<%=basePath %>js/jquery.js"></script>
    <script src="<%=basePath %>js/bootstrap.js"></script>

    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>e捷网上订餐系统</title>
    <style type="text/css">
        @font-face {  /* 电脑中没有的字体，我们需要声明 */
          font-family: 'icomoon';
          src:  url('<%=basePath %>fonts/icomoon.eot?7kkyc2');
          src:  url('<%=basePath %>fonts/icomoon.eot?7kkyc2#iefix') format('embedded-opentype'),
            url('<%=basePath %>fonts/icomoon.ttf?7kkyc2') format('truetype'),
            url('<%=basePath %>fonts/icomoon.woff?7kkyc2') format('woff'),
            url('<%=basePath %>fonts/icomoon.svg?7kkyc2#icomoon') format('svg');
          font-weight: normal;
          font-style: normal;
}
           .jinzhou i{
                font-family: 'icomoon';
            }
    </style>
    	<script src="<%=basePath %>js/jquery-1.4.4.min.js"></script>
<script>
	function checkUser(){
		var zh=document.getElementById("zh").value;
		
		$.ajax( {
			url:'<%=basePath %>puser/checkUser',
			type:'post',
			data: {
				zh:zh
			},
			datatype : "json",//"xml", "html", "script", "json", "jsonp", "text".           
			success : function(data) {
				if(data==1){
					$("#lab").text("您输入的账号已存在！");
					setTimeout('window.location="register.jsp";',1000); 
					
				}
			}
		});
		
		
	}
</script>
<body>
	<body style="background: url(<%=basePath %>images/manager.jpg);">


<div class="top">
   <span><marquee direction="right" behavior="scroll" size="20px" width="1000px" style="color: #e15b1a;">您好！欢迎使用e捷网上订餐系统，祝您订餐愉快！</marquee><!-- <a href="login.html">[登录]</a>&nbsp;<a href="reg.html">[注册]</a> --></span>
   
  </div><!--top/-->

    <div>
        <div class="be-content pren">

            <div class="ioc_text">
                <img src="<%=basePath %>images/logonew.png" alt="">
                <span>请注册您的账户</span>
            </div>

            <div>
                <form action="<%=basePath %>puser/register" method="post">
                    <div class="br-content">

                         <div class="input-group mb-4 bootint">
                             <div class="input-group-prepend">
                                 <span class="input-group-text"><i class="fa fa-user"></i></span>
                             </div>
                             <input name="zh" class="form-control" id="zh" placeholder="Account" onblur="checkUser()"/>
                         </div>
							  <label id="lab" style="font-size: 15px;"></label>
                         <div class="input-group mb-4 bootint">
                             <div class="input-group-prepend">
                                 <span class="input-group-text"><i class="fa fa-unlock-alt"></i></span>
                             </div>
                             <input type="password" class="form-control" placeholder="Your Password" name="pass">
                         </div>
            
                        <div class="input-group mb-4 bootint">
                             <div class="input-group-prepend jinzhou">
                                 <span class="input-group-text"><i class="fa fa-realname"></i></span>
                             </div>
                             <input type="text" class="form-control" placeholder="Your Realname" name="realname">
                         </div>


                         <div class="input-group mb-4 bootint">
                             <div class="input-group-prepend jinzhou">
                                 <span class="input-group-text"><i class="fa fa-phonenumber"></i></span>
                             </div>
                             <input type="tel" class="form-control" placeholder="Your Phonenumber" name="phone">
                         </div>

                         <div class="input-group mb-4 bootint">
                             <div class="input-group-prepend jinzhou">
                                 <span class="input-group-text"><i class="fa fa-address"></i></span>
                             </div>
                             <input type="text" class="form-control" placeholder="Your Address" name="address">
                         </div>


                        <div class="br-text">
                            <p>
                                <span>已有账号?</span>
                                <a href="<%=basePath %>front/login.jsp">立即登录</a>
                                <a href="<%=basePath %>front/index.jsp">退出</a>
                            </p>
                        </div>
                        <div style="padding-top: 10px">
                            <input type="submit" class="btn" value="注册">
                        </div>
                        <div class="be-con">
                            <span>Copyright © 2018 - 2019 <a href="">系统注册</a></span>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
</body>
</html>