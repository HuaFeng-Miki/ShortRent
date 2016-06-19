<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Short Rent - 房主处理订单</title>
    <link rel="stylesheet" href="/ShortRent/css/login.min.css">
</head>
<body>
<nav>
    <h1>Short Rent</h1>
    <p>当前用户：${loginUser.username }</p>
</nav>
<div class="content">
    <h1>Welcome back to Short Rent</h1>

    <h2><span>房主处理订单 </span></h2>
    <div class="list-wrapper">
        
    </div>
</div>
</body>
</html>

