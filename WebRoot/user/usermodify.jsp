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

<div class="logoContainer">
	<div class="logo">
		<div id="logo">
			<a href="index.jsp"><img src="images/logoHouse.png" alt="" />
			</a>
		</div>
		<nav>
		<ul>
			<li><a href="/ShortRent/user/usermain.jsp">放弃修改</a></li>
			<li><a href="/ShortRent/user/userpwdmodify.jsp">修改密码</a></li>
		</ul>
		</nav>
		<div class="clearfloat"></div>
	</div>
</div>

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
	<div class="wrapper">
		<h1>修改您的房屋租借网账户信息</h1>
		<dir>
			<p color="red">${message}</p>
		</dir>
		<form action="/ShortRent/actions/user/UsersInfoModify" method="post"
			onsubmit="return checkupdate()" enctype="multipart/form-data">
			<div class="contentBody">
					用户名：${loginUser.username}
					<input type="hidden" value="${user.username}" name="user.username" /><br />
					电子邮箱：
					<input name="user.email" id="user.email" value="${user.email}" /><br />
					联系电话：
					<input name="user.phone" id="phone" value="${user.phone }" /><br />
					真实姓名：
					<input type="text" name="user.info.truename" value="${user.info.truename }" /><br />
					性别：
					<td class=label align="left">
						<s:if test="%{#session.user.info==null || #session.user.info.sex==null}">
							<s:radio name="user.info.sex" list="%{#{'0':'保密','1':'男','2':'女'}}" value="0" />
						</s:if> 
						<s:else>
							<s:radio name="user.info.sex" list="%{#{'0':'保密','1':'男','2':'女'}}" value="#session.user.info.sex" />
						</s:else>
					</td>
					地 址：
					<input name="user.info.address" id="address" value="${user.info.address }" size="30" /><br />
					头像：
						<s:if test="%{#session.user.info==null || #session.user.info.image==null}">
						<img alt="pic2" src="images/noavatar_middle.gif" width=120 height=120 />
						</s:if>
						<s:else>
						<img src="${user.info.image }" width=20 height=20 />
						</s:else> <s:file name="file"></s:file>
					备注：
					<textarea rows="5" cols="50" name="user.info.remark" id="remark">${user.info.remark}</textarea>
					<br>
					<br>
					<input class="btn" type="submit" value=保存修改>&nbsp;&nbsp;&nbsp;
					<input type="reset" value="重     置">
			</div>
			</form>

			<div class="clearfloat"></div>
	</div>
	<%@include file="/inc/foot.jsp"%>
</body>
</html>