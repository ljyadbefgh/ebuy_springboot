package com.lcvc.ebuy_springboot.service;


import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.exception.MyFormException;

import java.util.List;

public interface AdminService {
    /**
     * 登录方法
     *
     * @param username 账户名
     * @param password 密码
     * @return null表示登录失败
     */
    boolean login(String username, String password);

    /**
     * 获取所有账户集合
     */
    List<Admin> getAdmins();

    /**
     * 删除指定账户
     * @param id
     */
    void deleteAdmin(Integer id);

    /**
     * 添加管理员
     * 说明：账户名和密码不能为空
     * @param admin
     */
    void addAdmin(Admin admin) throws MyFormException;


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
     * 说明：账户名和密码不能为s空
     * @param admin
     */
    boolean updateAdmin(Admin admin) throws MyFormException;
}
