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
<title>e快捷网上订餐系统</title>
<link rel="shortcut icon" type="images/x-icon" href="<%=basePath %>/images/bitbug_favicon.ico">
<link type="text/css" href="<%=basePath%>css/css.css" rel="stylesheet" />
<script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
<script type="text/javascript" src="<%=basePath%>js/js.js"></script>
<script src="<%=basePath%>js/wb.js" type="text/javascript"
	charset="utf-8"></script>
<script src="<%=basePath%>js/MagicZoom.js" type="text/javascript"></script>

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
			<!-- <a href="login.html">[登录]</a>&nbsp;<a href="reg.html">[注册]</a> --></span>
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
			<a href="index.html"><img src="<%=basePath%>images/logonew.png"
				width="217" height="90" /></a>
		</h1>
		<form action="#" method="post" class="subBox">
			<div class="subBoxDiv">
				<input type="text" class="subLeft" /> <input type="image"
					src="<%=basePath%>images/subimg.png" width="63" height="34"
					class="sub" />
				<div class="hotWord">
					热门搜索：  <a href="<%=basePath %>index/index"><strong>首页</strong>&nbsp;&nbsp;</a>
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
				<img src="<%=basePath %>images/gouimg.png" width="19" height="20" style="position:relative;top:6px;" />&nbsp;|&nbsp; 
    <a href="<%=basePath%>/front/addshop.jsp">购物车<img src="<%=basePath %>images/youjian.jpg" width="5" height="8" />   
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

		<div class="pnt">
			<div class="pntLeft" style="height:376px; font-size:16px; box-sizing:border-box;padding:5px">
				<h2 class="Title">菜品介绍</h2>
				${menu.content }
				<!--<ul class="InPorNav">
					<li><a href="<%=basePath %>front/product.jsp">餐饮类型<span style="float: right;padding-right: 20px;">></span></a>
    <div class="chilInPorNav">
      <c:forEach items="${types}" var="t">
					<a href="">${t.tname }</a>
				</c:forEach>
      </div> 
     </li>
					<li><a href="end.html">美食达人<span
							style="float: right; padding-right: 20px;">></span></a></li>
					<li><a href="myorder.html">我的订单<span
							style="float: right; padding-right: 20px;">></span></a></li>
					<li><a href="end.html">9.9元专区<span
							style="float: right; padding-right: 20px;">></span></a></li>
					<li><a href="personal.html">我的信息<span
							style="float: right; padding-right: 20px;">></span></a></li>


				</ul>
			</div>
			<div class="pntRight">
				<ul class="nav">
					<li class="navCur"><a href="index.html">e捷首页</a></li>
					<li><a href="end.html">促销中心</a></li>
					<li><a href="login.html">会员中心</a></li>
					<li><a href="help.html">帮助中心</a></li>
					<div class="clears"></div>
					<div class="phone">TEL：021-12345678</div>
				</ul>
				<!--nav/-->

			</div>
			<!--pntRight/-->


		<!--pnt/-->

		<div class="contRight" style="border: 0;">
			<div class="proBox">
				<div id="tsShopContainer">
					<div id="tsImgS">
						<a href="<%=basePath %>${menu.picpath}" title="Images"
							class="MagicZoom" id="MagicZoom"><img width="300"
							height="300" src="<%=basePath %>${menu.picpath}" /></a>
					</div>
					<div id="tsPicContainer">
						<div id="tsImgSArrL" onclick="tsScrollArrLeft()"></div>
						<div id="tsImgSCon">
							<ul>
								<li onclick="showPic(0)" rel="MagicZoom" class="tsSelectImg"><img
									height="42" width="42" src="<%=basePath %>${menu.picpath}"
									tsImgS="<%=basePath %>${menu.picpath}" /></li>

							</ul>
						</div> 
						<div id="tsImgSArrR" onclick="tsScrollArrRight()"></div>
					</div>
					<form action="<%=basePath%>order/addShop" method="post">
						<img class="MagicZoomLoading" width="16" height="16"
							src="<%=basePath %>${menu.picpath}" alt="Loading..." />
				</div>
				<!--tsShopContainer/-->
				<div class="proBoxRight"
					style="text-align: left; margin-top: 60px; padding-left: 10px; ">
					<h3 class="proTitle">${menu.title }</h3>
					<div style="margin-bottom: 10px;">
						价格：<span><strong class="red">￥${menu.price }</strong></span>
					</div>
					<div>单位: &nbsp;&nbsp;份</div>
				<!-- 	<ul class="rongliang">
						<table>
							<tr>
								<td></td>
								<td></td>
							</tr>
						</table>

						<div class="clears"></div>
					</ul> -->
					<!--rongliang/-->
					<div class="shuliang2">
				
	
						数量: &nbsp;<input type="number" value="1" name="spsl" width="30px" height="20px"/> 
						<input type="hidden" name="spid" value="${menu.id }">
					</div>
					<!--shuliang2/-->
					<div class="gc">
						<input type="submit"  value="&nbsp;"
							style="background-image: url(../images/gou.png); width: 117px; height:40px;" 
						 />&nbsp;&nbsp;
					</div>
					<!--gc/-->
				</div>
				<!--proRight/-->
				<div class="clears"></div>
			</div>
			<!--proBox/-->
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
			<script src="<%=basePath%>js/ShopShow.js"></script>
</body>
</html>