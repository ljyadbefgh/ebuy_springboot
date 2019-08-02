package com.lcvc.ebuy_springboot.dao;

import com.lcvc.ebuy_springboot.model.Admin;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;


/*
 * 该接口用来与mybatis的对应映射文件对接
 */
@Service//为了不让idea报错加上
public interface AdminDao {
	/**
	 * 处理数据库的登录方法
	 * @param username 账户名
	 * @param password 密码
	 * @return 返回匹配的账户总数
	 */
	int login(@Param(value = "username") String username, @Param(value = "password") String password);

	/**
	 * 根据账户的标志符删除对应的账户信息
	 * @param id 账户信息的id
	 * @return  删除的记录数
	 */
	int delete(int id);

	/**
	 *  根据账户的标志符读取对应的账户信息
	 * @param id 账户信息的id
	 * @return 账户对象，如果是null表示读取失败
	 */
	Admin get(int id);

	/**
	 *  根据账户的标志符读取对应的账户信息
	 * @param username 账户信息的账户名
	 * @return 账户对象，如果是null表示读取失败
	 */
	Admin getAdminByUsername(String username);

	/**
	 * 	将账户信息存入账户表中
	 * @param admin 账户信息，注意表中的非空字段不能为空
	 * @return 添加了几条记录信息
	 */
	int add(Admin admin);

	/**
	 * 	编辑账户信息
	 * @param admin 账户信息，注意表中的非空字段不能为空
	 * @return 编辑了几条记录信息
	 */
	int update(Admin admin);

	/**
	 * 从数据库中读取所有账户记录
	 * @return 如果没有记录则集合为空（注意不是Null）
	 */
	List<Admin> readAll();

	/**
	 * 分页显示数据库记录
	 * @param offset 记录开始位置
	 * @param length  偏移量
	 * @return
	 */
	List<Admin> query(@Param(value = "offset")int offset, @Param(value = "length")int length);

	/**
	 * 查询数据库总记录数
	 * @return
	 */
	int querySize();

    /**
     * 获取数据库中相同账户名的数量，用于判断创建账户时的账户名是否重名
	 * @param username
     * @return
     */
	int countAdminByUsername(String username);
}

