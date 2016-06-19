package Service;

import java.util.List;

import dao.DealOrderDao;
import entity.DealOrder;

public class DealOrderService {

	DealOrderDao dao = new DealOrderDao();
	
	// 添加预定记录
	public void  addDealOrder(DealOrder course) throws Exception {
		dao.add(course);
	}
	// 删除预定记录
	public void delDealOrder(long id) throws Exception {
		dao.del(id);
	}
	
	// 获取全部预定记录
	public List<DealOrder> getAll() throws Exception {
		return dao.getAll();
	}
	// 由Id获取预定记录
	public DealOrder getDealOrder(long DealOrderId) throws Exception{
		return dao.get(DealOrderId);
	}
}
