<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>管理员：房屋信息</title>
		
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	
	<div class="logoContainer">
		<div class="logo">
			<div id="logo">
				<a href="index.jsp"><img src="images/logoHouse.png" alt="" />
				</a>
			</div>
			<nav>
				<ul>
					<li class="active">
						管理选项
					</li>
					<li class="active">
						当前管理员: ${loginUser.username }
					</li>
				</ul>
			</nav>
		<div class="clearfloat"></div>
		</div>
	</div>
	</head>

<body>
	<div>
        <div>
        	<h2>请选择相应操作</h2>
            <ul>
            	<li><a href="/ShortRent/actions/manager/house/showPage">浏览房屋信息</a></li>
            	<li><a href="/ShortRent/actions/manager/user/showPage">浏览用户信息</a></li>
            	<li><a href="/ShortRent/actions/logout">注销</a></li>
            </ul>
        </div>
	</div>
	<div class="clearfloat"></div>
	<%@include file="/inc/foot.jsp"%>
	</body>
</html>
