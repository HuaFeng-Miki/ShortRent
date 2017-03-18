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

	// 删除订单
	public void del(long id) throws Exception{
		super.del(id, Order.class);
	}
	
	// 增加订单
	public void add(Order order) throws Exception{
		super.add(order);
	}
	// 根据ID查找订单
	public Order search(long id) throws Exception{
		return (Order)super.get(id, Order.class);
	}
	
	// 更新订单
	public void update(Order order) throws Exception{
		super.update(order);
	}
	
	
	// 房客未受理的订单  uid = userId and state = 1
	public Pagination getnewOrder(long userId,int currentPageNum, int pageSize){
		long rowCount = this.getRowCount(Order.class);
		//构造pagination对象
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
	
	// 房主未受理由房客主动申请的住房订单 userId = uId and state = 1
	public Pagination getPendingOrder(long userId,int currentPageNum, int pageSize){
		long rowCount = this.getRowCount(Order.class);
		//构造pagination对象
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
		
	// 根据用户ID搜索 待处理订单 订单状态为2,3,4,5
	public Pagination getdealOrder(long userId,int currentPageNum, int pageSize){
			long rowCount = this.getRowCount(Order.class);
			//构造pagination对象
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
	

	// 房主/房客 成交订单 （状态为3的）
	public Pagination getOrderFinish(long userId,int currentPageNum, int pageSize){
		long rowCount = this.getRowCount(Order.class);
		//构造pagination对象
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
	
	// 房主/房客 交易记录
	public Pagination getOrderCount(long userId,int currentPageNum, int pageSize){
		long rowCount = this.getRowCount(Order.class);
		//构造pagination对象
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
