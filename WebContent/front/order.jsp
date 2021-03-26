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
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="<%=basePath %>/js/carts.js"></script>
     <script src="<%=basePath %>js/jquery-1.4.4.min.js"></script>
<script >
	function checkUser(){
		$.ajax( {
			url:'<%=basePath %>order/xd1',
			type:'post',
			data: {
				
			},
			datatype : "json",//"xml", "html", "script", "json", "jsonp", "text".           
			success : function(data) {
				 $("#lab").text("￥"+data); 
			}
		});
		
		
	}
	</script>

</head>
<body onload="checkUser()">
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
   <form action="" method="post" class="subBox">
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
    <!--  <a href="demo.html">[登录]</a>&nbsp;<a href="demo1.html">[注册]</a><br> -->
     
     <img src="<%=basePath %>images/gouimg.png" width="19" height="20" style="position:relative;top:6px;" />&nbsp;|&nbsp; 
    <a href="<%=basePath%>/front/addshop.jsp">购物车<img src="<%=basePath %>images/youjian.jpg" width="5" height="8" />   
    </div><!--gouCar/-->
    <!-- <div class="myChunlv">
     <a href="vip.html"><img src="images/mychunlv.jpg" width="112" height="34" /></a>
    </div> --><!--myChunlv/-->
   </div><!--gouwuche/-->
  </div><!--lsg/-->

  <div class="positions">
   当前位置：<a href="<%=basePath %>index/index">首页</a> &gt; <a href="order.html" class="posCur">购物车</a>
  </div><!--positions/-->
  <div class="cont">
   <div class="carImg"><img src="<%=basePath %>images/car1.jpg" width="951" height="27" /></div>
   <table class="orderList">
    <tr>
     <th width="60"></th>
     <th width="100">菜饮图片</th>
     <th width="160">菜饮名称</th>
     <th width="160">单价</th>
     <th width="140">数量</th>
     <th width="135">总金额</th> 
     <th>操作</th>
    </tr>
    <c:forEach items="${shop }" var="o">
    	<tr>
     <td></td>
     <td>
      <dl>
       <dt><a href=""><img src="<%=basePath %>${o.picpath}" width="85" height="85"/></a></dt>
       
       <td>${o.title }<br /><span class="red"></span></td>
    
       <div class="clears"></div>
      </dl>
     </td>
     <td><strong class="red">￥${o.price }</strong></td>
     <td style="padding-left: 25px;">
     <div class="jia_jian">
      <img src="<%=basePath %>images/jia.jpg" width="21" height="25" class="jian" />
      <input type="text" class="shuliang" value="${o.spsl}" />
      <img src="<%=basePath %>images/jia.jpg" width="21" height="25" class="jia" />
     
      </div>
     </td>

     <td><strong class="red">￥${o.spsl*o.price}</strong></td></a>
     <td><br /><a href="#" class="green">删除</a></td>
    </tr>
    </c:forEach>
   
    <tr>
     <td colspan="6"><div class="shanchu"><img src="<%=basePath %>images/lajio.jpg" /> 全部删除</div></td>
    </tr>
   </table><!--orderList/-->
   <div class="zongji">
  
    总计(不含运费)：<strong class="red" id="lab"></strong> 
   
   </div><!--zongji/-->
   <div class="jiesuan">
   <a href="<%=basePath %>index/index" class="jie_1">继续订餐&gt;&gt;</a>
    <a href="<%=basePath %>order/xd" class="jie_2">立即下单&gt;&gt;</a>
    <div class="clears"></div>
   </div><!--jiesuan/-->
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