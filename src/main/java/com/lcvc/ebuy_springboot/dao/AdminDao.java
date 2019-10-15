package com.lcvc.ebuy_springboot.dao;

import com.lcvc.ebuy_springboot.model.Admin;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;


/*
 * 该接口用来与mybatis的对应映射文件对接
 */
@Repository//为了不让idea报错加上
public interface AdminDao extends IBaseDao<Admin>{
	/**
	 * 处理数据库的登录方法
	 * @param username 账户名
	 * @param password 密码
	 * @return 返回匹配的账户总数
	 */
	int login(@Param(value = "username") String username, @Param(value = "password") String password);


	/**
	 *  根据账户的标志符读取对应的账户信息
	 * @param username 账户信息的账户名
	 * @return 账户对象，如果是null表示读取失败
	 */
	Admin getAdminByUsername(String username);


    /**
     * 获取数据库中相同账户名的数量，用于判断创建账户时的账户名是否重名
	 * @param username
     * @return
     */
	int countUsername(String username);

	/**
	 * 查找在数据库中除了指定账户外，和该用户名一样的个数
	 * @param username 要统计的账户名
	 * @param id 账户主键，除了该账户外
	 * @return 返回相同用户名的个数，0表示不重名
	 */
	int countOtherUsername(@Param(value = "username")String username,@Param(value = "id")Integer id);


}

