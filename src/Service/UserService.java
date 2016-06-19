package Service;

import java.util.List;

import tools.Pagination;
import dao.UserDao;
import entity.User;

public class UserService {
	
	UserDao dao = new UserDao();
	
	//登录验证
	public  boolean loginValidated(String username, String password) throws Exception {
		return dao.isExistedUser(username, password);	
	}
	
	// 根据用户名获取用户对象
	public User getByUsername(String username) throws Exception {
		List list = dao.getByUsername(username);
		if (list.size() == 0)
			return null;
		return (User)list.get(0);
	}
	
	// 添加用户
	public void  add(User user) throws Exception {
		dao.add(user);
	}
	// 删除用户
	public void del(long id) throws Exception{
		dao.del(id);
	}
	
	// 查找用户
	public User search(long id) throws Exception{
		return dao.search(id);
	}
	
	// 更新用户信息
	public void update(User user) throws Exception{
		dao.update(user);
	}
	
	public static void main(String[] args) throws Exception {
		UserService service = new UserService();
		
	}
	public Pagination getUserPager(int courrentPageNum,int pageSize){
		return dao.getPager(courrentPageNum,pageSize);
	}
}
