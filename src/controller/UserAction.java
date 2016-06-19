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
	long pId;
	long uId;
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
		User user= us.search(uId);
		if(user == null)
			return ERROR;
		else{
			
			ActionContext.getContext().put("pager", user);
			return SUCCESS;
		}
		
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
