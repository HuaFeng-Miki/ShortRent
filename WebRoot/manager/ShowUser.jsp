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
    <title>Short Rent - 用户详细信息</title>
    <link rel="stylesheet" href="/ShortRent/css/login.min.css">
</head>
<body>
<nav>
    <h1>Short Rent</h1>
    <p>当前管理员：${loginUser.username }</p><a href="/ShortRent/actions/logout">注销</a>
</nav>
<div class="content">
    <h1>Welcome back to Short Rent</h1>

    <h2><span>用户详细信息</span></h2>
    <div class="list-wrapper">
        <table>
	    	<h3>用户信息</h3>
	   	  <tr>
	   	  	<td>用户名：</td>
	   	  	<td>${pager.username}</td>
	   	  </tr>
	   	  <tr>
	   	  	<td>性别：</td>
	   	  	<td><c:if test="${pager.sex == 1}">男</c:if>
	   	  			<c:if test="${pager.sex == 2}">女</c:if>
	   	  	</td>
	   	  </tr>
	   	  <tr>
	   	  	<td>电话号码：</td>
	   	  	<td>${pager.mobile}</td>
	   	  </tr>
	   	  <tr>
	   	  	<td>用户名：</td>
	   	  	<td>${pager.username}</td>
	   	  </tr>
	   	  <tr>
	   	  	<td>电子邮箱：</td>
	   	  	<td>${pager.email}</td>
	   	  </tr>
	   	  <tr>
	   	  	<td>地址：</td>
	   	  	<td>${pager.address}</td>
	   	  </tr>
	    </table>
	    <a href="/ShortRent/actions/manager/user/showPage">返回</a>
    </div>
</div>
</body>
</html>
