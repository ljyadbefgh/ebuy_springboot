package com.lcvc.ebuy_springboot.dao;


import com.lcvc.ebuy_springboot.model.Customer;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

@Service
public interface CustomerDao extends IBaseDao<Customer>{
	/**
	 * 获取与指定的账户名相同名称的客户数量
	 * 说明：一般用在账户创建的时候，判断输入的账户名是否与其他账户重名
	 * @param username 指定的账户名
	 * @return
	 */
	int countUsername(String username);

	/**
	 * 查找在数据库中除了指定账户外，和该用户名一样的个数
	 * 说明：一般用在账户编辑的时候，判断输入的账户名是否与其他账户重名
	 * @param username 要统计的账户名
	 * @param id 账户主键，除了该账户外
	 * @return 返回相同用户名的个数，0表示不重名
	 */
	int countOtherUsername(@Param(value = "username")String username, @Param(value = "id")Integer id);

}
