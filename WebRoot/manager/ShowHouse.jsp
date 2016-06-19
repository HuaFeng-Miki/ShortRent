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
    
    <title>房屋信息</title>
    

  </head>
  
  <body>
    <div>
    	<h3>房屋信息</h3>
    	
   	  <tr>
   	  	<td>房屋名：</td>
   	  	<td>${pager.name}</td>
   	  </tr>
   	  <br />
   	  
   	  <tr>
   	  	<td>出租类型：</td>
   	  	<td>
   	  		<c:if test="${pager.renttype == 1}">整间</c:if>
   	  		<c:if test="${pager.renttype == 2}">单间</c:if>
   	  		<c:if test="${pager.renttype == 3}">床位</c:if>
   	  	</td>
   	  </tr>
   	  <br />
   	  
   	  <tr>
   	  	<td>地址：</td>
   	  	<td>${pager.address}</td>
   	  </tr>
   	  <br />
   	  
   	  <tr>
   	  	<td>日租价：¥</td>
   	  	<td>${pager.dayprice}</td>
   	  </tr>
   	  <br />
   	  
   	  <tr>
   	  	<td>是否提供发票：</td>
   	  	<td>
   	  		<c:if test="${pager.bill == 1}">提供</c:if>
   	  		<c:if test="${pager.bill == 2}">不提供</c:if>
   	  	</td>
   	  </tr>
   	  <br />
   	  
   	  <tr>
   	  	<td>房屋类型：</td>
   	  	<td>
   	  		<c:if test="${pager.kind == 1}">酒店</c:if>
   	  		<c:if test="${pager.kind == 2}">旅馆</c:if>
   	  		<c:if test="${pager.kind == 3}">客栈</c:if>
   	  		<c:if test="${pager.kind == 4}">居民</c:if>
   	  	</td>
   	  </tr>
   	  <br />
   	  
   	  <tr>
   	  	<td>可住人数：</td>
   	  	<td>${pager.guestnum}</td>
   	  </tr>
   	  <br />
   	  
   	  <tr>
   	  	<td>床位数:</td>
   	  	<td>${pager.bednum}</td>
   	  </tr>
   	  <br />
   	  
   	  <tr>
   	  	<td>卧室数:</td>
   	  	<td>${pager.bedroomnum}</td>
   	  </tr>
   	  <br />
   	  
   	  <tr>
   	  	<td>房间数：</td>
   	  	<td>${pager.roomnum}</td>
   	  </tr>
   	  <br />
   	  
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
   	  	<td>${pager.rule}</td>
   	  </tr>
   	  <br />
   	    
   	  <tr>
   	  	<td>设施:</td>
   	  	<td>${pager.facility}</td>
   	  </tr>
   	  <br />
   	  
   	  <tr>
   	  	<td>最少天数:</td>
   	  	<td>${pager.minday}</td>
   	  </tr>
   	  <br />
   	  
   	  <tr>
   	  	<td>最多天数：</td>
   	  	<td>${pager.maxday}</td>
   	  </tr>
   	  <br />
   	  
   	  <tr>
   	  	<td>全额退款日：</td>
   	  	<td>${pager.refundday}</td>
   	  </tr>
   	  <br />
   	  
   	   <tr>
   	  	<td>付款规则：</td>
   	  	<td>${pager.payrule}</td>
   	  </tr>
   	  <br />
   	  
   	  <tr>
   	  	<td>创建时间：</td>
   	  	<td>${pager.createtime}</td>
   	  </tr>
   	  <br />
   	  
   	  <tr>
   	  	<td>审核状态：</td>
   	  	<td>
   	  		<c:if test="${p.state==1}">待审核</c:if>
   	  		<c:if test="${p.state==2}">待发布</c:if>
					<c:if test="${p.state==2}">已通过</c:if> 
					<c:if test="${p.state==4}">已拒绝</c:if> 
   	  	</td>
   	  </tr>
   	  <br />
   	  
    </div>
    <a href="/ShortRent/actions/manager/user/showPage">返回</a>
  </body>
</html>
