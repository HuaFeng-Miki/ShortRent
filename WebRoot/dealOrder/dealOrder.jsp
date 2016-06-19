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
    
    <title></title>

  </head>
  
  <body>
   <table>
			<tr>
				<th>ID</th>
				<th>房屋ID</th>
				<th>用户ID</th>
				<th>订单号</th>
				<th>入住时间</th>
				<th>退房时间</th>
				<th>价格</th>
				<th>订单状态</th>
			</tr>
			<tbody>
				<c:forEach varStatus="s" var="p" items="${pager.list}">
							<tr>
								<td>${pager.startRow+s.count-1}</td>
								<td>${p.houseId}</td>
								<td>${p.userId}</td>
								<td>${p.ordernum}</td>
								<td>${p.checkindate}</td>
								<td>${p.checkoutdate}</td>
								<td>${p.total}</td>
								<td>
									<c:if test="${p.state==2}">已取消
									</c:if> <c:if test="${p.state==3}">已受理
									</c:if><c:if test="${p.state==4}">退订
									</c:if><c:if test="${p.state==5}">已拒绝
									</c:if> 
								</td>
							</tr>
					</c:forEach>	
			</tbody>
		</table>
  </body>
</html>
