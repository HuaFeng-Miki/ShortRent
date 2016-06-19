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
<title>修改用户信息</title>


<script type="text/javascript">
   
  function checkupdate(){
    var email=document.getElementById("email").value;
    var phone=document.getElementById("phone").value;
    var truename=document.getElementById("truename").value;
    var address=document.getElementById("address").value;
    var file=document.getElementById("file").value;
    var remark=document.getElementById("remark").value;
    
    var patrnP=/(^(\d{3,4}-)?\d{7,8})$|(13[0-9]{9})$|(15[0-9]{9})$/; 
    
    if(truename==""&& address==""&& file==""&& remark==""){
       alert("请认真填写你的资料!");
       return false;
    }
    
    
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
    if(!confirm("是否保存你的资料？")){
       return false;
    } 
    return true ;
  }
</script>
</head>

<body>
	<div class="logoContainer">
		<div class="logo">
			<div id="logo">
				<a href="index.jsp"><img src="images/logoHouse.png" alt="" />
				</a>
			</div>
			<ul>
				<li><a href="/ShortRent/user/usermain.jsp">放弃修改</a></li>
				<li><a href="/ShortRent/user/userpwdmodify.jsp">修改密码</a></li>
			</ul>
			<div class="clearfloat"></div>
		</div>
	</div>
		<h1>修改您的房屋租借网账户信息</h1>
		<form action="/ShortRent/actions/user/UserInfoModify" method="post"
			onsubmit="return checkupdate()" enctype="multipart/form-data">
					<input type="hidden"  value="${loginUser.id}" name="uId"><p>
					用户名：${loginUser.username}<br />
					电子邮箱：
					<input name="email" id="email" value="${loginUser.email}" /><br />
					联系电话：
					<input name="mobile" id="mobile" value="${loginUser.mobile}" /><br />
					性别：
						<s:radio name="sex" list="%{#{'1':'男'}}" value="1" />
						<s:radio name="sex" list="%{#{'2':'女'}}" value="2" />
					<br />
					地 址：
					<input name="address" id="address" value="${loginUser.address}" size="30" /><br />
					<input class="btn" type="submit" value=保存修改>&nbsp;&nbsp;&nbsp;
					<input type="reset" value="重     置">
			</form>
	<%@include file="/inc/foot.jsp"%>
</body>
</html>