package Service;

import java.util.List;

import tools.Pagination;
import dao.HouseDao;
import entity.House;

public class HouseService {
	
	HouseDao dao = new HouseDao();
	
	// ȫ����ҳ
	public Pagination getHousePager(int courrentPageNum,int pageSize){
		return dao.getPager(courrentPageNum,pageSize);
	}
	
	// ��������ҳ
	public Pagination getReleaseHouse(long userId,int courrentPageNum,int pageSize){
		return dao.getRelease(userId,courrentPageNum,pageSize);
	}
	
	// �ҵķ���
	public Pagination getMyHouse(long userId, int courrentPageNum, int pageSize){
		return dao.getMyHouse(userId, courrentPageNum,pageSize);
	}
	
	// ���ݵ�ַ��ѯ����
	public Pagination getHouseList(String city,int courrentPageNum, int pageSize){
		return dao.getHouseList(city,courrentPageNum,pageSize);
	}
	
	// �������ͨ��
	public void pass(House house) throws Exception{
		house.setState(2L);
		dao.update(house);
	}
	// ������˾ܾ�
	public void refuse(House house) throws Exception{
		house.setState(4L);
		dao.update(house);
	}
	
	// ��ӷ���
	public void addHouse(House house) throws Exception{
		house.setState(1L);
		dao.add(house);
	}
	
	// ��������
	public void releaseHouse(House house) throws Exception{
		house.setState(3L);
		dao.update(house);
	}
	// ɾ������
	public void del(long id) throws Exception{
		dao.del(id);
	}
	
	// ����id���ҳ���Ӧ�ķ�����Ϣ
	public House search(long id) throws Exception{
		return dao.search(id);
	}
}
