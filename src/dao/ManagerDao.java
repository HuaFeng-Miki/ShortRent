package dao;
import java.util.List;

import org.hibernate.Session;

import entity.Manager;
import tools.HibernateSessionFactory;

public class ManagerDao extends BaseHibernateDAO{

	// 验证管理员身份
	public boolean isExistedManager(String username,String password)
	throws Exception{
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		// System.out.println("no");
		List list = session.createQuery("from Manager ma where ma.username=:u and ma.password=:p")
				.setString("u", username).setString("p", password).list();
		
		System.out.println("管理员存在数量为:" + list.size());
		session.getTransaction().commit();
		HibernateSessionFactory.closeSession();
		
		return (list.size() > 0);
	}
	
	// 添加管理员账号
	public void add(Manager manager) throws Exception {
		super.add(manager);
	}
	// 获取管理员账号
	public List getByManagername(String username) {
		return getSession().createQuery("from Manager m where m.username=:u")
				.setString("u", username).list();
	}
}
