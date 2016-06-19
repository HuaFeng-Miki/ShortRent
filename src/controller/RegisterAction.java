package controller;

import Service.UserService;

import com.opensymphony.xwork2.ActionSupport;

import entity.User;

public class RegisterAction extends ActionSupport{
	
	User user = new User();
	UserService us = new UserService();
	public String register() throws Exception{
		
		us.add(user);
		return SUCCESS;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
