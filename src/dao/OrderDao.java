package dao;

import entity.Order;

public class OrderDao extends BaseHibernateDAO{

	public void del(long id) throws Exception{
		super.del(id, Order.class);
	}
	
	public void add(Order order) throws Exception{
		super.add(order);
	}
}
