<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Short Rent - 管理员选项</title>
    <link rel="stylesheet" href="/ShortRent/css/login.min.css">
</head>
<body>
<nav>
    <h1>Short Rent</h1>
    <p>当前管理员：${loginUser.username }</p><a href="/ShortRent/actions/logout">注销</a>
</nav>
<div class="content">
    <h1>Welcome back to Short Rent</h1>

    <h2><span>管理员选项 </span></h2>
    <div class="list-wrapper">
            <ul>
            	<li><a href="/ShortRent/actions/manager/house/showPage">浏览房屋信息</a></li>
            	<li><a href="/ShortRent/actions/manager/user/showPage">浏览用户信息</a></li>
            	<li><a href="/ShortRent/actions/logout">注销</a></li>
            </ul>
            <h3>查询统计</h3>
			<ul>
						<li>
							<a href="#">房屋统计</a>
						</li>
						<li>
							<a href="#">订单统计</a>
						</li>
				</ul>
    </div>
</div>
</body>
</html>
