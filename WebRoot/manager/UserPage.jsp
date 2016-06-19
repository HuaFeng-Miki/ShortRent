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
				<th>姓名</th>
				<th>密码</th>
				<th>性别</th>
				<th>电话</th>
				<th>邮箱</th>
				<th>地址</th>
				<th>图片</th>
			</tr>
			<tbody>
				<c:forEach varStatus="s" var="p" items="${pager.list}">
							<tr>
								<td>${pager.startRow+s.count-1}</td>
								<td>${p.username}</td>
								<td>${p.password}</td>
								<td>
									<c:if test="${p.sex==null||p.sex==1}">
										<div style="color:blue"">男</div>
									</c:if> <c:if test="${p.sex==2}">
										<div style="color:green"">女</div>
									</c:if> 
								</td>
								<td>${p.mobile}</td>
								<td>${p.email}</td>
								<td>${p.address}</td>
								<td>${p.picture}</td>
								<td>			
								<a href="/ShortRent/actions/manager/user/del?uId=${p.id}">
										删除</a>
								<a	href="/ShortRent/actions/manager/user/detail?uId=${p.id}">
										详细内容</a>
								</td>
							</tr>
					</c:forEach>	
			</tbody>
		</table>
		<%@include file="/inc/foot.jsp"%>
	</body>
</html>