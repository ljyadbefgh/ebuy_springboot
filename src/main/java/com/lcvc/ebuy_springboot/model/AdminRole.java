package com.lcvc.ebuy_springboot.model;

import java.util.Date;
import java.util.Objects;

/**
 * 角色关系表
 */
public class AdminRole implements java.io.Serializable{
    private Integer id;
    private Admin admin;
    private Role role;
    private Date createTime;//创建时间，由系统自动生成

    //非数据库字段

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AdminRole adminRole = (AdminRole) o;
        return Objects.equals(admin, adminRole.admin) &&
                Objects.equals(role, adminRole.role);
    }

    @Override
    public int hashCode() {
        return Objects.hash(admin, role);
    }
}
