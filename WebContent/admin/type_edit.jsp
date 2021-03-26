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
	    <link rel="stylesheet" href="<%=basePath %>css/amazeui.min.css">
		<link rel="stylesheet" href="<%=basePath %>css/admin.css">
		<link rel="stylesheet" href="<%=basePath %>css/app.css">
		<style>
			.admin-main{
				padding-top: 0px;
			}
		</style>
	</head>
	<body>
		<div class="am-cf admin-main">
		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				<div class="am-g">
					<form class="am-form am-form-horizontal" action="<%=basePath %>mtype/update" method="post" 
					style="padding-top:30px;" data-am-validator>
					<%-- 	<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
							菜饮编号 </label>
							<div class="am-u-sm-9">
								<input type="text" id="doc-vld-pwd-1" required placeholder="请输入菜饮编号" 
									name="id" value="${type.id}"> <small>输入菜饮编号。</small>
							</div>
						</div> --%>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
								菜饮类型</label>
							<div class="am-u-sm-9">
							<input type="hidden" name="id" value="${type.id}"/>
								<input type="text" id="doc-vld-pwd-2" required placeholder="请输入菜饮类型" 
									name="tname"  value="${type.tname}"  data-equal-to="doc-vld-pwd-1"  required> <small>输入菜饮类型。</small>
							</div>
						</div>
						<div class="am-form-group">
							<div class="am-u-sm-9 am-u-sm-push-3">
								<input type="submit" class="am-btn am-btn-success" value="修改" />
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="<%=basePath %>js/libs/jquery-1.10.2.min.js">
	</script>
	<script type="text/javascript" src="<%=basePath %>myplugs/js/plugs.js">
	</script>
	</body>
</html>