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
    <title>Short Rent - 房屋信息</title>
    <link rel="stylesheet" href="/ShortRent/css/login.min.css">
</head>
<body>
<nav>
    <h1>Short Rent</h1>
    <p>当前用户：${loginUser.username }</p><a href="/ShortRent/user/main.jsp">用户界面</a>
</nav>
<div class="content">
    <h1>Welcome back to Short Rent</h1>

    <h2><span>房屋信息</span></h2>
    <div class="list-wrapper">
     <table>
   	  <tr>
   	  	<td>房屋名：</td>
   	  	<td>${pager.name}</td>
   	  </tr>
   	  
   	  <tr>
   	  	<td>出租类型：</td>
   	  	<td>
   	  		<c:if test="${pager.renttype == 1}">整间</c:if>
   	  		<c:if test="${pager.renttype == 2}">单间</c:if>
   	  		<c:if test="${pager.renttype == 3}">床位</c:if>
   	  	</td>
   	  </tr>
   	  
   	  <tr>
   	  	<td>地址：</td>
   	  	<td>${pager.address}</td>
   	  </tr>
   	  
   	  <tr>
   	  	<td>日租价：¥</td>
   	  	<td>${pager.dayprice}</td>
   	  </tr>
   	  
   	  <tr>
   	  	<td>是否提供发票：</td>
   	  	<td>
   	  		<c:if test="${pager.bill == 1}">提供</c:if>
   	  		<c:if test="${pager.bill == 2}">不提供</c:if>
   	  	</td>
   	  </tr>
   	  
   	  <tr>
   	  	<td>房屋类型：</td>
   	  	<td>
   	  		<c:if test="${pager.kind == 1}">酒店</c:if>
   	  		<c:if test="${pager.kind == 2}">旅馆</c:if>
   	  		<c:if test="${pager.kind == 3}">客栈</c:if>
   	  		<c:if test="${pager.kind == 4}">居民</c:if>
   	  	</td>
   	  </tr>
   	  
   	  <tr>
   	  	<td>可住人数：</td>
   	  	<td>${pager.guestnum}</td>
   	  </tr>
   	  
   	  <tr>
   	  	<td>床位数:</td>
   	  	<td>${pager.bednum}</td>
   	  </tr>
   	  
   	  <tr>
   	  	<td>卧室数:</td>
   	  	<td>${pager.bedroomnum}</td>
   	  </tr>
   	  
   	  <tr>
   	  	<td>房间数：</td>
   	  	<td>${pager.roomnum}</td>
   	  </tr>
   	  
   	  <tr>
   	  	<td>床型：</td>
   	  	<td>
   	  		<c:if test="${pager.bedtype == 1}">双人床</c:if>
   	  		<c:if test="${pager.bedtype == 2}">单人床</c:if>
   	  		<c:if test="${pager.bedtype == 3}">高低床</c:if>
   	  	</td>
   	  </tr>
   	  
   	  <tr>
   	  	<td>卫生间数：</td>
   	  	<td>${pager.toiletnum}</td>
   	  </tr>
   	  
   	  <tr>
   	  	<td>房屋描述：</td>
   	  	<td>${pager.roomdesc}</td>
   	  </tr>
   	  
   	  <tr>
   	  	<td>使用规则:</td>
   	  	<td>${pager.userule}</td>
   	  </tr>
   	    
   	  <tr>
   	  	<td>设施:</td>
   	  	<td>${pager.facility}</td>
   	  </tr>
   	  
   	  <tr>
   	  	<td>最少天数:</td>
   	  	<td>${pager.minday}</td>
   	  </tr>
   	  
   	  <tr>
   	  	<td>最多天数：</td>
   	  	<td>${pager.maxday}</td>
   	  </tr>
   	  
   	   <tr>
   	  	<td>付款规则：</td>
   	  	<td>${pager.payrule}</td>
   	  </tr>
   	  
   	  <tr>
   	  	<td>创建时间：</td>
   	  	<td>${pager.createtime}</td>
   	  </tr>
   	  
   	  <tr>
   	  	<td>审核状态：</td>
   	  	<td>
   	  		<c:if test="${p.state==1}">待审核</c:if>
   	  		<c:if test="${p.state==2}">待发布</c:if>
			<c:if test="${p.state==2}">已通过</c:if> 
			<c:if test="${p.state==4}">已拒绝</c:if> 
   	  	</td>
   	  </tr>
   	  </table>	
    </div>
</div>
</body>
</html>

