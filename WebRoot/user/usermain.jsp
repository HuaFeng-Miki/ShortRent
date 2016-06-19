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
		<title>${loginUser.username}欢迎来到房屋租借网</title>
	</head>


	<body>

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
			<h3>我是房东</h3>
			<ul>
						<li>
								<a href="/ShortRent/actions/house/releaseHouse?uId=${loginUser.id}">发布房屋</a>
						</li>
						<li>
								<a href="/ShortRent/actions/order/pendingOrder">受理订单</a>	
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
								<a href="#">成交订单</a>
						</li>
						<li>
								<a href="#">交易记录</a>
						</li>
				</ul>
		</div>
		<div>
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
		<%@include file="/inc/foot.jsp"%>
	</body>
</html>
