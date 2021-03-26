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
	<link rel="stylesheet" type="text/css" href="<%=basePath %>css/payment.css">
</head>
<body>
	<div class="problem">
		<div class="wel">
			<span>你好，欢迎使用支付宝付款！</span> 
		</div>
		<div class="often">
			<a href="https://help.alipay.com/lab/help_detail.htm?help_id=258086" target="blank">常见问题</a>
		</div>
	</div>
	<div class="paylogo">
		<div class="picture">
			<img src="<%=basePath %>images/paylogo.png" alt=""> 
		</div>
		<div class="cash">
			<span>我的收银台</span> 
		</div>
	</div>
	<div class="on">
		<div class="inner">
			<div class="use">正在使用及时到账交易</div>
			<div class="pay">交易将在<span>23小时59分钟</span>后关闭，请及时付款!</div>
			<div class="e">e捷商品</div>
			<div class="double">收款方:山西双体系</div>
			<div class="money">
				<form action="" method="">
					<input type="text">
				</form>
			</div>
			<span>元</span>
		</div>
	</div>
	<div class="middle">
		<div class="across">
		<!-- 支付宝付款部分 -->
			<div class="scanner">
				<span>扫一扫付款(元)</span> 
			</div>
			<div class="wage">
				<form action="">
				 	<input type="text"> 
				 </form> 
			</div>
			<div class="code">
				<img src="<%=basePath %>images/code.png" alt="">
			</div> 
			<!-- 微信支付 -->
			<div class="w-scanner">
				<span>扫一扫付款(元)</span> 
			</div>
			<div class="w-wage">
				<form action="">
					<input type="text"> 
				</form> 
			</div>
			<div class="w-code">
				<img src="<%=basePath %>images/w-code.png" alt="">
			</div>
			<div class="w-download">
				<!-- <a href="http://www.downza.cn/soft/191010.html" target="blank">首次使用请下载手机支付宝</a> -->
			</div>
		</div>
	</div>
</body>
</html>