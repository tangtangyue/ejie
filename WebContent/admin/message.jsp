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
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">用户留言</strong><small></small></div>
      </div>

      <hr>

      <div class="am-g">
        <div class="am-u-sm-12 am-u-md-6">
          <div class="am-btn-toolbar">
            <div class="am-btn-group am-btn-group-xs">
            </div>
          </div>
        </div>
        <div class="am-u-sm-12 am-u-md-3">
    
        </div>
        <div class="am-u-sm-12 am-u-md-3">
          <div class="am-input-group am-input-group-sm">
            <input type="text" class="am-form-field" placeholder="请输入留言信息">
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
                <th class="table-check"><input type="checkbox"></th><th class="table-id">ID</th><th class="table-title">标题</th><th class="table-type">内容</th><th class="table-author am-hide-sm-only">留言人</th><th class="table-date am-hide-sm-only">日期</th><th class="table-set">操作</th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td><input type="checkbox"></td>
                <td>1</td>
                <td><a href="#">你真好看</a></td>
                <td>真的很好看哎</td>
                <td class="am-hide-sm-only">管理员</td>
                <td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
                <td>
                  <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                      <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                    </div>
                  </div>
                </td>
              </tr>
              
            
              </tbody>
            </table>
            <div class="am-cf">
              
              <div class="am-fr">
                <ul class="am-pagination">
                  <li class="am-disabled"><a href="#">«</a></li>
                  <li class="am-active"><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li><a href="#">»</a></li>
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