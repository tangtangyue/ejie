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
<title>e捷网上订餐系统</title>
	<link rel="shortcut icon" type="images/x-icon" href="<%=basePath %>/images/bitbug_favicon.ico">
		<link rel="stylesheet" href="<%=basePath %>css/layui.css">
		<script type="text/javascript" src="<%=basePath %>js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="<%=basePath %>js/plugs.js"></script>
		<script src="<%=basePath %>js/layui.js"></script>
	</head>

	<body class="layui-layout-body">
		<div class="layui-layout layui-layout-admin">
			<div class="layui-header">
				<div class="layui-logo">e捷网上订餐系统</div>
				<!-- 头部区域（可配合layui已有的水平导航） -->

				<ul class="layui-nav layui-layout-right">
					<li class="layui-nav-item">
						<a href="javascript:;">
							<img src="<%=basePath %>images/1.gif" class="layui-nav-img">${AUSER.realname }
						</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="">基本资料</a>
							</dd>
							<dd>
								<a href="">安全设置</a>
							</dd>
						</dl>
					</li>
					<li class="layui-nav-item">
						<a href="<%=basePath %>admin/manager.jsp">退出</a>
					</li>
				</ul>
			</div>

			<div class="layui-side layui-bg-black">
				<div class="layui-side-scroll">
					<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
					<ul class="layui-nav layui-nav-tree" lay-filter="test">
						<li class="layui-nav-item layui-nav-itemed">
							<a class="" href="javascript:;">菜单栏</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="<%=basePath %>menu/select" target="right">菜饮管理</a>
								</dd>
								
								<dd>
									<a href="<%=basePath %>mtype/select" target="right">菜饮分类管理</a>
								</dd>
			
								<dd>
									<a href="<%=basePath %>puser/select" target="right">用户管理</a>
								</dd>
								<dd>
									<a href="<%=basePath %>order/select" target="right">订单管理</a>
								</dd>
								<dd>
									<a href="<%=basePath %>admin/message.jsp" target="right">留言管理</a>
								</dd>
								
								<dd>
									<a href="javascript:void(0)" onclick="updatePwd('修改密码',1)">修改密码</a>
								</dd>
							</dl>
						</li>
	
							</ul> 
				</div>
			</div>

			<div class="layui-body" style="z-index: 0;">
				<!-- 内容主体区域 -->
				<div style="padding: 15px;">
					<iframe src="<%=basePath %>menu/select" name="right" frameborder="0" width="100%" height="1200"></iframe>

				</div>
			</div>

			<div class="layui-footer">
				<!-- 底部固定区域 -->
				底部固定区域
			</div>
		</div>
		
	</body>
	
</html>

		<script>
			//JavaScript代码区域
			layui.use('element', function() {
				var element = layui.element;

			});
			
			/* 添加编辑弹出层 */
			function updatePwd(title, id) {
				
				$.jq_Panel({
					title: title,
					iframeWidth: 500,
					iframeHeight: 300,
					url:"<%=basePath%>admin/updatePwd.jsp"
				}); 
			
			} 
			

		</script>
	