<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<title>修改用户信息</title>
</head>

<body>
	<div class="logoContainer">
	<div class="logo">
		<div id="logo">
			
		</div>
		<ul>
			<li><a href="/ShortRent/user/usermain.jsp">放弃修改</a></li>
			<li><a href="/ShortRent/user/usermodify.jsp">修改信息</a></li>
			<li><a href=""></a>
			</li>
		</ul>
		<div class="clearfloat"></div>
	</div>
	</div>
	<div class="wrapper">
		<h1>修改您的短租网账户密码</h1>
		<form action="/ShortRent/actions/user/UserPwdModify" method="post" onsubmit="return checkpwd();">
			<input type="hidden"  value="${loginUser.id}" name="uId"><p>
			用户名：${loginUser.username}<br />
			原密码：<input id="upwd" type=password  name=oldPassword><br />
			新密码：<input id=newpwd type=password name="newPassword"> <br />
			确认密码：<input id="confirm" type=password name=confirm> <br />
			<br />
			<input type="submit" value="提  交" />
		</form>

		<div class="clearfloat"></div>
	</div>
	<%@include file="/inc/foot.jsp"%>
</body>
</html>
