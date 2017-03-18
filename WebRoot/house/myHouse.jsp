<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Short Rent - 我的房屋</title>
    <link rel="stylesheet" href="/ShortRent/css/login.min.css">
</head>
<body>
<nav>
    <h1>Short Rent</h1>
    <p>当前用户：${loginUser.username }</p><a href="/ShortRent/user/main.jsp">用户界面</a>
</nav>
<div class="content">
    <h1>Welcome back to Short Rent</h1>

    <h2><span>我的房屋 </span></h2>
    <div class="list-wrapper">
          <table>
			<tr>
				<th>ID</th>
				<th>房屋名称</th>
				<th>出租类型</th>
				<th>详细地址</th>
				<th>日租价</th>
				<th>是否提供发票</th>
				<th>类型</th>
				<th>卧室数</th>
			</tr>
			<tbody>
				<c:forEach varStatus="s" var="p" items="${pager.list}">
							<tr>
								<td>${pager.startRow+s.count-1}</td>
								<td>${p.name}</td>
								<td>
									<c:if test="${p.renttype==null||p.renttype==1}">
										<div style="color:blue"">整租</div>
									</c:if> <c:if test="${p.renttype==2}">
										<div style="color:green"">单间</div>
									</c:if> <c:if test="${p.renttype==3}">床位</c:if>
								</td>
								<td>${p.address}</td>
								<td>${p.dayprice}</td>
								<td>
									<c:if test="${p.bill==null||p.bill==2}">
										<div style="color:blue"">不提供</div>
									</c:if> <c:if test="${p.bill==1}">
										<div style="color:green"">提供</div>
									</c:if> 
								</td>
								<td>
									<c:if test="${p.kind==null||p.kind==1}">
										<div style="color:blue"">酒店</div>
									</c:if> <c:if test="${p.kind==2}">
										<div style="color:green"">旅馆</div>
									</c:if><c:if test="${p.kind==3}">
										<div style="color:red"">客栈</div>
									</c:if> <c:if test="${p.kind==2}">
										<div style="color:orange">居民</div>
									</c:if> 
								</td>
								<td>${p.bedroomnum}</td>
								<td><a href="/ShortRent/actions/house/detail?hId=${p.id}">详细内容</a></td>
							</tr>
					</c:forEach>	
			</tbody>
		</table>
    </div>
</div>
</body>
</html>