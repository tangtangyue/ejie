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
		<link rel="stylesheet" href="<%=basePath %>css/amazeui.min.css" />
		<link rel="stylesheet" href="<%=basePath %>css/admin.css" />
		<script type="text/javascript" src="<%=basePath %>js/libs/jquery-1.10.2.min.js"></script>
		<script type="text/javascript" src="<%=basePath %>myplugs/js/plugs.js"></script>
	</head>

	<body>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">菜饮类别管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
							<button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> <a href="<%=basePath%>admin/type_add.jsp"  onclick="updatePwd('新增',1)">新增</a></button>
						</div>
					</div>
				</div>
				<div class="am-u-sm-12 am-u-md-3">

				</div>
				<div class="am-u-sm-12 am-u-md-3">
					<div class="am-input-group am-input-group-sm">
						<input type="text" class="am-form-field"  placeholder="请输入菜饮类型">
						<span class="am-input-group-btn">
            <button class="am-btn am-btn-default" type="button">搜索</button>
          </span>
					</div>
				</div>
			</div>
			<div class="am-g">
				<div class="am-u-sm-12">
					<form class="am-form">
						<table class="am-table am-table-striped am-table-hover table-main">
							<thead>
								<tr>
									<th class="table-check"><input type="checkbox"></th>
									<!-- <th class="table-id">编号</th> -->
									<th class="table-title" style="padding-left: 200px;">菜饮类别</th>
									<th class="table-set"style="padding-left: 30px;">操作</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${types }" var="t">
								<tr>
									<td><input type="checkbox"></td>
									
								<%-- 	<td>${t.id}</td> --%>
									<td style="padding-left: 210px;">
									${t.tname}
									</td>
									
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span><a href="<%=basePath%>mtype/getBeanById?id=${t.id}">编辑</a></button>
												<button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> <a href="<%=basePath%>mtype/delete?id=${t.id}">删除</a></button>
											</div>
										</div>
									</td>
									
								</tr>
					</c:forEach>
							</tbody>
						</table>
						<div class="am-cf">
							
							<div class="am-fr">
								<ul class="am-pagination">
									<li>
										<a href="<%=basePath%>${page.page_first}">«</a>
									</li>
									<li>
										<a href="<%=basePath%>${page.page_pre}">上一页</a>
									</li>
									<li>
										<a href="<%=basePath%>${page.page_next}">下一页</a>
									</li>
		
									<li>
										<a href="<%=basePath%>${page.page_last}">»</a>
									</li>
								</ul>
							</div>
						</div>
						<hr>
					</form>
				</div>

			</div>
		</div>
		
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
					url:"<%=basePath%>admin/type_add.jsp"
				}); 
			
			} 
			

		</script>
	</body>
</html>