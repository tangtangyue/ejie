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
		 <link rel="stylesheet" href="<%=basePath %>css/amazeui.min.css" />
		  <link rel="stylesheet" href="<%=basePath %>css/admin.css" />
      <style type="text/css">
        .am-img-thumbnail {
          height: 278px;
          width: 278px;
        }


      </style>
	</head>
	<body>
		
		<div class="admin-content-body">
      <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf">
          <strong class="am-text-primary am-text-lg">今日推荐</strong> 
          <a href="<%=basePath %>admin/manager_index.jsp" style="font-size: 12px;">返回首页</a>
        </div>
      </div>

      <hr>

      <ul class="am-avg-sm-2 am-avg-md-4 am-avg-lg-6 am-margin gallery-list">
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="<%=basePath %>images/zao/bz.png" alt="" height="278" width="278">
            <div class="gallery-title">包子</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="<%=basePath %>images/zao/dj.png" alt="" height="278px" width="278px">
            <div class="gallery-title">豆浆</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="<%=basePath %>images/zao/hd.png" alt="">
            <div class="gallery-title">馄饨</div>
          </a>
        </li>
        <li>
            <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="<%=basePath %>images/zao/hd.png" alt="">
            <div class="gallery-title">馄饨</div>
          </a>
        </li>
        <li>
            <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="<%=basePath %>images/zao/hd.png" alt="">
            <div class="gallery-title">馄饨</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="<%=basePath %>images/zao/hd.png" alt="">
            <div class="gallery-title">馄饨</div>
          </a>
        </li>
        <li>
            <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="<%=basePath %>images/zao/hd.png" alt="">
            <div class="gallery-title">馄饨</div>
          </a>
        </li>
        <li>
           <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="<%=basePath %>images/zao/hd.png" alt="">
            <div class="gallery-title">馄饨</div>
          </a>
        </li>
        <li>
            <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="<%=basePath %>images/zao/hd.png" alt="">
            <div class="gallery-title">馄饨</div>
          </a>
        </li>
        <li>
            <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="<%=basePath %>images/zao/hd.png" alt="">
            <div class="gallery-title">馄饨</div>
          </a>
        </li>
        <li>
          <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="<%=basePath %>images/zao/hd.png" alt="">
            <div class="gallery-title">馄饨</div>
          </a>
        </li>
        <li>
           <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="<%=basePath %>images/zao/hd.png" alt="">
            <div class="gallery-title">馄饨</div>
          </a>
        </li>
        <li>
            <a href="#">
            <img class="am-img-thumbnail am-img-bdrs" src="<%=basePath %>images/zao/hd.png" alt="">
            <div class="gallery-title">馄饨</div>
          </a>
        </li>
      </ul>

    
    </div>
	</body>
</html>