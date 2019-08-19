package com.lcvc.ebuy_springboot.service;


import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyFormException;
import com.lcvc.ebuy_springboot.model.query.CustomerQuery;

public interface CustomerService {
    /**
     * 登录方法
     *
     * @param username 账户名
     * @param password 密码
     * @return null表示登录失败
     */
    boolean login(String username, String password);

    /**
     * 分页查询账户
     * @param page 当前页面
     * @param limit  每页最多显示的记录数
     * @param customerQuery 查询条件类
     * @param basePath 项目根目录网址，用于配合个人头像地址生成完整网址后传给前端
     * @return
     */
    PageObject searchCustomers(Integer page, Integer limit, CustomerQuery customerQuery, String basePath);


    /**
     * 批量删除指定账户
     * 说明：
     * 1.如果客户存在头像文件，则不允许删除
     * @param ids 多个账户的主键集合
     * @throws MyFormException
     */
    void deleteCustomers(Integer[] ids) throws MyFormException;


    /**
     * 批量删除客户的头像文件，并将数据库对应的头像信息清空
     * 说明：无论该客户是否真的存在头像文件，都会一并删除不会出BUG
     * @param ids 多个账户的主键集合
     * @param basePath 项目根目录网址，用于删除账户对应的头像文件
     */
    void removeCustomersProfilePicture(Integer[] ids,String basePath);

    /**
     * 添加管理员
     * 说明：账户名和密码不能为空
     * @param customer
     * @throws MyFormException
     */
    void addCustomer(Customer customer) throws MyFormException;


    /**
     * 根据id读取对象
     * @param id
     * @return
     */
    Customer getCustomer(Integer id);


    /**
     * 编辑客户信息
     * 说明：
     * @param customer
     */
    void updateCustomer(Customer customer) throws MyFormException;

    /**
     * 重置指定账户为初始密码
     * 说明：初始密码为123456
     * @param id
     * @return
     */
    void resetPassword(Integer id);
}
