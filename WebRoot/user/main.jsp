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
    <title>Short Rent - 用户选项</title>
    <link rel="stylesheet" href="/ShortRent/css/login.min.css">
</head>
<body>
<nav>
    <h1>Short Rent</h1>
    <p>当前用户：${loginUser.username }</p><a href="/ShortRent/index.jsp">主页</a>
</nav>
<div class="content">
    <h1>Welcome back to Short Rent</h1>

    <h2><span>用户选项 </span></h2>
    <div class="list-wrapper">
           		<div>
				<input type="hidden"  value="${loginUser.id}" name="uId" />
				<ul>
						<li>
							<font color="red">${loginUser.username },欢迎您！</font>
						</li>
						<li>
							<a href = "/ShortRent/user/usermodify.jsp?uId=${loginUser.id}">修改个人信息</a>
						</li>
												<li>
							<a href = "/ShortRent/user/userpwdmodify.jsp?uId=${loginUser.id}">修改密码</a>
						</li>
						<li>
								<a href="/ShortRent/actions/logout">注销</a>
						</li>
				</ul>
		</div>
		<div>
			<h3>我是房主</h3>
			<ul>
						<li>
								<a href="/ShortRent/actions/house/releaseHouse?uId=${loginUser.id}">发布房屋</a>
						</li>
						<li>
								<a href="/ShortRent/actions/order/pendingOrder?uId=${loginUser.id}">受理订单</a>	
						</li>
						<li>
								<a href="/ShortRent/actions/house/myHouse?uId=${loginUser.id}">我的房屋</a>
						</li>
						<li>
								<a href="/ShortRent/house/createHouse.jsp">创建房屋</a>
						</li>
				</ul>
		</div>
		<div>
			<h3>我是房客</h3>
			<ul>
						<li>
							<a href="/ShortRent/index.jsp">查找房子</a>
						</li>
						<li>
							<a href="/ShortRent/actions/order/newOrder?uId=${loginUser.id}">待受理订单</a>
						</li>
						<li>
							<a href="/ShortRent/actions/order/dealOrder?uId=${loginUser.id}">已受理订单</a>	
						</li>
				</ul>
		</div>
		<div>
			<h3>交易记录</h3>
			<ul>
						<li>
								<a href="/ShortRent/actions/order/orderFinish?uId=${loginUser.id}">成交订单</a>
						</li>
						<li>
								<a href="/ShortRent/actions/order/orderCount?uId=${loginUser.id}">交易记录</a>
						</li>
				</ul>
		</div>
    </div>
</div>
</body>
</html>
