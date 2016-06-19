<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
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
		<title>用户注册</title>


<script type="text/javascript">
	 function checkRegister()
	{
		
		var pwd=document.getElementById("pwd").value;
		if(pwd=="")
		{
			alert("请输入密码");
			return false;
		}
		var confirm=document.getElementById("confirm").value;
		if(confirm=="")
		{
			alert("请输入确认密码");
			return false;
		}
		if(pwd!=confirm)
		{
		   alert("两次输入密码不一致");
		   return false;
		}
		
	   var email=document.getElementById("email").value;
       var phone=document.getElementById("phone").value;
    
       var patrnP=/(^(\d{3,4}-)?\d{7,8})$|(13[0-9]{9})$|(15[0-9]{9})$/; 
    
       if(phone=="")
    {
        alert("联系电话不能为空");
        return false;
    }
    if(!patrnP.exec(phone)){
       alert("联系电话输入格式不正确");
       return false;
    }
       
    var patrnE=/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
    if(email!="" && !patrnE.exec(email))
    {
       alert("电子邮箱输入格式不正确");
       return false;
    }
    if(!confirm("确定？")){
       return false;
    } 
     alert("注册成功！");
    return true ;
  }
		
</script>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		
		<link href="MyCSS/loginregist.css" rel="stylesheet" type="text/css">
	
	<div class="logoContainer">
		<div class="logo">
			<div id="logo">
				<a href="index.jsp"><img src="images/logoHouse.png" alt="" /></a>
			</div>
			<nav>
				<ul>
					<li class="active">
						<a href="index.jsp">返回首页</a>
					</li>
					<li class="active">
						<a href="login.jsp">直接登录</a>
					</li>
				</ul>
			</nav>
			<div class="clearfloat"></div>
		</div>
	</div>
	</head>

	<body>
		<div class="wrapper">
	 	<h1>用户注册</h1>
		<form action="register" method="post" onsubmit="return checkRegister();">
			<div class="contentBody">
				<div class="cBlock">
					<h2>账户注册</h2>
					 <ul>
            			<li><h3>用户名:</h3>
            			<input type="text" name="user.uname"  style="width:200px; height:30px;" /> &nbsp;<font color="red">${message}</font>
            			</li>
						<li><h3>密码:</h3></li>
            			<input type="password" id="pwd" name="user.upwd"  style="width:200px; height:30px;" />
            			  
						<li><h3>确认密码:</h3></li>
            			<input  type="password" name="password2" id="confirm"  style="width:200px; height:30px;" />
            			
            			<li><h3>电话号码:</h3></li>
            			<input type="text" name="user.phone" id="phone"  style="width:200px; height:30px;" />
            			
						<li><h3>电子邮箱:</h3></li>
            			<input type="text" name="user.email" id="email"  style="width:200px; height:30px;" />   
            			
            			   
            			
            			<li><a href="agreement.jsp">阅读用户使用协议</a></li>
            			<br>
            			<br>
						<input type="submit" value="提交" style="width:50px; height:30px;" />
							&nbsp;&nbsp;&nbsp;
						<input type="reset" value="重置"  style="width:50px; height:30px;"/>
						<br>
						<br>
						<br>
					</ul>
				</div>
			</div>
		</form>
		<div class="clearfloat"></div>
	</div>
	
	<footer>
    	<p class="copyright">
        	Copyright &copy; <a href="#">房屋租借网</a> | Collect Form <a href="" title="ShortRent">ShortRent</a>
   		 </p>
	</footer>
		
	</body>
</html>
