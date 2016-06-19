<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>欢迎来到轻松短租网</title>
		<link
			href='http://fonts.googleapis.com/css?family=Oranienbaum|Skranji|McLaren'
			rel='stylesheet' type='text/css'>
		<link href="MyCSS/welcome.css" rel="stylesheet" type="text/css">
		<script
			src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
		<script>
	 	// DOM ready
	 		$(function() {
	   
      		// Create the dropdown base
      		$("<select />").appendTo("nav");
      
      		// Create default option "Go to..."
      		$("<option />", {
         		"selected": "selected",
         		"value"   : "",
         		"text"    : "Select a page"
      		}).appendTo("nav select");
      
      		// Populate dropdown with menu items
      		$("nav a").each(function() {
      		 var el = $(this);
      		 $("<option />", {
       		    "value"   : el.attr("href"),
       		    "text"    : el.text()
      		 }).appendTo("nav select");
     		 });
      
	  		 // To make dropdown actually work
      		$("nav select").change(function() {
      		  window.location = $(this).find("option:selected").val();
     		 });
	 
		 });
		</script>
	</head>
	
	
	<body>

	<style type="text/css">
		body {
			margin: 0px;
			padding: 0
			}

		#div1 {
			display: none;
			position: absolute;
			z-index: 1000;
			height: 100%;
			width: 100%;
			background: #012340;
			filter: Alpha(opacity =     30);
			}

		#div2 {
			display: none;
			position: absolute;
			height: 100%;
			width: 100%;
			padding-top: 10%;
			z-index: 1001;
			left: 0px;
			top: 0px;
			}
	</style>
	<script>
		function openme(){
			document.getElementById('div1').style.display='block';
			document.getElementById('div2').style.display='block';
			}
		function closeme(){
		document.getElementById('div1').style.display='none';
		document.getElementById('div2').style.display='none';
		}
		function aboutus()
		{
			alert("关于");
		}
	</script>

	<header>
	<div class="topNav">
		<ul>
			<li>
				<a href="login.jsp">登录</a>
			</li>
			<li>
				<a href="register.jsp">注册</a>
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
				<a href="index.jsp"><img src="images/logoHouse.png" alt="" />
				</a>
			</div>
			<nav>
				<ul>
					<li class="active">
						<a href="index.jsp">进入主页</a>
					</li>
				</ul>
			</nav>
		<div class="clearfloat"></div>
		</div>
	</div>
	</header>	
	 
	<body>	 
	<div class="wrapper">
    	<div class="contentBody">
        	<div class="cBlock">
        		<h2 align="center">轻松短租网,在线预订,预付留房,寻找您旅途中的家</h2>
    			<a href="index.jsp"><img src="images/greenhouse.jpg"/></a>
    		</div>
    	</div> 
    	<div class="clearfloat"></div>
	</div>
	<footer>
   		 <p class="copyright">
        	Copyright &copy; <a href="#">轻松短租网</a> | Collect Form <a href="" title="ShortRent">ShortRent</a>
    	</p>
	</footer>
	</body>
</html>