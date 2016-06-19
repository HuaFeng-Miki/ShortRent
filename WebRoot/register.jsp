<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
    <title>Short Rent - 用户注册</title>
    <link rel="stylesheet" href="css/login.min.css">
</head>
<body>
<nav>
    <h1>Short Rent</h1>
    <c:if test= "${loginUser.username == null }">
    	<p>帮助热线 800-820-8820</p><a href="/ShortRent/login.jsp">登陆</a><a href="/ShortRent/index.jsp">主页</a>
    </c:if>
    <c:if test= "${loginUser.username != null }">
    	<p>当前用户：${loginUser.username }</p><a href="/ShortRent/actions/logout">注销</a>
    </c:if>
</nav>
<div class="content">
    <h1>Welcome to join Short Rent</h1>

    <h2><span>注册您的账户</span></h2>
    <form action="/ShortRent/actions/register" method="post" onsubmit="return checkRegister();">
        <label for="username">用户名</label>
        <input type="text" id="username" name="user.username"/>
        <label for="pwd">密码</label>
        <input type="password" id="pwd" name="user.password"/>
        <label for="confirm">确认密码</label>
        <input type="password" id="confirm" name="user.password2"/>
        <label for="phone">手机号码</label>
        <input type="text" id="phone" name="user.mobile"/>
        <label for="email">电子邮箱</label>
        <input type="text" id="email" name="user.email"/>
        <button type="submit" name="login">注册</button>
        <button type="reset" name="reset">重置</button>
    </form>
    <script src="/ShortRent/js/register.js"></script>
</div>
</body>
</html>