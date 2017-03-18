<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Short Rent - 房主受理订单</title>
    <link rel="stylesheet" href="/ShortRent/css/login.min.css">
</head>
<body>
<nav>
    <h1>Short Rent</h1>
    <p>当前用户：${loginUser.username }</p>
</nav>
<div class="content">
    <h1>Welcome back to Short Rent</h1>

    <h2><span>房主受理订单 </span></h2>
    <div class="list-wrapper">
           <table>
			<tr>
				<th>ID</th>
				<th>房屋ID</th>
				<th>用户ID</th>
				<th>订单号</th>
				<th>入住时间</th>
				<th>退房时间</th>
				<th>价格</th>
				<th>订单状态</th>
			</tr>
			<tbody>
				<c:forEach varStatus="s" var="p" items="${pager.list}">
							<tr>
								<td>${pager.startRow+s.count-1}</td>
								<td>${p.houseId}</td>
								<td>${p.userId}</td>
								<td>${p.ordernum}</td>
								<td>${p.checkindate}</td>
								<td>${p.checkoutdate}</td>
								<td>${p.total}</td>
								<td>
									<c:if test="${p.state==2}">已取消
									</c:if> <c:if test="${p.state==3}">已受理
									</c:if><c:if test="${p.state==4}">退订
									</c:if><c:if test="${p.state==5}">已拒绝
									</c:if><c:if test="${p.state==1}">未受理
									</c:if> 
								</td>
							</tr>
					</c:forEach>	
			</tbody>
		</table>
    </div>
</div>
</body>
</html>

