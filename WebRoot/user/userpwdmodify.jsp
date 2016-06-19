<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    <title>Short Rent -用户密码修改</title>
    <link rel="stylesheet" href="/ShortRent/css/login.min.css">
</head>
<body>
<nav>
    <h1>Short Rent</h1>
    <p>当前用户：${loginUser.username }</p><a href="/ShortRent/index.jsp">主页</a>
</nav>
<div class="content">
    <h1>Welcome back to Short Rent</h1>

    <h2><span>用户密码修改 </span></h2>
    <div class="list-wrapper">
        <ul>
			<li><a href="/ShortRent/user/usermain.jsp">放弃修改</a></li>
			<li><a href="/ShortRent/user/usermodify.jsp">修改信息</a></li>
			<li><a href=""></a>
			</li>
		</ul>
		<h1>修改账户密码</h1>
		<form action="/ShortRent/actions/user/UserPwdModify" method="post" onsubmit="return checkpwd();">
			<input type="hidden"  value="${loginUser.id}" name="uId"><p>
			用户名：${loginUser.username}<br />
			原密码：<input id="upwd" type=password  name=oldPassword><br />
			新密码：<input id=newpwd type=password name="newPassword"> <br />
			确认密码：<input id="confirm" type=password name=confirm> <br />
			<br />
			<input type="submit" value="提  交" />
		</form>
    </div>
</div>
</body>
</html>

