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
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/myorder.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/css.css">
   <%--  <link type="text/css" href="<%=basePath %>css/myorder1.css" rel="stylesheet" /> --%>
</head>
<body>
	

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
   <h1 class="logo"><a href="<%=basePath %>front/index.jsp"><img src="<%=basePath %>images/logonew.png" width="217" height="90" /></a></h1>
   <form action="#" method="get" class="subBox">
    <div class="subBoxDiv">
     <input type="text" class="subLeft" />
     <input type="image" src="<%=basePath %>images/subimg.png" width="63" height="34" class="sub" />
     <div class="hotWord">
      热门搜索：
      
   <a href="<%=basePath %>index/index"><strong>首页</strong>&nbsp;&nbsp;</a>
				<c:forEach items="${types}" var="t">
					<a href="">${t.tname }&nbsp;&nbsp;</a>
				</c:forEach>
     <!--  <a href="proinfo.html">黑胶唱片</a>&nbsp; -->
     </div><!--hotWord/-->
    </div><!--subBoxDiv/-->
   </form><!--subBox/-->
   <div class="gouwuche">
    <div class="gouCar">
     <!-- <img src="images/gouimg.png" width="19" height="20" style="position:relative;top:6px;" />&nbsp;|&nbsp; -->
   
     <img src="<%=basePath %>images/gouimg.png" width="19" height="20" style="position:relative;top:6px;" />&nbsp;|&nbsp; 
    <a href="<%=basePath%>/front/addshop.jsp">购物车<img src="<%=basePath %>images/youjian.jpg" width="5" height="8" />   
    <!--  <a href="order.html">去结算</a> <img src="images/youjian.jpg" width="5" height="8" />    --> 
    </div><!--gouCar/-->
    <!-- <div class="myChunlv">
     <a href="vip.html"><img src="images/mychunlv.jpg" width="112" height="34" /></a>
    </div> --><!--myChunlv/-->
   </div><!--gouwuche/-->
  </div><!--lsg/-->



	<div class="bg">
		<div class="left-top">
			
		</div>
		<!-- 账号管理部分 -->

		<div class="middle">
		<div class="aside">
			<h3>账号管理</h3>
			<hr>
			<a href="#">我的订单</a><br>
		<!-- 	<a href="#">收货地址</a> -->
		</div>
		<!-- 我的订单部分 -->
		
	
		<div class="right">
			<h2>我的订单</h2>
			<!-- 订单商品部分 -->
			<div class="goods">
				<pre><h3>               订单商品                 订单总额          订单地址          操作</h3>
				</pre>
			</div>
			<!-- 订单编号部分 -->
				<c:forEach items="${orders}" var="o">
			<div class="od">
				<div class="inner-top">
					<span class="one"><strong style="font-size:16px;">订单编号:</strong> &nbsp;&nbsp;&nbsp;&nbsp;${o.id }</span><span></span>
				</div>
				<div class="inner-bottom">
					<div class="pic">
						<div class="yi">
						<img src="<%=basePath %>images/02.jpg" alt="">
							
						<img src="<%=basePath %>images/01.jpg" alt="">
						</div>
					</div>
					<div class="sum">
						<h6>￥${o.zje }</h6>
						<h6>在线支付</h6>
					</div>
					<div class="state">
						<h6>${o.address }</h6>
					</div>
					<div class="operate" style="height:80px; padding-top:38px;">
						<a href="<%=basePath %>order/getDetailByOid?id=${o.id}" style="padding-top: 50px; box-sizing: border-box;">查看详情</a>

					</div>
				</div>
			</div>
				</c:forEach>
			
			<!-- 页数部分 -->
			<div class="page">
				<div class="pp">
					
				<button type="submit"><a href="<%=basePath%>${page.page_first}">«</a></button>
									
				<button type="submit"><a href="<%=basePath%>${page.page_pre}">上一页</a></button>
			
				<button type="submit"><a href="<%=basePath%>${page.page_next}">下一页</a></button>
									
				<button type="submit"><a href="<%=basePath%>${page.page_last}">»</a></button>
									
				</div>
			</div>
		</div>
		</div>
	</div>


 <div class="mianCont">
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