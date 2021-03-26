<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>e快捷网上订餐系统</title>
<link rel="shortcut icon" type="images/x-icon" href="<%=basePath %>/images/bitbug_favicon.ico">
<link rel="stylesheet" href="<%=basePath%>/css/reset.css">
<link rel="stylesheet" href="<%=basePath%>/css/carts.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/css.css">
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
	</div>
	<!--top/-->
	<div class="lsg">
		<h1 class="logo">
			<a href="<%=basePath%>front/index.jsp"><img
				src="<%=basePath%>images/logonew.png" width="217" height="90" /></a>
		</h1>
		<form action="#" method="get" class="subBox">
			<div class="subBoxDiv">
				<input type="text" class="subLeft" /> <input type="image"
					src="<%=basePath%>images/subimg.png" width="63" height="34"
					class="sub" />
				<div class="hotWord">
					      <a href="<%=basePath %>index/index"><strong>首页</strong>&nbsp;&nbsp;</a>
				<c:forEach items="${types}" var="t">
					<a href="">${t.tname }&nbsp;&nbsp;</a>
				</c:forEach>
					<!--  <a href="proinfo.html">黑胶唱片</a>&nbsp; -->
				</div>
				<!--hotWord/-->
			</div>
			<!--subBoxDiv/-->
		</form>
		<!--subBox/-->
		<div class="gouwuche">
			<div class="gouCar">
				<!-- <img src="images/gouimg.png" width="19" height="20" style="position:relative;top:6px;" />&nbsp;|&nbsp; -->
				<a href="<%=basePath%>front/login.jsp">[登录]</a>&nbsp;<a
					href="<%=basePath%>front/register.jsp">[注册]</a>
				<!--  <a href="order.html">去结算</a> <img src="images/youjian.jpg" width="5" height="8" />    -->
			</div>
			<!--gouCar/-->
			<!-- <div class="myChunlv">
     <a href="vip.html"><img src="images/mychunlv.jpg" width="112" height="34" /></a>
    </div> -->
			<!--myChunlv/-->
		</div>
		<!--gouwuche/-->
	</div>
	<!--lsg/-->


	<section class="cartMain">
	<div class="cartMain_hd">
		<ul class="order_lists cartTop">
			<li class="list_chk">
				<!--所有商品全选--> <input type="checkbox" id="all" class="whole_check">
				<label for="all" style="border: 1px solid #b8b8b8;"></label> 全选
			</li>
			<li class="list_con">菜饮图片</li>
			<li class="list_info">菜饮名称</li>
			<li class="list_price">单价</li>
			<li class="list_amount">数量</li>
			<li class="list_sum">金额</li>
			<li class="list_op">操作</li>
		</ul>
	</div>

	<div class="cartBox">
		<div class="shop_info">
			<div class="all_check">
				<!--店铺全选-->
				<!-- <input type="checkbox" id="shop_a" class="shopChoice">  -->
			</div>

		</div>
	<c:forEach items="${shop }" var="o">
			<div class="order_content">
				<ul class="order_lists">
					<li class="list_chk"><input type="checkbox"  id="checkbox_2"
						class="son_check"> <label for="checkbox_2"
						style="border: 1px solid #b8b8b8;"></label></li>
					<li class="list_con">
						<div class="list_img">
							<a href="javascript:;"><img src="<%=basePath %>${o.picpath}" /></a>
						</div>

					</li>
					<li class="list_info">
						<p>${o.title }</p>

					</li>
					<li class="list_price">
						<p class="price">￥${o.price }</p>
					</li>
					<li class="list_amount">
						<div class="amount_box">
							<a href="javascript:;" class="reduce reSty">-</a> <input
								type="text" value="${o.spsl}" class="sum"> <a
								href="javascript:;" class="plus">+</a>
						</div>
					</li>
					<li class="list_sum">
						<p class="sum_price">￥${o.price*o.spsl}</p>
					</li>
					<li class="list_op">
						<p class="del">
							<a href="javascript:;" class="delBtn">移除商品</a>
						</p>
					</li>
				</ul>
			</div>
		</c:forEach>
	</div>



	<!--底部-->
	<div class="bar-wrapper">
		<div class="bar-right">
			<div class="piece">
				已选商品<strong class="piece_num">0</strong>件
			</div>
			<div class="totalMoney">
				共计: <strong class="total_text">0.00</strong>
			</div>
			<div class="calBtn">
				<a href="<%=basePath%>index/index" class="jie_1"
					style="background: #f40;">继续订餐&gt;&gt;</a>
			</div>

			<div class="calBtn">
				<a href="<%=basePath%>order/xd" class="jie_2"
					style="margin-left: 10px;">立即下单&gt;&gt;</a>
			</div>
		</div>
	</div>
	</section>
	<section class="model_bg"></section>
	<section class="my_model">
	<p class="title">
		删除宝贝<span class="closeModel">X</span>
	</p>
	<p>您确认要删除该宝贝吗？</p>
	<div class="opBtn">
		<a href="javascript:;" class="dialog-sure">确定</a><a
			href="javascript:;" class="dialog-close">关闭</a>
	</div>
	</section>


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
	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script src="<%=basePath%>/js/carts.js"></script>
</body>
</html>