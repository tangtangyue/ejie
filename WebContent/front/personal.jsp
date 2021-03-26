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

<link type="text/css" href="<%=basePath %>css/css.css" rel="stylesheet" />
<script type="text/javascript" src="<%=basePath %>js/jquery.js"></script>
<script type="text/javascript" src="<%=basePath %>js/js.js"></script>
<script src="<%=basePath %>js/wb.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
$(function(){
	$("#kinMaxShow").kinMaxShow();
});
</script>
<style type="text/css">
	.nav1{
		/* border: 1px solid red; */
		float: right;
		margin-top: 20px;
		height: 500px;
		width: 750px; 
		padding-top: 50px;
		/* box-shadow:-2px 0px 8px #f00,0px -2px 8px #000,0px 2px 8px #9e038a,2px 0px 8px #0f0; */


	}

	body .tog{
		/* border: 1px solid red; */
		margin: 50px auto;
		padding-top: 10px;
		width: 350px;
		height: 280px;
		/* background-color: rgba(0,0,0,0.1); */
		 box-shadow: inset 0px 0px 30px rgba(255,0,0,0.4);

	}
	.tog li {
		width: 500px;
		margin-left: 60px;
		margin-top: 20px;
	}
	.tog li input{
		margin-left: 20px;
	}
	
	.center{
		width: 80px;
		margin: 20px auto;
	}

