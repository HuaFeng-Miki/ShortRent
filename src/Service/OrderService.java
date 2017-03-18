package Service;

import tools.Pagination;
import dao.OrderDao;
import entity.Order;

public class OrderService {

	OrderDao dao = new OrderDao();
	// ��Ӷ�����¼
	public void  addOrder(Order order) throws Exception {
		//���ÿγ�״̬ 
		//���
		dao.add(order);
	}
	
	// ɾ��������¼
	public void delOrder(long id) throws Exception {
		dao.del(id);
	}
	
	// ��ȡ��������
	public Pagination getnewOrder(long userId, int courrentPageNum,int pageSize){
		return dao.getnewOrder(userId, courrentPageNum, pageSize);
	}
	
	// ��ȡ�Ѵ�����
	public Pagination getdealOrder(long userId, int courrentPageNum,int pageSize){
		return dao.getdealOrder(userId, courrentPageNum, pageSize);
	}
	// ��ȡ���� ȫ�����ӵĶ������
	public Pagination getPendingOrder(long userId,int courrentPageNum,int pageSize){
		return dao.getPendingOrder(userId, courrentPageNum, pageSize);
	}
	
	
	public Pagination getOrderCount(long userId,int courrentPageNum,int pageSize){
		return dao.getOrderCount(userId,courrentPageNum,pageSize);
	}
	
	public Pagination getOrderFinish(long userId,int courrentPageNum,int pageSize){
		return dao.getOrderFinish(userId,courrentPageNum,pageSize);
	}
	
	public Order search(long id) throws Exception{
		return dao.search(id);
	}
	public void cancelOrder(Order order) throws Exception{
		order.setState(2L);
		dao.update(order);
	}
}
