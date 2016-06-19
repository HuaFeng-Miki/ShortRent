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

<div class="logoContainer">
	<div class="logo">
		<div id="logo">
			
		</div>
		<nav>
		<ul>
			<li><a href="/ShortRent/user/usermain.jsp">放弃修改</a></li>
			<li><a href="/ShortRent/user/usermodify.jsp">修改信息</a></li>
			<li><a href=""></a>
			</li>
		</ul>
		</nav>
		<div class="clearfloat"></div>
	</div>
</div>
<script type="text/javascript">
	function checkpwd() {

		var upwd = document.getElementById("upwd").value;
		var upwd1 = document.getElementById("upwd1").value;
		if (upwd == "") {
			alert("请输入原密码");
		   return false;
		}
		if (upwd != upwd1) {
			alert("原密码输入不正确");
			return false;
		}
		var newpwd = document.getElementById("newpwd").value;
		if (newpwd == "") {
			alert("请输入新密码");
			return false;
		}
		var confirm = document.getElementById("confirm").value;
		if (confirm == "") {
			alert("请输入确认密码");
			return false;
		}
		if (newpwd != confirm) {
			alert("两次输入密码不一致");
			return false;
		}
	}
</script>
</head>

<body>
	<div class="wrapper">
		<h1>修改您的短租网账户密码</h1>
		<dir>
			<font color="red">${message}</font>
		</dir>
		<form action="/ShortRent/actions/user/userpwdmodify" method="post" onsubmit="return checkpwd();">
			<div class="contentBody">
				<div class="cBlock">
					<li>用户名：${user.uname}</li>
					<br>
					<li>原密码：</li>
					<INPUT type=password id="upwd" name=upwd>
					<li>新密码：</li>
					<INPUT id=newpwd type=password name="user.upwd">
					<li>确认密码：</li>
					<INPUT type=password name=confirm id="confirm">
					<input type="hidden" name="upwd1" id="upwd1" value="${user.upwd}"> 
					<br>
					<br>
					<input type="submit" value="提  交" />
				</DIV>
			</DIV>
		</form>

		<div class="clearfloat"></div>
	</div>
	<%@include file="/inc/foot.jsp"%>
</body>
</html>
