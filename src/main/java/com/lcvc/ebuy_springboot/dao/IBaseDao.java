package com.lcvc.ebuy_springboot.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IBaseDao<T>{
	/*
	 * 根据该对象的关键字，读取指定记录
	 */
	T get(java.io.Serializable id);
	
	/*
	 * 保存指定记录
	 */
	int save(T t);	
	
	/*
	 * 编辑指定记录
	 */
	int update(T t);
	
	/*
	 * 删除指定记录集合
	 */
	int deletes(java.io.Serializable[] ids);
	
	/*
	 * 获取数据库所有记录
	 */
	List<T> readAll();
	
	
	/*
	 * 获取总记录数
	 */
	int total();


	/*
	 * 获取查询记录数
	 */
	int querySize(@Param(value = "objectQuery")Object objectQuery);
	
	/*
	 * 读取分页记录
	 * @param offset 第一条记录索引（从0开始）
	 * @param pageSize 每页要显示的记录数
	 */
	List<T> query(@Param(value = "offset") final int offset, @Param(value = "length") final int length,@Param(value = "objectQuery")Object objectQuery);
	
	
}
