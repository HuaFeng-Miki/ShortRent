package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Restrictions;

import tools.HibernateSessionFactory;
import tools.Pagination;
import entity.House;
import entity.Order;

public class OrderDao extends BaseHibernateDAO{

	// ɾ������
	public void del(long id) throws Exception{
		super.del(id, Order.class);
	}
	
	// ���Ӷ���
	public void add(Order order) throws Exception{
		super.add(order);
	}
	// ����ID���Ҷ���
	public Order search(long id) throws Exception{
		return (Order)super.get(id, Order.class);
	}
	
	// ���¶���
	public void update(Order order) throws Exception{
		super.update(order);
	}
	
	
	// �����û�ID���� �������� ����״̬Ϊ 1
	public Pagination getnewOrder(long userId,int currentPageNum, int pageSize){
		Order order = new Order();
		order.setUserId(userId);
		order.setState(1L);
		long rowCount = this.getRowCount(Order.class);
		//����pagination����
		Pagination pager = new Pagination(rowCount, currentPageNum, pageSize);
		List list;
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			list= session.createCriteria(Order.class)
						.add(Example.create(order))
						.setFirstResult((pager.getcurrentPageNum()-1)*pageSize)
						.setMaxResults(pageSize)
						.list();
			tx.commit();
		} catch (RuntimeException re) {
			throw re;
		} finally {
			HibernateSessionFactory.closeSession();
		}
		pager.setList(list);
		return pager;
	}
	
	// �����û�ID���� �������� ����״̬Ϊ2,3,4,5
	public Pagination getdealOrder(long userId,int currentPageNum, int pageSize){
			long rowCount = this.getRowCount(Order.class);
			//����pagination����
			Pagination pager = new Pagination(rowCount, currentPageNum, pageSize);
			List list = null;
			Session session = HibernateSessionFactory.getSession();
			Transaction tx = session.beginTransaction();
			try {
				list = session.createQuery("from Order ord where ord.state!=1")
						.setMaxResults((pager.getcurrentPageNum()-1)*pageSize)
						.list();
				
				tx.commit();
			} catch (RuntimeException re) {
				throw re;
			} finally {
				HibernateSessionFactory.closeSession();
			}
			pager.setList(list);
			return pager;
		}
}
