package dao;

import entity.RentLock;

public class RentlockDao extends BaseHibernateDAO{

	// 增加出租情况
	public void add(RentLock rentlock) throws Exception{
		super.add(rentlock);
	}
	
	//删除出租情况
	public void del(long id) throws Exception{
		super.del(id, RentLock.class);
	}
	
}
