package dao;

import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Expression;
import org.hibernate.criterion.Property;
import org.hibernate.criterion.Restrictions;

import entity.House;
import tools.HibernateSessionFactory;
import tools.Pagination;

public class HouseDao extends BaseHibernateDAO{

	
	// 发布房屋信息（已通过审核）
	public void add(House house) throws Exception{
		house.setState(3L);
		super.add(house);
	}
	
	// 删除房屋信息
	public void del(long id) throws Exception{
		super.del(id,House.class);
	}
	
	// 更新房屋信息
	public void update(House house) throws Exception{
		super.update(house);
	}
	
	// 房屋具体信息
	public House search(long id) throws Exception{
		return (House)super.get(id, House.class);
	}
	// 全部分页
	public Pagination getPager(int currentPageNum,int pageSize){
		return super.pagedQuery(House.class, currentPageNum, pageSize);
	}
	// 待发布分页
	public Pagination getRelease(long userId,int currentPageNum, int pageSize){
		House house = new House();
		house.setState(2L);
		house.setUserId(userId);
		long rowCount = this.getRowCount(House.class);
		//构造pagination对象
		Pagination pager = new Pagination(rowCount, currentPageNum, pageSize);
		List list;
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			list= session.createCriteria(House.class)
						.add(Example.create(house))
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
	
	// 获取我的房屋信息
	public Pagination getMyHouse(long userId, int currentPageNum,int pageSize){
		House house = new House();
		house.setUserId(userId);
		long rowCount = this.getRowCount(House.class);
		Pagination pager = new Pagination(rowCount, currentPageNum, pageSize);
		List list;
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			list= session.createCriteria(House.class)
						.add(Example.create(house))
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
	
	// 获取根据地址查询的房屋
	public Pagination getHouseList(String city,int currentPageNum,int pageSize){
		long rowCount = this.getRowCount(House.class);
		Pagination pager = new Pagination(rowCount, currentPageNum, pageSize);
		List list;
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		try {
			list= session.createCriteria(House.class)
						.add(Property.forName("address").like(city))
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
}
