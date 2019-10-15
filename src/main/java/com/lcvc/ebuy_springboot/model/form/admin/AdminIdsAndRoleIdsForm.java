package com.lcvc.ebuy_springboot.model.form.admin;

public class AdminIdsAndRoleIdsForm {
    private Integer[] adminIds;
    private Integer[] roleIds;

    public Integer[] getAdminIds() {
        return adminIds;
    }

    public void setAdminIds(Integer[] adminIds) {
        this.adminIds = adminIds;
    }

    public Integer[] getRoleIds() {
        return roleIds;
    }

    public void setRoleIds(Integer[] roleIds) {
        this.roleIds = roleIds;
    }
}
