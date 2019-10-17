package com.lcvc.ebuy_springboot.model;

import java.util.Date;
import java.util.Objects;

/**
 * 角色关系表
 */
public class RolePurview implements java.io.Serializable{
    private Integer id;
    private Role role;
    private Purview purview;
    private Date createTime;//创建时间，由系统自动生成

    //非数据库字段

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Purview getPurview() {
        return purview;
    }

    public void setPurview(Purview purview) {
        this.purview = purview;
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
        RolePurview that = (RolePurview) o;
        return Objects.equals(role, that.role) &&
                Objects.equals(purview, that.purview);
    }

    @Override
    public int hashCode() {
        return Objects.hash(role, purview);
    }
}
