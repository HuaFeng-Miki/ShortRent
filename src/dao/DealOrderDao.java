package dao;

import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Session;

import tools.HibernateSessionFactory;
import entity.DealOrder;

public class DealOrderDao extends BaseHibernateDAO{

	// 增加预定记录
	public void add(DealOrder dealorder) throws Exception{
		super.add(dealorder);
	}
	
	// 删除预定记录
	public void del(long id) throws Exception{
		super.del(id, DealOrder.class);
	}
	
	// 根据id获取预定记录
	public DealOrder get(long id) throws Exception {
		return (DealOrder) super.get(id, DealOrder.class);
	}
	
	// 获取所有预定记录
	public List<DealOrder> getAll() throws Exception {
		return super.getAll(DealOrder.class);
	}
}
