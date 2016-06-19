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
    <title>Short Rent - 用户登录</title>
    <link rel="stylesheet" href="/ShortRent/css/login.min.css">
</head>
<body>
<nav>
    <h1>Short Rent</h1>
    <c:if test= "${loginUser.username == null }">
    	<p>帮助热线 800-820-8820</p><a href="/ShortRent/register.jsp">注册</a><a href="/ShortRent/index.jsp">主页</a>
    </c:if>
    <c:if test= "${loginUser.username != null }">
    	<p>当前用户：${loginUser.username }</p><a href="/ShortRent/actions/logout">注销</a>
    </c:if>
</nav>
<div class="content">
    <h1>Welcome back to Short Rent</h1>

    <h2><span>登录您的账户</span></h2>
    <form id="frmLogin" action="/ShortRent/actions/login" method="post">
        <label for="username">用户名</label>
        <input type="text" id="username" name="username"/>
        <label for="password">密码</label>
        <input type="password" id="password" name="password"/>
        <button type="submit" name="login">登录</button>
        <button type="reset" name="reset">重置</button>
    </form>
</div>
</body>
</html>