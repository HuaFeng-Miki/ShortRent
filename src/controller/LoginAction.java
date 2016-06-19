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

	// ��Ҫ����
	public String login() throws Exception{
		ManagerService ms = new ManagerService();
		UserService us = new UserService();
		// ����Ա
		if(ms.loginValidated(username, password)){
			Manager manager  = ms.getByManagername(username);
			ActionContext.getContext().getSession()
			.put(WebConstant.LOGIN_USER, manager);
			return "manager";
			
		}else if(us.loginValidated(username, password)){ //�û�
			
			User user = us.getByUsername(username);
			ActionContext.getContext().getSession()
			.put(WebConstant.LOGIN_USER, user);
			return "user";
		}else{
			ActionContext.getContext().put("error","0");
			return INPUT;
		}
	}
	
	// ������֤����
	public void validate() {
		if (username == null || username.trim().length() == 0) {
			addFieldError("user.username", "�û�������Ϊ�գ�");
		}
		if (password == null || password.trim().length() == 0) {
			addFieldError("user.password", "���벻��Ϊ�գ�");
		}
	}
}