</style>
</head>
<body>
	<div class="mianCont"> 
    <div class="top">
    <c:if test="${USER==null }">
   		<span>您好！欢迎使用e捷订餐系统，祝您订餐愉快！ 请&nbsp;
   		<a href="<%=basePath %>front/login.jsp">[登录]</a>
   		&nbsp;<a href="<%=basePath %>front/register.jsp">[注册]</a>
   </c:if>
   <c:if test="${USER!=null }">
   	<span><strong>${USER.realname }</strong>&nbsp;&nbsp;您好！点击此处可以&nbsp;&nbsp;
			<a href="<%=basePath%>puser/logout">[退出登录]</a>
   		<!-- &nbsp;<a href="">[]</a> -->
   </c:if>
 
  </span>
  <span class="topRight">
   
     <c:if test="${USER!=null }">
   	<a href="<%=basePath%>/order/getOrdersByUser">我的订单</a>&nbsp;| 
   	 <a href="<%=basePath %>puser/getBeanById?id=${USER.id}">个人中心</a>&nbsp;| 
   </c:if>
   
    <a href="<%=basePath %>admin/manager.jsp">管理员入口</a>&nbsp;|
    <a href="<%=basePath %>front/contact.jsp">联系我们</a>
   </span>
  </div><!--top/-->
  
  <div class="lsg">
   <h1 class="logo"><a href="index.html"><img src="<%=basePath %>images/logonew.png" width="217" height="90" /></a></h1>
   <form action="#" method="post" class="subBox">
    <div class="subBoxDiv">
     <input type="text" class="subLeft" />
     <input type="image" src="<%=basePath %>images/subimg.png" width="63" height="34" class="sub" />
     <div class="hotWord">
     热门搜索：
     <a href="<%=basePath %>index/index"><strong>首页</strong>&nbsp;&nbsp;</a>
				<c:forEach items="${types}" var="t">
					<a href="">${t.tname }&nbsp;&nbsp;</a>
				</c:forEach>
    </div>
    </div>
   </form>
   <div class="gouwuche">
    <div class="gouCar">
     
     <img src="<%=basePath %>images/gouimg.png" width="19" height="20" style="position:relative;top:6px;" />&nbsp;|&nbsp; 
    <a href="<%=basePath%>/front/addshop.jsp">购物车<img src="<%=basePath %>images/youjian.jpg" width="5" height="8" />   
    </div>
   
   </div>
  </div>

  <div class="pnt">
   <div class="pntLeft">
    <h2 class="Title">功能专区</h2>
    <ul class="InPorNav">
    <li><a href="<%=basePath %>front/product.jsp">餐饮类型<span style="float: right;padding-right: 20px;">></span></a>
    <div class="chilInPorNav">
      <c:forEach items="${types}" var="t">
					<a href="">${t.tname }</a>
				</c:forEach>
      </div> 
     </li>
     <li><a href="<%=basePath %>front/end.jsp">美食达人<span style="float: right;padding-right: 20px;">></span></a>
    
     </li>
     <li><a href="<%=basePath %>front/myorder.jsp">我的订单<span style="float: right;padding-right: 20px;">></span></a>
    
     </li>
     <li><a href="<%=basePath %>front/end.jsp">9.9元专区<span style="float: right;padding-right: 20px;">></span></a>
    
     </li>
     <li><a href="<%=basePath %>puser/getBeanById?id=${USER.id}">我的信息<span style="float: right;padding-right: 20px;">></span></a>
     
     </li>
  
    </ul><!--InPorNav/-->
   </div><!--pntLeft/-->
   <div class="pntRight">
    <ul class="nav">
     <li class="navCur"><a href="<%=basePath %>index/index">e捷首页</a></li>
     <li><a href="<%=basePath %>front/end.jsp">促销中心</a></li>
     <li><a href="<%=basePath %>front/end.jsp">会员中心</a></li>
     <li><a href="<%=basePath %>front/help.jsp">帮助中心</a></li>
     <div class="clears"></div>
     <div class="phone">TEL：021-12345678</div>
    </ul><!--nav/-->

    </div>

    	<div class="nav1">
			<form action="<%=basePath%>puser/update" method="post">   
				<center><h2>个人资料</h2></center>
						<center>亲爱的用户，填写真实的资料，有助于好友找到你哦!</center>

					<div class="tog">
					<ul>
					<input type="hidden" name="id" value="${puser.id}"/>
						<li class="td">用&nbsp;&nbsp;户&nbsp;&nbsp;名:<input type="text" name="zh" value="${puser.zh}"></li>
						<li class="td">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:<input type="password" name="pass" value="${puser.pass}"></li>
						<li class="td">真实姓名:<input type="text" name="realname" value="${puser.realname}"></li>
						<li class="td">收货地址:<input type="text" name="address" value="${puser.address}"></li>
						<li class="td">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话:<input type="phone" name="phone" value="${puser.phone}"></li>
						
					</ul>

							<div class="center"><input type="submit" name="" value="修改信息"></div>
					</div>
			</form>
   	</div>
    </div>

  <div class="inHelp">
   <div class="inHLeft">
    <h4>帮助中心</h4>
    <ul class="inHeList">
     <li><a href="<%=basePath %>/front/help.jsp">订餐指南</a></li>
     <li><a href="<%=basePath %>/front/help.jsp">支付方式</a></li>
     <li><a href="<%=basePath %>/front/help.jsp">售后服务</a></li>
     <li><a href="<%=basePath %>/front/about.jsp">企业简介</a></li>
     <div class="clears"></div>
    </ul><!--inHeList/-->
   </div><!--inHLeft/-->
   <div class="inHLeft">
    <h4>会员服务</h4>
    <ul class="inHeList">
     <li><a href="<%=basePath %>/front/register.jsp">会员注册</a></li>
     <li><a href="<%=basePath %>/front/login.jsp">会员登录</a></li>
     <li><a href="<%=basePath%>/front/addshop.jsp">购物车</a></li>
     <li><a href="<%=basePath%>/order/getOrdersByUser">我的订单</a></li>
     <div class="clears"></div>
    </ul><!--inHeList/-->
   </div><!--inHLeft/-->
   <div class="inHRight">
    <h4>全国统一免费服务热线</h4>
    <div class="telBox">400-0000-0000</div>
    <div class="weibo">
    <wb:follow-button uid="2991975565" type="red_1" width="67" height="24" ></wb:follow-button>
    </div>
   </div><!--inHRight/-->
   <div class="clears"></div>
  </div><!--inHelp/-->
  <div class="footer">
   <p>
   <a href="#">进入e捷官网</a>&nbsp;|&nbsp;
   <a href="<%=basePath%>index/index">e捷首页</a>&nbsp;|&nbsp;
   <a href="<%=basePath %>/front/product.jsp">促销中心</a>&nbsp;|&nbsp;
   <a href="<%=basePath %>/order/getOrdersByUser">我的订单</a>&nbsp;|&nbsp;
   <a href="<%=basePath %>/front/end.jsp">e捷动态</a>&nbsp;|&nbsp;
   <a href="<%=basePath %>/front/end.jsp">会员中心</a>&nbsp;|&nbsp;
   <a href="<%=basePath %>/front/help.jsp">帮助中心</a>
   </p>
   <p>
    版权所有：e捷订餐
  </div><!--footer/-->
</div><!-- mianCont/  -->
 <a href="#" class="backTop">&nbsp;</a>
</body>
</html>