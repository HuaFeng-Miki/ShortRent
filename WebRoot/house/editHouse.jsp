<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		<title>${loginUser.username},正在发布房屋！</title>
	</head>

	<body>
		<div class="topNav">
			<ul>
				<li>
					<font color="red">${user.uname },欢迎您！</font>
				</li>
				<li>
					<a href="login.jsp">注销</a>
				</li>
				<li>
					<a href="javascript:aboutus()">关于</a>
				</li>
				<li class="lastTN">
					<a href="">帮助</a>
				</li>
			</ul>
		</div>
		
		<div class="logoContainer">
			<div class="logo">
				<div id="logo">
					<a href="index.jsp"><img src="images/logo.png" alt="" /> </a>
				</div>
				<nav>
				<ul>
					<li>
						<a href="user_view_page.jsp">放弃修改</a>
					</li>
				</ul>
				</nav>
				<div class="clearfloat"></div>
			</div>
		</div>
		<div class="wrapper">
		<h1>修改房屋信息</h1>
		<form action="editLeaseRoom" method="post"
			enctype="multipart/form-data">
			<input type="hidden" name="leaseRoom.id" value="${leaseRoom.id}" />
		<div class="contentBody">
			<div class="cBlock">
			<h2>请填写房屋相关信息</h2>
			<ul>
				<li>所在区域：</li>
					<td>
					</td>
				<li>标题：</li>
				<input type="text" name="leaseRoom.title" value="${leaseRoom.title }" />
				<li>价格/天：</li>
				<input type="text" name="leaseRoom.price" value="${leaseRoom.price }" />
				<li>面积㎡：</li>
				<input type="text" name="leaseRoom.acreage" value="${leaseRoom.acreage }" />
				<li>详细地址：</li>
				<input type="text" name="leaseRoom.address" value="${leaseRoom.address }"/>
				<li>详情：</li>
				<textarea rows="5" cols="50" name="leaseRoom.remark" value="${leaseRoom.remark }"></textarea>
				<li>发布图片</li>
				<s:file name="file"></s:file>
				<tr>
					<td colspan="2">
						<input type="submit" value="确定" />
					</td>
				</tr>
			</ul>
			</div>
		</div>·	
	</form>

	<div class="sidebar">
		<div class="sBlock">
		           原图片:
  			<img src="${leaseRoom.img}" size="25px"/>
   		 </div> 
   	</div>
	<div class="clearfloat"></div>
	</div>
		
	<%@include file="/inc/foot.jsp"%>
</body>
</html>
