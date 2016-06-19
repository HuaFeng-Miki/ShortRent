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
    <title>Short Rent - 用户信息</title>
    <link rel="stylesheet" href="/ShortRent/css/login.min.css">
</head>
<body>
<nav>
    <h1>Short Rent</h1>
    <p>当前管理员：${loginUser.username }</p><a href="/ShortRent/actions/logout">注销</a>
</nav>
<div class="content">
    <h1>Welcome back to Short Rent</h1>

    <h2><span>用户信息 </span></h2>
    <div class="list-wrapper">
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
    </div>
</div>
</body>
</html>