package Service;

import java.util.List;

import tools.Pagination;
import dao.HouseDao;
import entity.House;

public class HouseService {
	
	HouseDao dao = new HouseDao();
	
	
	public Pagination getHousePager(int courrentPageNum,int pageSize){
		return dao.getPager(courrentPageNum,pageSize);
	}
	// 房屋审核通过
	public void pass(House house) throws Exception{
		house.setState(2L);
		dao.update(house);
	}
	// 房屋审核拒绝
	public void refuse(House house) throws Exception{
		house.setState(4L);
		dao.update(house);
	}
	
	// 添加房屋
	public void addHouse(House house) throws Exception{
		dao.add(house);
	}
	// 删除房屋
	public void del(long id) throws Exception{
		dao.del(id);
	}
	
	// 根据id查找出对应的房屋信息
	public House search(long id) throws Exception{
		return dao.search(id);
	}
}
