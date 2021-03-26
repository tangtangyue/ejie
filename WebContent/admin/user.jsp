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
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">用户管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
							<!-- <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</button> -->
						</div>
					</div>
				</div>
				<div class="am-u-sm-12 am-u-md-3">

				</div>
				<div class="am-u-sm-12 am-u-md-3">
					<div class="am-input-group am-input-group-sm">
						<input type="text" class="am-form-field" placeholder="请输入用户姓名">
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
									<th class="table-id">账号</th>
									<th class="table-title" style="text-align: center;">用户名</th>
									<th class="table-type" style="padding-left: 30px;text-align:center">电话</th>
									<th class="table-author am-hide-sm-only" style="padding-left: 30px;">地址</th>
									<th class="table-author am-hide-sm-only">用户状态</th>
									<th class="table-set" style="padding-left: 20px;">操作</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${pusers}" var="p">
								<tr>
									<td><input type="checkbox"></td>
									<td style="width:100px;">${p.zh}</td>
									<td align="center" style="width:100px;">
										<a href="#">${p.realname}</a>
									</td>
									<td style="text-align:center">${p.phone}</td>
									<td class="am-hide-sm-only">${p.address}</td>
									<td class="am-hide-sm-only" style="padding-left: 30px;">
						<c:if test="${p.flag!=0}">
					   <div>×</div>                        
					   </c:if>
                        <c:if test="${p.flag==0}">
                        <div>√</div>
                        </c:if>	
									</td> 
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> <a href="<%=basePath %>puser/agetBeanById?id=${p.id}">修改</a></button>
												<!-- <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button> -->
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