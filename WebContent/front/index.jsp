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
<link type="text/css" href="<%=basePath %>css/css.css" rel="stylesheet" />
<link rel="shortcut icon" type="images/x-icon" href="<%=basePath %>/images/bitbug_favicon.ico">
<script type="text/javascript" src="<%=basePath %>js/jquery.js"></script>
<script type="text/javascript" src="<%=basePath %>js/js.js"></script>
<script src="<%=basePath %>js/wb.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
$(function(){
	$("#kinMaxShow").kinMaxShow();
});
</script>
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
  </div>
  
  <div class="lsg">
   <h1 class="logo"><a href="<%=basePath %>index/index"><img src="<%=basePath %>images/logonew.png" width="217" height="90" /></a></h1>
   <form action="#" method="post" class="subBox">
    <div class="subBoxDiv">
     <input type="text" class="subLeft" />
     <input type="image" src="<%=basePath %>images/subimg.png" width="63" height="34" class="sub" />
     <div class="hotWord" style="overflow: hidden">
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
    </div>
   </div>
  </div>

  <div class="pnt">
   <div class="pntLeft">
    <h2 class="Title">功能专区</h2>
    <ul class="InPorNav">
     <li><a href="<%=basePath %>front/product.jsp">餐饮类型<span style="float: right;padding-right: 20px;">></span></a>
    <div class="chilInPorNav">
					<a href="#zc">早餐</a>
					<a href="#zw">午餐</a>
					<a href="#wc">晚餐</a>

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

  
    </ul>
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


    
    <div class="banner">
     <div id="kinMaxShow">
     
      <div>
       <a href="#"><img src="<%=basePath %>images/1.jpg" height="360"  /></a>
      </div>
      <div>
       <a href="#"><img src="<%=basePath %>images/2.jpg" height="360"  /></a>
      </div>  
      <div>
       <a href="#"><img src="<%=basePath %>images/3.jpg" height="360"  /></a>
      </div>
      <div>
       <a href="#"><img src="<%=basePath %>images/4.jpg" height="360"  /></a>
      </div>  
       <div>
       <a href="#"><img src="<%=basePath %>images/5.jpg" height="360"  /></a>
      </div> 		  
     </div><!--kinMaxShow/-->
    </div><!--banner/-->
   </div><!--pntRight/-->
   <div class="clears"></div>
  </div><!--pnt/-->
  <div class="rdPro">
   <div class="rdLeft">
    <ul class="rdList">
     <li>新品推荐</li>
     <li>饮品推荐</li>
     <div class="clears"></div>
    </ul>
    <div class="rdProBox" >
    <div style="width:750px; height:180px;overflow:hidden;"> 
      <c:forEach items="${menus }" var="m">
       <dl>
       <a href="<%=basePath %>index/showDetail?id=${m.id}">
       <img src="<%=basePath %>${m.picpath}" width="132" height="129" /></a>
		 <dd>${m.title }</dd>
     	<dd class="cheng">￥${m.price }/份</dd>
		</dl>
		</c:forEach>
     </div>
     <div class="clears"></div>
    </div><!--rdPro/-->
    <div class="rdProBox">
	<div style="width:750px; height:180px;overflow:hidden;">     
    <c:forEach items="${EE}" var="m">
       <dl>
       <a href="<%=basePath %>index/showDetail?id=${m.id}">
       <img src="<%=basePath %>${m.picpath}" width="132" height="129" /></a>
		 <dd>${m.title }</dd>
     	<dd class="cheng">￥${m.price }/份</dd>
		</dl>
		</c:forEach>
	</div>
     <div class="clears"></div>
    </div><!--rdPro/-->
   </div><!--rdLeft/-->
   <div class="rdRight">
    <img src="<%=basePath %>images/a1.jpg" width="221" height="254" />
   </div><!--rdRight/-->
   <div class="clears"></div>
  </div><!--rdPro/-->
  <div class="hengfu">
   <img src="<%=basePath %>images/zc.jpg" width="979" height="97" />
  </div><!--hengfu/-->
  <div class="floor" id="floor1">
   <h3 class="floorTitle" id="breakfast">
   1F&nbsp;&nbsp;&nbsp;&nbsp;<a name="zc">早餐推荐</a>
  <!--  <a href="proinfo.html" class="more">更多 &gt;</a> -->
   </h3>
   <div class="floorBox">
    <div class="floorLeft">
     <ul class="flList">
      <li>豆浆</li>
      <li>夹肉饼</li>
      <li>豆腐脑</li>
      <li>青菜拉面</li>
      <li>煎饼果子</li>
      <li> <a href="#">更多&gt;&gt;</a> </li>
      <div class="clears"></div>
     </ul><!--flList/-->
     <div class="flImg"><img src="<%=basePath %>images/a2.jpg" width="198" height="290" /></div>
    </div><!--floorLeft/-->
    <div class="floorRight" style="overflow:hidden;">
     <div class="frProList">
       <c:forEach items="${tt }" var="t">
       <dl>
       <a href="<%=basePath %>index/showDetail?id=${t.id}"> 
       <img src="<%=basePath %>${t.picpath}" width="132" height="129" /></a>
		 <dd>${t.title }</dd>
     	<dd class="cheng">￥${t.price }/份</dd>
		</dl>
		</c:forEach>

      <div class="clears"></div>
     </div><!--frProList-->
    </div><!--floorRight/-->
    <div class="clears"></div>
   </div><!--floorBox/-->
  </div><!--floor/-->
  <div class="hengfu">
   <img src="<%=basePath %>images/wc.jpg" width="979" height="97" />
  </div><!--hengfu/-->
  <div class="floor" id="floor3">
   <h3 class="floorTitle" id="lunch">
   2F&nbsp;&nbsp;&nbsp;&nbsp;<a name="zw">午餐推荐</a>
 <%--   <a href="<%=basePath %>/front/proinfo.jsp" class="more">更多 &gt;</a> --%>
   </h3>
   <div class="floorBox">
    <div class="floorLeft">
     <ul class="flList">
      <li>鱼香肉丝盖饭</li>
      <li>老北京炸酱面</li>
      <li>粗粮面</li>
      <li>煮馍</li>
      <li>铁锅焖面</li>
      <li><a href="#">更多&gt;&gt;</a></li>
      <div class="clears"></div>
     </ul><!--flList/-->
     <div class="flImg"><img src="<%=basePath %>images/a3.jpg" width="198" height="290" /></div>
    </div><!--floorLeft/-->
    <div class="floorRight" style="overflow:hidden;">
     <div class="frProList">
       <c:forEach items="${CC }" var="c">
       <dl>
       <a href="<%=basePath %>index/showDetail?id=${c.id}">
       <img src="<%=basePath %>${c.picpath}" width="132" height="129" /></a>
		 <dd>${c.title }</dd>
     	<dd class="cheng">￥${c.price }/份</dd>
		</dl>
		</c:forEach>
     <div class="clears"></div>
     </div><!--frProList-->
    </div><!--floorRight/-->
    <div class="clears"></div>
   </div><!--floorBox/-->
  </div><!--floor/-->

   

  <div class="hengfu">
   <img src="<%=basePath %>images/c.jpg" width="979" height="97" />
  </div><!--hengfu/-->
  <div class="floor" id="floor2">
   <h3 class="floorTitle" id="dinner">
   3F&nbsp;&nbsp;&nbsp;&nbsp;<a name="wc">晚餐推荐</a>
   <%-- <a href="<%=basePath %>/front/proinfo.jsp" class="more">更多 &gt;</a> --%>
   </h3>
   <div class="floorBox">
    <div class="floorLeft">
     <ul class="flList">
      <li>素饺子</li>
      <li>油条</li>
      <li>老豆腐</li>
      <li>煎饼果子</li>
      <li>自选菜</li>
      <li><a href="#">更多&gt;&gt;</a></li>
      <div class="clears"></div>
     </ul><!--flList/-->
     <div class="flImg"><img src="<%=basePath %>images/a4.jpg" width="198" height="290" /></div>
    </div><!--floorLeft/-->
    <div class="floorRight" style="overflow:hidden;">
     <div class="frProList">
     <c:forEach items="${DD}" var="m">
       <dl>
       <a href="<%=basePath %>index/showDetail?id=${m.id}">
       <img src="<%=basePath %>${m.picpath}" width="132" height="129" /></a>
		 <dd>${m.title }</dd>
     	<dd class="cheng">￥${m.price }/份</dd>
		</dl>
		</c:forEach>
     
      <div class="clears"></div>
     </div><!--frProList-->
    </div><!--floorRight/-->
    <div class="clears"></div>
   </div><!--floorBox/-->
  </div><!--floor/-->
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
	
</body>
</html>