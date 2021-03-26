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
   <h1 class="logo"><a href="<%=basePath %>index/index"><img src="<%=basePath %>images/logonew.png" width="217" height="90" /></a></h1>
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
    <!--  <a href="demo.html">[登录]</a>&nbsp;<a href="demo1.html">[注册]</a><br> -->
     <img src="<%=basePath %>images/gouimg.png" width="19" height="20" style="position:relative;top:6px;" />&nbsp;|&nbsp; 
    <a href="order.html">购物车<img src="<%=basePath %>images/youjian.jpg" width="5" height="8" />   
    </div><!--gouCar/-->
    <!-- <div class="myChunlv">
     <a href="vip.html"><img src="images/mychunlv.jpg" width="112" height="34" /></a>
    </div> --><!--myChunlv/-->
   </div><!--gouwuche/-->
  </div><!--lsg/-->

  <div class="pnt">
   <div class="pntLeft">
    <h2 class="Title">功能专区</h2>

    
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
   </div><!--pntRight/-->
   <div class="clears"></div>
  </div><!--pnt/-->
  <div class="positions">
   当前位置：<a href="<%=basePath %>index/index">首页</a> &gt; <a href="help.html" class="posCur">帮助中心</a>
  </div><!--positions/-->
  <div class="cont">
   <div class="contLeft" id="contLeft">
    <h3 class="leftTitle">帮助中心</h3>
    <dl class="helpNav">
     <dt class="help1">常见问题</dt>
      <dd><a href="#">顾客须知</a></dd>
      <dd><a href="#">购物流程</a></dd>
      <dd><a href="#">订单的几种状态</a></dd>
      <dd><a href="#">非会员购物通道</a></dd>
      <dd><a href="#">网站使用条款</a></dd>
      <dd><a href="#">网站免责声明</a></dd>
     <dt class="help2">支付配送</dt>
      <dd><a href="#">支付方式</a></dd>
      <dd><a href="#">配送方式</a></dd>
      <dd><a href="#">网付说明</a></dd>
      <dt class="help3">订单售后</dt>
      <dd><a href="#">订单出库</a></dd>
      <dd><a href="#">送货签收</a></dd>
      <dd><a href="#">退货说明</a></dd>
      <dd><a href="#">联系客服</a></dd>
      <dt class="help4">关于我们</dt>
      <dd><a href="#">e捷官网</a></dd>
      <dd><a href="contact.jsp">联系方式</a></dd>
      <dd><a href="about.jsp">企业简介</a></dd>
    </dl><!--helpNav/-->
   </div><!--contLeft/-->
   <div class="contRight">
    <h4 class="gouLiu">简单的订餐流程</h4>
    <div class="helpPar">
&nbsp;&nbsp;&nbsp;&nbsp;进入e捷网上订餐系统，登录自己的帐号，然后选择菜饮类型，然后在下面找到自己想点的餐饮。<br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;下面点自己要吃的套餐，再选择右下角的去下单。填写收货地址和名字，联系方式，接着在给餐厅留言这里也可以写点菜要求，比如不要辣或者加多点葱花等，再确认订单。<br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;验证手机，确保手机畅通，不然等下小二送餐到了，找不到你，再提交订单。下单成功，等待餐厅这边接受订单，进行配送。可以点击查看订单。



    </div><!--helpPar-->
   </div><!--contRight/-->
   <div class="clears"></div>
  </div><!--cont/-->
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
