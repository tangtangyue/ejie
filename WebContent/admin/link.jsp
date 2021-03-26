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
		<link rel="stylesheet" href="<%=basePath %>css/amazeui.min.css" />
		<link rel="stylesheet" href="<%=basePath %>css/admin.css" />
	</head>

	<body>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">订单管理</strong><small></small></div>
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
						<input type="text" class="am-form-field" placeholder="请输入订单编号">
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
								<tr style="font-weight:bold;">
									<th class="table-check"><input type="checkbox"></th>
									<td class="table-title" align="center">订单编号</td>
									<td class="table-type" align="center">订单用户</td>
									<td class="table-date am-hide-sm-only" align="center">订单金额</td>
									<td class="table-author am-hide-sm-only" align="center">用户地址</td>
									<td class="table-date am-hide-sm-only" align="center">用户电话</td>
									<td class="table-set" style="padding-left: 50px;">操作</td>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${orders}"  var="o">
								<tr align="center">
								
									<td><input type="checkbox"></td>
									
			
		
							<%-- 		<td>${m.id}</td> --%>
									<td>
										<a href="#">${o.id}</a>
									</td>
									 <td>${o.userid}</td>
									<td class="am-hide-sm-only">${o.zje}</td>
									<td class="am-hide-sm-only">${o.address}</td>
									<td class="am-hide-sm-only">${o.phone}</td>
									<td>
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<%-- <button class="am-btn am-btn-default am-btn-xs am-text-secondary" ><span class="am-icon-pencil-square-o"></span>  <a href="<%=basePath %>menu/getBeanById?id=${m.id}">编辑</a></button>
												<button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" ><span class="am-icon-trash-o"></span><a href="<%=basePath %>menu/delete?id=${m.id}&picpath=${m.picpath}">删除</a></button> --%>
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
		<script type="text/javascript" src="<%=basePath %>js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="<%=basePath %>myplugs/js/plugs.js"></script>
		<script>
			$( function(){
				$(".btnedit").click(function() {
		

							$.jq_Panel({
								title: "修改链接",
								iframeWidth: 500,
								iframeHeight: 300,
								url: "editLink.html"
							});
						});
						
				
			})
		</script>

	</body>
</html>