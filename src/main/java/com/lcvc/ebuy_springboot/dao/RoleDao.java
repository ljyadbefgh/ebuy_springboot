package com.lcvc.ebuy_springboot.dao;

import com.lcvc.ebuy_springboot.model.Role;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository//为了不让idea报错加上
public interface RoleDao extends IBaseDao<Role>{

    /**
     * 根据角色名读取角色信息
     * @param name
     * @return
     */
    Role getRoleByName(String name);

    /**
     * 获取指定管理员拥有的角色集合
     * @param adminId
     * @return
     */
    List<Role> getRolesByAdminId(Integer adminId);

    /**
     * 获取指定管理员拥有的角色数量
     * @param adminId
     * @return
     */
    int getRoleNumberByAdminId(Integer adminId);

}
