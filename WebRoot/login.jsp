<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
  
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
	
	<div class="logoContainer">
		<div class="logo">
			<div id="logo">
				<a href="index.jsp"><img src="images/logoHouse.png" alt="" /></a>
			</div>
			<nav>
				<ul>
					<li class="active">
						<a href="index.jsp">返回首页</a>
					</li>
					<li>
						<a href=""></a>
					</li>
				</ul>
			</nav>
			<div class="clearfloat"></div>
		</div>
	</div>
  </head>
  
  <body>
	
	<div class="wrapper">
		<<center><h1>欢迎来到短租网,寻找您旅途中的家</h1></center>
		
	 <center>	
	<div class="sidebar">
        <div class="sBlock">
        <font color="red">${message}</font>
         
        	<h2>登录您的账户</h2>
            <form id="frmLogin" action="/ShortRent/actions/login" method="post">
            	用户名:
            	<input type="text" name="username" size="20" style="width:200px; height:30px;"/>
            	密码:
            	<input type="password" name="password" size="20" style="width:200px; height:30px;"/>
            	<br>
            	<li><a href="register.jsp">还没注册？</a></li>
            	<br> 
            	<br>
            	<input type="submit" name="login" value="登录"  style="width:50px; height:30px;"
            	placeholder="请输入用户名" autofocus required minlength="3"/>
				<input type="reset" name="exit" value="重置" style="width:50px; height:30px;"
				placeholder="请输入密码" required minlength="3"/>
				<br>
            </form>
        </div>
    </div> 
	</center>
	<div class="clearfloat"></div>
	</div>
	<%@include file="/inc/foot.jsp"%>
  </body>
</html>
