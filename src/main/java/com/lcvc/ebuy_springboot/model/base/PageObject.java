package com.lcvc.ebuy_springboot.model.base;

import java.util.List;

/*
 * 分页类
 * @author ljy
 */
public class PageObject<T> {
	private int limit;//每页显示的记录数
	private int maxPage;//显示的最大页数
	private int page;//显示当前页数
	private int totalRecords;//总记录数
	private int nextPage;//下一页的页数
	private int previousPage;//上一页的页数
	private List<T> list;//分页中包含的记录数

	//用于数据库的指针树形
	private int offset;//获取当前页起始记录位置，从0开始

	/*
	 * 用于供前台进行分页初始化
	 * 说明：
	 * 要求同时完成分页中相关属性的计算
	 * @param pageSize 每页记录数
	 * @param recordCount  总记录数，一般应将数据库中查询结果的总记录数放入
	 * @param page 当前页
	 */
	public PageObject(Integer limit,Integer page,int totalRecords){
		if(limit==null){
			limit=20;//默认20条记录
		}
		//赋值每页记录数
		this.setLimit(limit);
		//赋值最大记录数
		this.setTotalRecords(totalRecords);
		//根据总记录数和每页最大记录数计算并获得最大页数，并赋值
		this.maxPage = ((totalRecords % limit) == 0)?(totalRecords / limit):(totalRecords / limit + 1);
		//计算当前页，并赋值
		if(page==null){//如果page为null,默认为第一页
			page=1;
		}else{
			if (page < 1) {//如果有些人故意输入的页数小于1，或者小于0，则指向第一页
				page = 1;
			} else if(page > maxPage){//如果输入的页数超过了最大页数，则指向最大页。
				page = maxPage;
			}
		}
		this.setPage(page);
		//计算当前游标（数据库结果集）位置
		int offset=(this.getPage() - 1) * this.getLimit();//移动指针到要显示的记录位置上,注意 集合位置从0开始，所以 计算方式不同
		this.setOffset(offset);
		//设置上一页
		previousPage=this.getPage()-1;
		if(previousPage<1){
			previousPage=1;
		}
		this.setPreviousPage(previousPage);
		//设置下一页
		nextPage=this.getPage()+1;
		if(nextPage>this.getMaxPage()){
			nextPage=this.getMaxPage();
		}
		this.setNextPage(nextPage);
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getMaxPage() {
		return maxPage;
	}

	public int getTotalRecords() {
		return totalRecords;
	}
	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	public int getNextPage() {
		return nextPage;
	}
	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	public int getPreviousPage() {
		return previousPage;
	}
	public void setPreviousPage(int previousPage) {
		this.previousPage = previousPage;
	}
	
	
}
