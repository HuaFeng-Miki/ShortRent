package controller;

import tools.Pagination;
import Service.OrderService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import common.WebConstant;
import entity.Order;

public class OrderAction extends ActionSupport{
	
	long oId;
	long uId;
	long pId;
	OrderService os =new OrderService();
	Order order =  new Order();
	// 房东 -获取等待受理订单
	public String newOrder() throws Exception{
		Pagination pager = os.getnewOrder(uId, (int)pId, WebConstant.PAGE_SIZE);
		ActionContext.getContext().put("pager", pager);
		return SUCCESS;
	}
	
	// 房东 --获取已处理订单
	public String dealOrder() throws Exception{
		Pagination pager = os.getdealOrder(uId, (int)pId, WebConstant.PAGE_SIZE);
		ActionContext.getContext().put("pager", pager);
		return SUCCESS;
	}
		
	// 房东 - 受理订单
	public String pendingOrder() throws Exception{
		Pagination pager = os.getPendingOrder(uId,(int)pId,WebConstant.PAGE_SIZE);
		ActionContext.getContext().put("pager", pager);
		return SUCCESS;
	}
	// 取消订单
	public String cancelOrder() throws Exception{
		order = os.search(uId);
		if(order == null)
			return ERROR;
		else{
			os.cancelOrder(order);
			return SUCCESS;
		}
	}
	
	// 房客/房主 -- 查询交易记录
	public String orderCount() throws Exception{
		Pagination pager = os.getOrderCount(uId,(int)pId,WebConstant.PAGE_SIZE);
		ActionContext.getContext().put("pager", pager);
		return SUCCESS;
	}
	
	// 房客/房主 -- 成交订单
	public String orderFinish() throws Exception{
		Pagination pager = os.getOrderFinish(uId,(int)pId,WebConstant.PAGE_SIZE);
		ActionContext.getContext().put("pager", pager);
		return SUCCESS;
	}
	public long getpId() {
		return pId;
	}

	public void setpId(long pId) {
		this.pId = pId;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public OrderService getOs() {
		return os;
	}

	public void setOs(OrderService os) {
		this.os = os;
	}

	public long getoId() {
		return oId;
	}
	public void setoId(long oId) {
		this.oId = oId;
	}
	public long getuId() {
		return uId;
	}
	public void setuId(long uId) {
		this.uId = uId;
	}
}
