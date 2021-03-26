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
					<form class="am-form am-form-horizontal" action="<%=basePath %>menu/save" method="post"  enctype="multipart/form-data"  
					style="padding-top:30px;" data-am-validator>
					
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
								标题</label>
							<div class="am-u-sm-9">
								<input type="text" id="doc-vld-pwd-2" required placeholder="请输入菜饮标题" 
									name="title"  data-equal-to="doc-vld-pwd-1"  required> <small>输入菜饮标题。</small>
							</div>
							
						</div>
						
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
								菜饮类型</label>
							<div class="am-u-sm-9">
						<select name="typeid">
							<c:forEach items="${types }" var="t">
								<option value="${t.id }">${t.tname }
							</c:forEach>
						</select>
							</div>
							
						</div>
						
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
								内容</label>
							<div class="am-u-sm-9">
								内容：<textarea rows="5" cols="30" name="content" placeholder="请输入菜饮内容" ></textarea><small>输入菜饮内容。</small>
							</div>
							
						</div>
						
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
								菜饮图片</label>
							<div class="am-u-sm-9">
							<input type="file" name="uploadFile"/><small>请上传菜饮图片。</small>
							</div>
							
						</div>
						
						
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">
								菜饮价格</label>
							<div class="am-u-sm-9">
								<input type="text" id="doc-vld-pwd-2" required placeholder="请输入菜饮价格" 
									name="price"  data-equal-to="doc-vld-pwd-1"  required> <small>输入菜饮价格。</small>
							</div>
							
						</div>
						
						<div class="am-form-group">
							<div class="am-u-sm-9 am-u-sm-push-3">
								<input type="submit" class="am-btn am-btn-success" value="新增" />
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