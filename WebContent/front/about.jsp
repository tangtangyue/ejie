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
     </div><!--hotWord/-->
    </div><!--subBoxDiv/-->
   </form><!--subBox/-->
   <div class="gouwuche">
    <div class="gouCar">
   
     <img src="<%=basePath %>images/gouimg.png" width="19" height="20" style="position:relative;top:6px;" />&nbsp;|&nbsp; 
    <a href="<%=basePath%>/front/addshop.jsp">购物车<img src="<%=basePath %>images/youjian.jpg" width="5" height="8" />   
    </div><!--gouCar/-->
    <!-- <div class="myChunlv">
     <a href="vip.html"><img src="images/mychunlv.jpg" width="112" height="34" /></a>
    </div> --><!--myChunlv/-->
   </div><!--gouwuche/-->
  </div><!--lsg/-->

  <div class="pnt">
   <div class="pntLeft">
    <h2 class="Title">功能专区</h2>
</div>
   <div class="pntRight">
     <ul class="nav">
     <li class="navCur"><a href="<%=basePath %>index/index">e捷首页</a></li>
     <li><a href="<%=basePath %>front/end.jsp">促销中心</a></li>
     <li><a href="<%=basePath %>front/end.jsp">会员中心</a></li>
     <li><a href="<%=basePath %>front/help.jsp">帮助中心</a></li>
     <div class="clears"></div>
     <div class="phone">TEL：021-12345678</div>
    </ul><!--nav/-->


   <div class="clears"></div>
  </div><!--pnt/-->
  <div class="positions">
   当前位置：<a href="<%=basePath %>index/index">首页</a> &gt; <a href="#" class="posCur">帮助中心</a>
  </div><!--positions/-->
  <div class="cont">
   <div class="contLeft" id="contLeft">
    <h3 class="leftTitle">帮助中心</h3>
    <dl class="helpNav">
      <dt class="help4">关于我们</dt>
      <dd><a href="#">e捷官网</a></dd>
      <dd><a href="<%=basePath %>contact.jsp">联系方式</a></dd>
      <dd><a href="<%=basePath %>about.jsp" class="helpCur">企业简介</a></dd>
    </dl><!--helpNav/-->
   </div><!--contLeft/-->
   <div class="contRight">
    <h4 class="gouLiu">企业简介</h4>
    <div class="helpPar">
 &nbsp;&nbsp;&nbsp;&nbsp;山西农业大学信息学院成立于2002年，是经教育部、山西省人民政府批准设立的全日制普通本科高校，是一所以信息科技为特色，文、理、工、农、经、管、艺术等多学科协调发展的现代化大学。
<br />
       &nbsp;&nbsp;&nbsp;&nbsp;学校定位于服务中国崛起的信息产业商学院，以“完整的人”为培养目标，致力打造一所与众不同的大学，办成国内最受尊崇的一流独立学院。学校逐步形成了“乐教、乐学、创造、创业”的校训，按照“内涵建设、特色发展”的8字方针，通过“商科教育+完满教育+通识教育+专业教育”四位一体的教育模式，培养未来社会中坚力量的领导者，为学生完满生活做准备，为推动地方区域发展提供人才保障和智力支撑。
<br />
学校校训：
　   &nbsp;&nbsp;&nbsp;&nbsp; 成人：就是要学会做人。
　   &nbsp;&nbsp;&nbsp;&nbsp; 成才：就是要学会学习。
　   &nbsp;&nbsp;&nbsp;&nbsp; 成功：就是要学会做事。
　 
<br />
&nbsp;&nbsp;&nbsp;&nbsp;学校人才培养质量成效明显。近五年来在教育行政部门举办的各类学科竞赛中累计获得国家级奖项100余项、省级奖项500余项。学生创业热情高、创业能力逐年提升，获得省部级以上创新创业奖项50余项。近年来学校就业率一直保持在90%以上，考研达线率高达50%以上，高就业率、高考研率等居于全国同类高校前列
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