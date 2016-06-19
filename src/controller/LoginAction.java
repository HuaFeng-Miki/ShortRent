package controller;

import Service.ManagerService;
import Service.UserService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import common.WebConstant;
import entity.Manager;
import entity.User;

public class LoginAction extends ActionSupport{
	String username;
	String password;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	// 主要函数
	public String login() throws Exception{
		ManagerService ms = new ManagerService();
		UserService us = new UserService();
		// 管理员
		if(ms.loginValidated(username, password)){
			Manager manager  = ms.getByManagername(username);
			ActionContext.getContext().getSession()
			.put(WebConstant.LOGIN_USER, manager);
			return "manager";
			
		}else if(us.loginValidated(username, password)){ //用户
			
			User user = us.getByUsername(username);
			ActionContext.getContext().getSession()
			.put(WebConstant.LOGIN_USER, user);
			return "user";
		}else{
			ActionContext.getContext().put("error","0");
			return INPUT;
		}
	}
	
	// 数据验证方法
	public void validate() {
		if (username == null || username.trim().length() == 0) {
			addFieldError("user.username", "用户名不能为空！");
		}
		if (password == null || password.trim().length() == 0) {
			addFieldError("user.password", "密码不能为空！");
		}
	}
}
