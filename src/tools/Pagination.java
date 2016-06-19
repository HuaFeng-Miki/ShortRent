package tools;

import java.util.List;

//使用泛型
public class Pagination {
	private long rowCount = 0; // 总记录条数
	private long pageCount = 0; // 总页数
	private int currentPageNum = 1; // 当前页数
	private int pageSize = 10; // 页面显示数目
	long startRow; // 当前页开始的记录id
	long endRow; // 当前页结束的记录id
	List list = null;
	long previous;
	long next;

	// 构造函数
	public Pagination(long rowCount, int currentPageNum, int pageSize) {
		this.currentPageNum = currentPageNum;
		this.rowCount = rowCount;
		this.pageSize = pageSize;
		// 如果当前页数小于1,则设置为1
		if (currentPageNum <= 0)
			this.currentPageNum = 1;
		//如果当前页数大于总页数,设置为总页数
		this.pageCount = (rowCount + this.pageSize - 1) / this.pageSize;
		if (currentPageNum >this.pageCount)
			this.currentPageNum = (int) this.pageCount;
		System.out.println("currentPage=" + this.currentPageNum);
		// 设置各项属性值
		this.startRow = (this.currentPageNum - 1) * pageSize + 1;
		
		this.endRow = (this.currentPageNum * pageSize>rowCount)?
						rowCount :
					   this.currentPageNum * pageSize ;
		this.previous = (this.currentPageNum > 1) ? (this.currentPageNum - 1)
				: 1;
		this.next = (this.currentPageNum < pageCount) ? (this.currentPageNum + 1)
				: (pageCount);
	}

	public long getRowCount() {
		return rowCount;
	}

	public void setRowCount(long rowCount) {
		this.rowCount = rowCount;
	}

	public long getPageCount() {
		return pageCount;
	}

	public void setPageCount(long pageCount) {
		this.pageCount = pageCount;
	}

	public int getcurrentPageNum() {
		return currentPageNum;
	}

	public void currentPageNum(int currentPageNum) {
		this.currentPageNum = currentPageNum;
	}

	public long getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public long getStartRow() {
		return startRow;
	}

	public void setStartRow(long startRow) {
		this.startRow = startRow;
	}

	public long getEndRow() {
		return endRow;
	}

	public void setEndRow(long endRow) {
		this.endRow = endRow;
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	public long getPrevious() {
		return previous;
	}

	public long getNext() {
		return next;
	}

}
