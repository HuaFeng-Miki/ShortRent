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
    
    <title>创建房屋</title>

  </head>
  
  <body>
    <h2>创建房屋</h2>
    <form action="/ShortRent/actions/house/createHouse" method="post">
    	<input type="hidden"  value="${loginUser.id}" name="uId"><p>
    	房屋名字：<input name="house.name" type="text"><br />
    	出租类型:
    		<s:radio name="house.renttype" list="%{#{'1':'整租'}}" value="1" />
			  <s:radio name="house.renttype" list="%{#{'2':'单间'}}" value="2" />
			  <s:radio name="house.renttype" list="%{#{'3':'床位'}}" value="3" />
			 <br />
			 地址:<input name="house.address" type="text"><br />
			 日租价:<input name="house.dayprice" type="text"><br />
			 
			 是否提供发票:
			 <s:radio name="house.bill" list="%{#{'1':'提供'}}" value="1" />
			  <s:radio name="house.bill" list="%{#{'2':'不提供'}}" value="2" />
			 <br />
			 
			 类型：
			  <s:radio name="house.kind" list="%{#{'1':'酒店'}}" value="1" />
			  <s:radio name="house.kind" list="%{#{'2':'旅馆'}}" value="2" />
			  <s:radio name="house.kind" list="%{#{'3':'客栈'}}" value="3" />
			  <s:radio name="house.kind" list="%{#{'4':'居民'}}" value="4" />
			 <br />
			 
			 可住人数:<input name="house.guestnum" type="text"><br />
			 床位数:<input name="house.bednum" type="text"><br />
			 卧室数:<input name="house.bedroomnum" type="text"><br />
			 房间数：<input name="house.roomnum" type="text"><br />
			 
			 床型：
			  <s:radio name="house.bedtype" list="%{#{'1':'双人床'}}" value="1" />
			  <s:radio name="house.bedtype" list="%{#{'2':'单人床'}}" value="2" />
			  <s:radio name="house.bedtype" list="%{#{'3':'高低床'}}" value="3" />
			<br />
			 卫生间数：<input name="house.toiletnum" type="text"><br />
			 房屋描述：<textarea rows="3" name="house.roomdesc"></textarea><br/>
			 使用规则：<textarea rows="3" name="house.userule"></textarea><br/>
			 设施：<textarea rows="3" name="house.facility"></textarea><br/>
			 最少天数：<input name="house.minday" type="text"><br />
			 最多天数：<input name="house.maxday" type="text"><br />
			支付方式：<input name="house.payrule" type="text"><br />
			<input type="submit" value="提  交" />
    </form>
  </body>
</html>
