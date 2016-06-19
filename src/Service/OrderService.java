package Service;

import tools.Pagination;
import dao.OrderDao;
import entity.Order;

public class OrderService {

	OrderDao dao = new OrderDao();
	// 添加订单记录
	public void  addOrder(Order order) throws Exception {
		//设置课程状态 
		//添加
		dao.add(order);
	}
	
	// 删除订单记录
	public void delOrder(long id) throws Exception {
		dao.del(id);
	}
	
	// 获取待处理订单
	public Pagination getnewOrder(long userId, int courrentPageNum,int pageSize){
		return dao.getnewOrder(userId, courrentPageNum, pageSize);
	}
	
	// 获取已处理订单
	public Pagination getdealOrder(long userId, int courrentPageNum,int pageSize){
		return dao.getdealOrder(userId, courrentPageNum, pageSize);
	}
	
	public Order search(long id) throws Exception{
		return dao.search(id);
	}
	public void cancelOrder(Order order) throws Exception{
		order.setState(2L);
		dao.update(order);
	}
}
