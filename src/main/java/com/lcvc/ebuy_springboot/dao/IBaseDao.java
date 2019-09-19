package com.lcvc.ebuy_springboot.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IBaseDao<T>{
	/**
	 * 根据该对象的关键字，读取指定记录,不包含关联属性
	 * @param id 关键字
	 * @return null表示读取失败
	 */
	T getSimple(java.io.Serializable id);

	/**
	 * 根据该对象的关键字，读取指定记录
	 * @param id 关键字
	 * @return null表示读取失败
	 */
	T get(java.io.Serializable id);

	/**
	 * 保存指定记录(并返回主键值，主键值自动存储在t对象里)
	 * @param t 注意表中的非空字段不能为空
	 * @return 1表示成功，0表示失败，>1表示数据库存在异常
	 */
	int save(T t);
	
	/**
	 * 编辑指定记录
	 * @param t 主键不能为空
	 *@return 1表示成功，0表示失败，>1表示数据库存在异常
	 */
	int update(T t);

	/**
	 * 根据标志符删除对应的记录信息
	 * @param id 标志符
	 * @return  删除的记录数，1表示删除成功，0表示删除失败，>1表示数据库存在异常
	 */
	int delete(java.io.Serializable id);

	/**
	 * 根据标志符集合删除对应的记录信息集合
	 * @param ids id集合
	 * @return  删除的记录数，>=1表示删除成功，0表示删除失败
	 */
	int deletes(java.io.Serializable[] ids);
	
	/**
	 * 获取表中所有记录
	 * @return
	 */
	List<T> readAll();
	
	
	/**
	 * 获取表中总记录数
	 * @return
	 */
	int total();

	/**
	 * 获取查询记录数，一般与query配合使用
	 * @param objectQuery 查询条件类
	 * @return
	 */
	int querySize(@Param(value = "objectQuery")Object objectQuery);
	
	/**
	 * 读取部分记录，一般配合业务层分页方法展示
	 * @param offset 第一条记录索引（从0开始）
	 * @param length 显示记录个数（指从第一条记录开始，显示第N条）
	 * @param objectQuery 查询条件类
	 * @return
	 */
	List<T> query(@Param(value = "offset") final int offset, @Param(value = "length") final int length,@Param(value = "objectQuery")Object objectQuery);
	
	
}
