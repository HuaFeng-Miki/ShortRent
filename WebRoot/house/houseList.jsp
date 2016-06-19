<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>房屋列表</title>
  

  </head>
  
  <body>
	<table>
			<tr>
				<th>ID</th>
				<th>房屋名称</th>
				<th>出租类型</th>
				<th>详细地址</th>
				<th>日租价</th>
				<th>是否提供发票</th>
				<th>类型</th>
				<th>卧室数</th>
			</tr>
			<tbody>
				<c:forEach varStatus="s" var="p" items="${pager.list}">
							<tr>
								<td>${pager.startRow+s.count-1}</td>
								<td>${p.name}</td>
								<td>
									<c:if test="${p.renttype==null||p.renttype==1}">整租
									</c:if> <c:if test="${p.renttype==2}">单间
									</c:if> <c:if test="${p.renttype==3}">床位
									</c:if>
								</td>
								<td>${p.address}</td>
								<td>${p.dayprice}</td>
								<td>
									<c:if test="${p.bill==null||p.bill==2}">不提供
									</c:if> <c:if test="${p.bill==1}">提供
									</c:if> 
								</td>
								<td>
									<c:if test="${p.kind==null||p.kind==1}">酒店
									</c:if> <c:if test="${p.kind==2}">旅馆
									</c:if><c:if test="${p.kind==3}">客栈
									</c:if> <c:if test="${p.kind==2}">居民
									</c:if> 
								</td>
								<td>${p.bedroomnum}</td>
								<td><a href="/ShortRent/actions/manager/house/detail?hId=${p.id}">详细内容</a></td>
								<td>
									<c:if test="${p.state==1 || p.state ==2 || p.state == 4 || p.state == 5}">
								<a href="/ShortRent/actions/manager/house/pass?hId=${p.id}">
										添加订单</a>
								</c:if>
								<c:if test="${p.state==3}">已租出
								</c:if> 
								</td>
							</tr>
					</c:forEach>	
			</tbody>
		</table>
  </body>
</html>
