<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>House Short Rent - Index</title>
    <link rel="stylesheet" href="/ShortRent/css/index.min.css">
</head>
<body>
<nav>
    <h1>Short Rent</h1>
    <c:if test= "${loginUser.username == null }">
    	<p>帮助热线 800-820-8820</p><a href="/ShortRent/login.jsp">登陆</a><a href="/ShortRent/register.jsp">注册</a>
    </c:if>
    <c:if test= "${loginUser.username != null }">
    	<p>当前用户：${loginUser.username }</p><a href="/ShortRent/user/usermain.jsp">用户界面</a><a href="/ShortRent/actions/logout">注销</a>
    </c:if>
</nav>
<div class="content">
    <section id="index-bg">
        <h1>Go travel<br>Live your life<br>Even for one night</h1>
    </section>
    <section class="wrapper">
        <section class="search clearfix">
            <label for="input-city">191个国家的两百万个房源任您搜索</label>
            <form action="/ShortRent/actions/house/houseList">
	            <input type="text" placeholder="去哪儿" required id="input-city" name="city">
	            <button type="submit">搜索</button>
            </form>
        </section>
        <section class="show clearfix">
            <div class="img-wrapper"><img src="images/image1.jpg" alt="1"></div>
            <div class="img-wrapper"><img src="images/image2.jpg" alt="2"></div>
            <div class="img-wrapper"><img src="images/image3.jpg" alt="3"></div>
            <div class="img-wrapper"><img src="images/image4.jpg" alt="4"></div>
            <div class="img-wrapper"><img src="images/image5.jpg" alt="5"></div>
            <div class="img-wrapper"><img src="images/image6.jpg" alt="6"></div>
            <div class="img-wrapper"><img src="images/image7.jpg" alt="7"></div>
            <div class="img-wrapper"><img src="images/image8.jpg" alt="8"></div>
            <div class="img-wrapper"><img src="images/image9.jpg" alt="9"></div>
            <div class="img-wrapper"><img src="images/image10.jpg" alt="10"></div>
            <div class="img-wrapper"><img src="images/image11.jpg" alt="11"></div>
            <div class="img-wrapper"><img src="images/image12.jpg" alt="12"></div>
        </section>
    </section>
</div>
<section class="intro">
    <div id="intro-block1"><p>800-820-8820
        24小时客服热线。 <br> 北京时间7:00 - 22:00提供中文服务。 </p></div>
    <div id="intro-block2"><img src="images/alipay.png" alt="ali"><p>安全支付 <br>
        支付宝付款已向中国用户开通，欢迎使用。</p></div>
    <div id="intro-block3"><img src="images/zhima.png" alt="zhima"><p>芝麻信用 <br>
        房东和房客可以通过芝麻信用验证身份。</p></div>
</section>
<footer>If you have any problem, contact us any time.<br>Copyright @2016 Short Rent Company
</footer>
<script src="/ShortRent/js/index.js"></script>
</body>
</html>