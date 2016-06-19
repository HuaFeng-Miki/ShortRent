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
    <title>Short Rent - 用户个人信息修改</title>
    <link rel="stylesheet" href="/ShortRent/css/login.min.css">
</head>
<body>
<nav>
    <h1>Short Rent</h1>
    <p>当前用户：${loginUser.username }</p><a href="/ShortRent/index.jsp">主页</a>
</nav>
<div class="content">
    <h1>Welcome back to Short Rent</h1>

    <h2><span>用户个人信息修改 </span></h2>
    <div class="list-wrapper">
            <ul>
				<li><a href="/ShortRent/user/usermain.jsp">放弃修改</a></li>
				<li><a href="/ShortRent/user/userpwdmodify.jsp">修改密码</a></li>
			</ul>
		<h1>修改账户信息</h1>
		<form action="/ShortRent/actions/user/UserInfoModify" method="post"
			onsubmit="return checkupdate()" enctype="multipart/form-data">
					<input type="hidden"  value="${loginUser.id}" name="uId"><p>
					用户名：${loginUser.username}<br />
					电子邮箱：
					<input name="email" id="email" value="${loginUser.email}" /><br />
					联系电话：
					<input name="mobile" id="mobile" value="${loginUser.mobile}" /><br />
					性别：
						<s:radio name="sex" list="%{#{'1':'男'}}" value="1" />
						<s:radio name="sex" list="%{#{'2':'女'}}" value="2" />
					<br />
					地 址：
					<input name="address" id="address" value="${loginUser.address}" size="30" /><br />
					<input class="btn" type="submit" value=保存修改>&nbsp;&nbsp;&nbsp;
					<input type="reset" value="重     置">
			</form>
    </div>
</div>
</body>
</html>