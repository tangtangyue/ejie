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
     <div class="hotWord" style="overflow: hidden">
      <%-- 热门搜索：
      
     <a href="<%=basePath %>index/index"><strong>首页</strong>&nbsp;&nbsp;</a>
				<c:forEach items="${types}" var="t">
					<a href="">${t.tname }&nbsp;&nbsp;</a>
				</c:forEach> --%>
     </div><!--hotWord/-->
    </div><!--subBoxDiv/-->
   </form><!--subBox/-->
   <div class="gouwuche">
    <div class="gouCar">
    <!--  <a href="demo.html">[登录]</a>&nbsp;<a href="demo1.html">[注册]</a><br> -->
     <img src="<%=basePath %>images/gouimg.png" width="19" height="20" style="position:relative;top:6px;" />&nbsp;|&nbsp; 
    <a href="<%=basePath%>/front/addshop.jsp"">购物车<img src="images/youjian.jpg" width="5" height="8" />   
    </div><!--gouCar/-->
    <!-- <div class="myChunlv">
     <a href="vip.html"><img src="images/mychunlv.jpg" width="112" height="34" /></a>
    </div> --><!--myChunlv/-->
   </div><!--gouwuche/-->
  </div><!--lsg/-->

  <div class="pnt">
   <div class="pntLeft">
    <h2 class="Title">功能专区</h2>
    <ul class="InPorNav">
     <li><a href="product.html">餐饮查询<span style="float: right;padding-right: 20px;">></span></a>
      <div class="chilInPorNav">
       <a href="#">早餐</a>
       <a href="#">午餐</a>
       <a href="#">晚餐</a>
       <a href="#">饮品</a>
       <!-- <a href="#">平板电脑</a>
       <a href="#">蓝牙耳机</a>
       <a href="#">专业单反</a>
       <a href="#">拍立得</a> -->
      </div><!--chilLeftNav/-->
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
     <li class="navCur"><a href="index.html">e捷首页</a></li>
     <li><a href="end.html">促销中心</a></li>
     <li><a href="login.html">会员中心</a></li>
     <li><a href="help.html">帮助中心</a></li>
     <div class="clears"></div>
     <div class="phone">TEL：021-12345678</div>
    </ul><!--nav/-->


   </div><!--pntRight/-->
   
   <div class="contRight">
    <!-- <h4 class="gouLiu">联系我们</h4> -->
    <div class="contactBox">
    <ul class="contactLeft">
     <li><strong>e捷网上订餐系统</strong></li>
     <li>地址：山西省晋中市太谷县学院路8号山西农业大学信息学院</li>
     <li>邮箱：sadld@yueke.com</li>
     <li>网址：http://www.cisau.com.cne</li>
     <li>电话：+86 15383646158</li>
    </ul><!--contactLeft/-->
    
    <!--引用百度地图API-->
<style type="text/css">
    html,body{margin:0;padding:0;}
    .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
<!--百度地图容器-->
  <div style="width:501px;height:361px;border:#ccc solid 1px;" id="dituContent"></div>
  <script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(112.5715911443329,37.44994195357885);//定义一个中心点坐标
        map.centerAndZoom(point,17);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    //标注点数组
    var markerArr = [{title:"e捷网上订餐系统",content:"地址：山西省晋中市太谷县学院路8号山西农业大学信息学院<br/>电话：153-8364-6158<br/>传真：0354-00000000&nbsp;<br/>客服电话：0354-00000000<br/>销售邮箱：sales@wfdbn.net<br/>客服邮箱：kefu@weghnd.net&nbsp;<br/>学校网址：http://www.cisau.com.cn",point:"112.57763147903444|37.44894540401203",isOpen:0,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
		 ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
			
			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
    initMap();//创建和初始化地图
</script>
   </div><!--contactBox/-->
   </div><!--contRight/-->
   <div class="clears"></div>
  </div><!--cont/-->
   <div class="inHelp">
   <div class="inHLeft">
    <h4>帮助中心</h4>
    <ul class="inHeList">
     <li><a href="help.html">订餐指南</a></li>
     <li><a href="help.html">支付方式</a></li>
     <li><a href="help.html">售后服务</a></li>
     <li><a href="about.html">企业简介</a></li>
     <div class="clears"></div>
    </ul><!--inHeList/-->
   </div><!--inHLeft/-->
   <div class="inHLeft">
    <h4>会员服务</h4>
    <ul class="inHeList">
     <li><a href="reg.html">会员注册</a></li>
     <li><a href="login.html">会员登录</a></li>
     <li><a href="order.html">购物车</a></li>
     <li><a href="myorder.html">我的订单</a></li>
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
   <a href="index.html">e捷首页</a>&nbsp;|&nbsp;
   <a href="product.html">促销中心</a>&nbsp;|&nbsp;
   <a href="order.html">我的订单</a>&nbsp;|&nbsp;
   <a href="end.html">新闻动态</a>&nbsp;|&nbsp;
   <a href="end.html">会员中心</a>&nbsp;|&nbsp;
   <a href="help.htmll">帮助中心</a>
   </p>
   <p>
    版权所有：e捷订餐
  </div><!--footer/-->
</div><!-- mianCont/  -->
 <a href="#" class="backTop">&nbsp;</a>
</body>
</html>