package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Projections;

import tools.HibernateSessionFactory;
import tools.Pagination;

/**
 * Data access object (DAO) for domain model
 * version 1.0.0  2016-5-30
 * @author 何怀文
 */
public class BaseHibernateDAO {

	public Session getSession() {
		return HibernateSessionFactory.getSession();
	}

	// 添加记录
	protected void add(Object item) {
		Session session = HibernateSessionFactory.getSession();
		try {
			System.out.println("添加记录");
			Transaction tx = getSession().beginTransaction();
			session.save(item);
			tx.commit();
		} catch (RuntimeException re) {
			throw re;
		}
		HibernateSessionFactory.closeSession();
	}

	// 根据id获取记录
	protected Object get(long id, Class clazz) {
		System.out.println("获取记录");
		Session session = HibernateSessionFactory.getSession();
		try {
			Object item = session.get(clazz, id);
			return item;
		} catch (RuntimeException re) {
			throw re;
		} finally {
			HibernateSessionFactory.closeSession();
		}
	}

	// 删除记录
	protected void del(long id, Class clazz) {
		Session session = HibernateSessionFactory.getSession();
		System.out.println("del方法，id=" + id);
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Object obj = session.get(clazz, id);
			session.delete(obj);
			System.out.println("删除对象id=" + id);
			tx.commit();
		} catch (RuntimeException re) {
			tx.rollback();
			throw re;
		} finally {
			HibernateSessionFactory.closeSession();
		}
	}

	// 更新记录
	protected void update(Object item) {
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		System.out.println("update记录");
		try {
			//session.saveOrUpdate(item);
			session.update(item);
			tx.commit();
		} catch (RuntimeException re) {
			tx.rollback();
			throw re;
		} finally {
			HibernateSessionFactory.closeSession();
		}
	}

	// 获取所有某一对象对应的所有记录
	// clazz 对象对应的类
	protected List getAll(Class clazz) {
		List list = null;
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			list = session.createCriteria(clazz).list();
			tx.commit();
		} catch (RuntimeException re) {
			throw re;
		} finally {
			HibernateSessionFactory.closeSession();
		}
		return list;
	}

	// 使用HQL查询
	protected List queryByHQL(String hql) {
		List list = null;
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			list = session.createQuery(hql).list();
			tx.commit();
		} catch (RuntimeException re) {
			throw re;
		} finally {
			HibernateSessionFactory.closeSession();
		}
		return list;
	}

	// 根据condition对象的内容进行查询，使用Criteria查询方式
	// condition 需要进行查询的对象,具有特定的属性
	// class 对象类
	protected List search(Object condition, Class clazz) {
		List list = null;
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			list = session.createCriteria(clazz).add(Example.create(condition))
					.list();
		} catch (RuntimeException re) {
			throw re;
		} finally {
			HibernateSessionFactory.closeSession();
		}
		return list;
	}
	
	//获取简单对象的总记录总数
	//clazz 对象对应的类
	public long getRowCount(Class clazz){
		long count = 0;
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			Object s =session.createCriteria(clazz)
						  .setProjection(Projections.rowCount()) //使用投影查询
						  .uniqueResult();
			count = Long.parseLong(s.toString());
			tx.commit();
		} catch (RuntimeException re) {
			throw re;
		} finally {
			HibernateSessionFactory.closeSession();
		}
		return count;
	}
	
	//对单独的表格进行分页的函数,返回Pagination对象
	Pagination  pagedQuery(Class clazz, int currentNo, int pageSize){
		long rowCount = this.getRowCount(clazz);
		//构造pagination对象
		Pagination pager = new Pagination(rowCount, currentNo, pageSize);
		List list;
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			list= session.createCriteria(clazz)
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
		System.out.println("yes");
		return pager;
	}
	
//	public static void main(String[] args) {
//		BaseHibernateDAO dao = new BaseHibernateDAO();
////		System.out.println(dao.getClass().getSimpleName());
//		System.out.println(dao.getRowCount(Student.class));
//	}
}