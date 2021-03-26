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
	</head>



	<body>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">菜饮管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
							<button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> <a href="<%=basePath %>menu/getTypes">新增</a></button>
						</div>
					</div>
				</div>
				<div class="am-u-sm-12 am-u-md-3">

				</div>
				<div class="am-u-sm-12 am-u-md-3">
					<div class="am-input-group am-input-group-sm">
						<input type="text" class="am-form-field" placeholder="请输入菜饮标题">
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
								<tr style="font-weight: bold;">
								
									<td class="table-check" align="center"><input type="checkbox"></td>
									<!-- <td class="table-id" align="center">ID</td> -->
									<td class="table-title" align="center">菜饮名称</td>
									<td class="table-type" align="center">菜饮内容</td>
									<td class="table-author am-hide-sm-only" align="center">菜饮价格</td>
									<td class="table-date am-hide-sm-only" align="center">菜饮图片</td>
									<td class="table-set" style="padding-left: 50px;">操作</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${menus}"  var="m">
								<tr align="center">
								
									<td><input type="checkbox"></td>
									
			
		
							<%-- 		<td>${m.id}</td> --%>
									<td>
										<a href="#">${m.title}</a>
									</td>
									 <td><div style="width:240px;height:20px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis">${m.content}</div></td>
									<td class="am-hide-sm-only">￥${m.price}</td>
									<td class="am-hide-sm-only"><img src="<%=basePath %>${m.picpath }" height="50" width="50"/></td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button class="am-btn am-btn-default am-btn-xs am-text-secondary" ><span class="am-icon-pencil-square-o"></span>  <a href="<%=basePath %>menu/getBeanById?id=${m.id}">编辑</a></button>
												<button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" ><span class="am-icon-trash-o"></span><a href="<%=basePath %>menu/delete?id=${m.id}&picpath=${m.picpath}">删除</a></button>
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
	</body>
</html>