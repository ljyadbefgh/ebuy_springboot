package com.lcvc.ebuy_springboot.service;


import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.model.query.CustomerQuery;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

public interface CustomerService {
    /**
     * 登录方法
     * 说明：如果系统当前禁止登陆，则无法登陆
     * @param username 账户名
     * @param password 密码
     * @return null表示登录失败
     */
    boolean login(String username, String password);

    /**
     * 获取客户的总记录数
     * @return
     */
    Integer total();

    /**
     * 根据账户名读取指定标识符
     * @param username
     * @return
     */
    Customer getCustomer(String username);

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
     * 2.如果已经下了订单，则不允许删除
     * 3.删除客户也将删除相关的日志
     * @param ids 多个账户的主键集合
     * @throws MyWebException
     */
    void deleteCustomers(Integer[] ids);


    /**
     * 批量删除客户的头像文件，并将数据库对应的头像信息清空
     * 说明：无论该客户是否真的存在头像文件，都会一并删除不会出BUG
     * @param ids 多个账户的主键集合
     * @param basePath 项目根目录网址，用于删除账户对应的头像文件
     */
    void removeCustomersProfilePicture(Integer[] ids,String basePath);

    /**
     * 添加客户，主要用于管理员后台手动添加
     * 说明：核心参数不能为空
     * @param customer
     * @throws MyWebException
     */
    void addCustomer(@Valid @NotNull Customer customer);

    /**
     * 客户注册，用于前端注册功能
     * 说明：
     * 1.账户名和密码不能为空
     * 2.如果网站配置要求了邀请码，则必须使用邀请码
     * 3.如果当前禁止注册，则无法注册
     * @param customer
     * @param inviteCode 邀请码
     * @throws MyWebException
     */
    void regCustomer(@Valid @NotNull Customer customer, String inviteCode);


    /**
     * 根据id读取对象
     * @param id
     * @param basePath 项目根目录网址，用于配合个人头像地址生成完整网址后传给前端
     * @return
     */
    Customer getCustomer(Integer id,String basePath);


    /**
     * 编辑客户信息
     * 说明：
     * 1、本方法不修改密码字段（使用该方法时务必将密码字段设置为null）
     * 2、如果传入的非主键字段为null，则不更新更字段的值
     */
    void updateCustomer(@Valid @NotNull Customer customer);

    /**
     * 重置指定账户为初始密码
     * 说明：初始密码为123456
     * @param id
     * @return
     */
    void resetPassword(Integer id);

    /**
     * 修改密码
     * 说明：
     * 1.本方法不对原密码、新密码和确认密码的规则进行验证，请在web层验证后再传入
     * @param username 必填
     * @param password 必填
     * @param newPass 必填
     * @param rePass 必填
     */
    void updatePassword(String username,String password,String newPass,String rePass);
}
