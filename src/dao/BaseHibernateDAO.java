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
 * @author �λ���
 */
public class BaseHibernateDAO {

	public Session getSession() {
		return HibernateSessionFactory.getSession();
	}

	// ��Ӽ�¼
	protected void add(Object item) {
		Session session = HibernateSessionFactory.getSession();
		try {
			System.out.println("��Ӽ�¼");
			Transaction tx = getSession().beginTransaction();
			session.save(item);
			tx.commit();
		} catch (RuntimeException re) {
			throw re;
		}
		HibernateSessionFactory.closeSession();
	}

	// ����id��ȡ��¼
	protected Object get(long id, Class clazz) {
		System.out.println("��ȡ��¼");
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

	// ɾ����¼
	protected void del(long id, Class clazz) {
		Session session = HibernateSessionFactory.getSession();
		System.out.println("del������id=" + id);
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Object obj = session.get(clazz, id);
			session.delete(obj);
			System.out.println("ɾ������id=" + id);
			tx.commit();
		} catch (RuntimeException re) {
			tx.rollback();
			throw re;
		} finally {
			HibernateSessionFactory.closeSession();
		}
	}

	// ���¼�¼
	protected void update(Object item) {
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		System.out.println("update��¼");
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

	// ��ȡ����ĳһ�����Ӧ�����м�¼
	// clazz �����Ӧ����
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

	// ʹ��HQL��ѯ
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

	// ����condition��������ݽ��в�ѯ��ʹ��Criteria��ѯ��ʽ
	// condition ��Ҫ���в�ѯ�Ķ���,�����ض�������
	// class ������
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
	
	//��ȡ�򵥶�����ܼ�¼����
	//clazz �����Ӧ����
	public long getRowCount(Class clazz){
		long count = 0;
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			Object s =session.createCriteria(clazz)
						  .setProjection(Projections.rowCount()) //ʹ��ͶӰ��ѯ
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
	
	//�Ե����ı����з�ҳ�ĺ���,����Pagination����
	Pagination  pagedQuery(Class clazz, int currentNo, int pageSize){
		long rowCount = this.getRowCount(clazz);
		//����pagination����
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
}