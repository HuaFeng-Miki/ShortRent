package controller;

import java.util.List;

import tools.Pagination;
import Service.HouseService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import common.WebConstant;
import entity.House;

public class HouseAction extends ActionSupport{

	House house = new House();
	long pId;
	long hId;
	long uId;
	String city;
	HouseService hs = new HouseService();
	// 分页
	public String showPage() throws Exception{
		Pagination pager = hs.getHousePager((int)pId, WebConstant.PAGE_SIZE);
		ActionContext.getContext().put("pager", pager);
		return SUCCESS;
	}
	
	// 房屋审核通过
	public String pass() throws Exception{
		house = hs.search(hId);
		hs.pass(house);
		return SUCCESS;
	}
	
	// 房屋审核拒绝
	public String refuse() throws Exception{
		house = hs.search(hId);
		hs.refuse(house);
		return SUCCESS;
	}
	
	// 创建房屋
	public String createHouse() throws Exception{
		house.setUserId(uId);
		hs.addHouse(house);
		return SUCCESS;
	}
	
	// 发布房屋
	public String release() throws Exception{
		house = hs.search(hId);
		hs.releaseHouse(house);
		return SUCCESS;
	}
	
	// 删除房屋
	public String del() throws Exception{
		hs.del(hId);
		return SUCCESS;
	}
	
	// 显示房屋
	public String detail() throws Exception{
		house = hs.search(hId);
		if(house == null)
			return ERROR;
		else{
			ActionContext.getContext().put("pager", house);
			return SUCCESS;
		}
	}
	// 待发布的房屋
	public String releaseHouse() throws Exception{
		Pagination pager = hs.getReleaseHouse(uId,(int)pId, WebConstant.PAGE_SIZE);
		ActionContext.getContext().put("pager", pager);
		return SUCCESS;
	}
	
	// 我的房屋信息
	public String myHouse() throws Exception{
		Pagination pager = hs.getMyHouse(uId,(int)pId, WebConstant.PAGE_SIZE);
		ActionContext.getContext().put("pager", pager);
		return SUCCESS;
	}
	
	// 根据地址查询房屋
	public String houseList() throws Exception{
		city = new String(city.getBytes("ISO-8859-1"),"UTF-8");
		System.out.println("city="+city);
		Pagination pager = hs.getHouseList(city, (int)pId, WebConstant.PAGE_SIZE);
		ActionContext.getContext().put("pager", pager);
		return SUCCESS;
	}
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public long getuId() {
		return uId;
	}

	public void setuId(long uId) {
		this.uId = uId;
	}

	public long getpId() {
		return pId;
	}
	public void setpId(long pId) {
		this.pId = pId;
	}
	public House getHouse() {
		return house;
	}
	public void setHouse(House house) {
		this.house = house;
	}
	public HouseService getHs() {
		return hs;
	}
	public void setHs(HouseService hs) {
		this.hs = hs;
	}

	public long gethId() {
		return hId;
	}

	public void sethId(long hId) {
		this.hId = hId;
	}
	
}
