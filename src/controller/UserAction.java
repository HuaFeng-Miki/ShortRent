package controller;

import java.util.List;

import tools.Pagination;
import Service.UserService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import common.WebConstant;
import entity.User;

public class UserAction extends ActionSupport{

	UserService us = new UserService();
	User user = new User();
	long pId;
	long uId;
	String oldPassword, newPassword;
	String sex, mobile, email, address;
	public String showPage() throws Exception{
		
		Pagination pager = us.getUserPager((int)pId, WebConstant.PAGE_SIZE);
		ActionContext.getContext().put("pager", pager);
		System.out.println("User showPage");
		return SUCCESS;
	}
	// 删除用户
	public String del() throws Exception{
		us.del(uId);
		return SUCCESS;
	}
	
	//　展示用户详细信息
	public String detail() throws Exception{
		user= us.search(uId);
		if(user == null)
			return ERROR;
		else{
			
			ActionContext.getContext().put("pager", user);
			return SUCCESS;
		}
		
	}
	
	// 修改个人信息
	public String UserInfoModify() throws Exception{
		System.out.println("uId="+uId);
		user = us.search(uId);
		user.setSex(Long.parseLong(sex));
		user.setMobile(mobile);
		user.setEmail(email);
		user.setAddress(address);
		us.update(user);
		return SUCCESS;
	}
	
	// 修改密码
	public String UserPwdModify() throws Exception{
		user = us.search(uId);
		if(user.getPassword().equals(oldPassword) == false)
			return ERROR;
		else{
			user.setPassword(newPassword);
			us.update(user);
			return SUCCESS;
		}
	}

	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getOldPassword() {
		return oldPassword;
	}
	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}
	public String getNewPassword() {
		return newPassword;
	}
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	public UserService getUs() {
		return us;
	}
	public void setUs(UserService us) {
		this.us = us;
	}
	public long getpId() {
		return pId;
	}
	public void setpId(long pId) {
		this.pId = pId;
	}
	public long getuId() {
		return uId;
	}
	public void setuId(long uId) {
		this.uId = uId;
	}
	
}
