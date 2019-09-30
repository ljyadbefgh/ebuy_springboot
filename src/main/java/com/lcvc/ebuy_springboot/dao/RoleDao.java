package com.lcvc.ebuy_springboot.dao;

import com.lcvc.ebuy_springboot.model.Role;

import java.util.List;

public interface RoleDao extends IBaseDao<Role>{

    /**
     * 获取指定管理员拥有的角色集合
     * @param adminId
     * @return
     */
    List<Role> getRolesByAdminId(Integer adminId);

}
