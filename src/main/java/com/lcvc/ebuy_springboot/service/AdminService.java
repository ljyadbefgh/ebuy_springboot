package com.lcvc.ebuy_springboot.service;


import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.base.PageObject;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.util.List;

public interface AdminService {
    /**
     * 登录方法
     *
     * @param username 账户名，不能为空
     * @param password 密码，不能为空
     * @return null表示登录失败
     */
    boolean login(String username, String password);

    /**
     * 获取所有账户集合
     */
    List<Admin> getAdmins();

    /**
     * 分页查询账户
     */
    PageObject searchAdmins(Integer page, Integer limit);

    /**
     * 删除指定账户
     * 1.不能自己删除自己
     * 2.如果该账户参与过网站管理则不允许删除
     * （1）发表、编辑过产品
     * @param admin 执行删除的管理员账户
     * @param id
     */
    void deleteAdmin(Admin admin,Integer id);

    /**
     * 批量删除指定账户
     * 说明：
     * 1.不能自己删除自己
     * 2.如果该账户参与过网站管理则不允许删除
     * （1）发表、编辑过产品
     * @param admin 执行删除的管理员账户
     * @param ids 多个账户的主键集合
     */
    void deleteAdmins(Admin admin,Integer[] ids);

    /**
     * 添加管理员
     * 说明：账户名和姓名不能为空
     * @param admin
     */
    void addAdmin(@Valid @NotNull Admin admin);


    /**
     * 根据id读取指定标识符
     * @param id
     * @return
     */
    Admin getAdmin(Integer id);

    /**
     * 根据账户名读取指定标识符
     * @param username
     * @return
     */
    Admin getAdmin(String username);

    /**
     * 编辑管理员
     * 说明：
     * 1、必须传入Admin实体的id值
     * 2、本方法不修改密码字段（使用该方法时务必将密码字段设置为null，否则可能无法通过spring框架验证）
     * 2、如果传入的非主键字段为null，则不更新更字段的值
     * @param admin
     */
    void updateAdmin(@Valid @NotNull Admin admin);

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
