package dao;

import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Session;

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
	
	public Pagination getPager(int currentPageNum,int pageSize){
		return super.pagedQuery(House.class, currentPageNum, pageSize);
	}
}
