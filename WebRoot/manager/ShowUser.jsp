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
    
    <title>用户信息</title>
    

  </head>
  
  <body>
    <div>
    	<h3>用户信息</h3>
   	  <tr>
   	  	<td>用户名：</td>
   	  	<td>${pager.username}</td>
   	  </tr>
   	  <br />
   	  <tr>
   	  	<td>密码：</td>
   	  	<td>${pager.password}</td>
   	  </tr>
   	  <br />
   	  <tr>
   	  	<td>性别：</td>
   	  	<td><c:if test="${pager.sex == 1}">男</c:if>
   	  			<c:if test="${pager.sex == 2}">女</c:if>
   	  	</td>
   	  </tr>
   	  <br />
   	  <tr>
   	  	<td>电话号码：</td>
   	  	<td>${pager.mobile}</td>
   	  </tr>
   	  <br />
   	  <tr>
   	  	<td>用户名：</td>
   	  	<td>${pager.username}</td>
   	  </tr>
   	  <br />
   	  <tr>
   	  	<td>电子邮箱：</td>
   	  	<td>${pager.email}</td>
   	  </tr>
   	  <br />
   	  <tr>
   	  	<td>地址：</td>
   	  	<td>${pager.address}</td>
   	  </tr>
   	  <br />
    </div>
    <a href="/ShortRent/actions/manager/user/showPage">返回</a>
  </body>
</html>
