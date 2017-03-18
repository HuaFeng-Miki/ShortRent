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
	
	
	// ����δ����Ķ���  uid = userId and state = 1
	public Pagination getnewOrder(long userId,int currentPageNum, int pageSize){
		long rowCount = this.getRowCount(Order.class);
		//����pagination����
		Pagination pager = new Pagination(rowCount, currentPageNum, pageSize);
		List list = null;
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			list = session.createQuery("from Order ord where ord.state = :s and ord.userId = :hId")
					.setLong("s", 1L)
					.setLong("hId", userId)
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
	
	// ����δ�����ɷ������������ס������ userId = uId and state = 1
	public Pagination getPendingOrder(long userId,int currentPageNum, int pageSize){
		long rowCount = this.getRowCount(Order.class);
		//����pagination����
		Pagination pager = new Pagination(rowCount, currentPageNum, pageSize);
		List list = null;
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			list = session.createQuery("from Order o where"
					+ " o.houseownerId = :p and o.state = :s")
					.setLong("p",userId)
					.setLong("s", 1L)
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
	

	// ����/���� �ɽ����� ��״̬Ϊ3�ģ�
	public Pagination getOrderFinish(long userId,int currentPageNum, int pageSize){
		long rowCount = this.getRowCount(Order.class);
		//����pagination����
		Pagination pager = new Pagination(rowCount, currentPageNum, pageSize);
		List list = null;
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			list = session.createQuery("from Order ord where ord.state = :s and ("
					+ " ord.userId = :p or ord.houseownerId = :p)")
					.setLong("s", 3L)
					.setLong("p", userId)
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
	
	// ����/���� ���׼�¼
	public Pagination getOrderCount(long userId,int currentPageNum, int pageSize){
		long rowCount = this.getRowCount(Order.class);
		//����pagination����
		Pagination pager = new Pagination(rowCount, currentPageNum, pageSize);
		List list = null;
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			list = session.createQuery("from Order ord where ord.userId = :p "
					+ " or ord.houseownerId = :p")
					.setLong("p", userId)
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
