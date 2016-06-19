package Service;

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
	
}
