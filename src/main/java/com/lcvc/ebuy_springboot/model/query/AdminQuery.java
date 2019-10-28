package com.lcvc.ebuy_springboot.model.query;


import com.lcvc.ebuy_springboot.model.Admin;

/**
 * 作为Admin的查询条件
 */
public class AdminQuery extends Admin {
    private Integer roleId;//角色查询条件

    private Boolean accountNonLockedQuery;//因为Admin中的是继承spring security的，只能用布尔基础类型，不能用于查询搜索

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Boolean getAccountNonLockedQuery() {
        return accountNonLockedQuery;
    }

    public void setAccountNonLockedQuery(Boolean accountNonLockedQuery) {
        this.accountNonLockedQuery = accountNonLockedQuery;
    }
}
