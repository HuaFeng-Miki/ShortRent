package dao;

import java.util.List;

import org.hibernate.Session;

import entity.House;
import entity.User;
import tools.HibernateSessionFactory;
import tools.Pagination;

public class UserDao extends BaseHibernateDAO{

	// 用户身份验证
	public boolean isExistedUser(String username, String password)
			throws Exception {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		List list = session
				.createQuery(
						"from User us where us.username=:u and us.password=:p")
				.setString("u", username).setString("p", password).list();
		System.out.println("用户存在数量为:" + list.size());
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		return (list.size() > 0);
	}
	
	// 获取用户账号
	public List getByUsername(String username) {
		return getSession().createQuery("from User u where u.username=:u")
				.setString("u", username).list();
	}
	
	// 添加用户账号
	public void add(User user) throws Exception {
		super.add(user);
	}
	
	// 删除用户信息
	public void del(long id) throws Exception{
		super.del(id,User.class);
	}
	
	public void update(User user)throws Exception{
		super.update(user);
	} 
	// 查询用户信息
	public User search(long id) throws Exception{
		return (User)super.get(id, User.class);
	}
	// 用户分页
	public Pagination getPager(int currentPageNum,int pageSize){
		return super.pagedQuery(User.class, currentPageNum, pageSize);
	}
}
