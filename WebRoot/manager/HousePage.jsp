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
					<li>
						<a href="/ShortRent/manager/main.jsp">返回管理选择界面</a>
					</li>
				</ul>
			</nav>
		<div class="clearfloat"></div>
		</div>
	</div>
	</head>

	<body>
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
								<td><a href="/ShortRent/actions/manager/house/detail?hId=${p.id}">详细内容</a></td>
								<td>
									<c:if test="${p.state==1}">
								<a href="/ShortRent/actions/manager/house/pass?hId=${p.id}">
										通过</a>
								<a	href="/ShortRent/actions/manager/house/refuse?hId=${p.id}">
								拒绝</a>
								</c:if>
								<c:if test="${p.state==2}">
										<div style="color:green">已通过</div>
								</c:if> <c:if test="${p.state==4}">
										<div style="color:red">已拒绝</div>
								</c:if> 
								</td>
							</tr>
					</c:forEach>	
			</tbody>
		</table>
		<%@include file="/inc/foot.jsp"%>
	</body>
</html>