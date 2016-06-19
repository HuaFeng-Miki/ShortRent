package Service;

import java.util.List;

import tools.Pagination;
import dao.HouseDao;
import entity.House;

public class HouseService {
	
	HouseDao dao = new HouseDao();
	
	// 全部分页
	public Pagination getHousePager(int courrentPageNum,int pageSize){
		return dao.getPager(courrentPageNum,pageSize);
	}
	
	// 待发布分页
	public Pagination getReleaseHouse(long userId,int courrentPageNum,int pageSize){
		return dao.getRelease(userId,courrentPageNum,pageSize);
	}
	
	// 我的房屋
	public Pagination getMyHouse(long userId, int courrentPageNum, int pageSize){
		return dao.getMyHouse(userId, courrentPageNum,pageSize);
	}
	
	// 根据地址查询房屋
	public Pagination getHouseList(String city,int courrentPageNum, int pageSize){
		return dao.getHouseList(city,courrentPageNum,pageSize);
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
		house.setState(1L);
		dao.add(house);
	}
	
	// 发布房屋
	public void releaseHouse(House house) throws Exception{
		house.setState(3L);
		dao.update(house);
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
