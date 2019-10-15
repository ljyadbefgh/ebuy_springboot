package com.lcvc.ebuy_springboot.model.query;


import com.lcvc.ebuy_springboot.model.Admin;

/**
 * 作为Admin的查询条件
 */
public class AdminQuery extends Admin {
    private Integer roleId;//角色查询条件

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }
}
