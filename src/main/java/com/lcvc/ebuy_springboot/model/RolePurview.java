package com.lcvc.ebuy_springboot.model;

import java.util.Date;
import java.util.List;
import java.util.Objects;

/**
 * 角色关系表
 */
public class RolePurview implements java.io.Serializable{
    private Integer id;
    private Role role;
    private Purview purview;
    private String permissionIds;//操作权限集合，123则表示拥有1、2、3的权限
    private Date createTime;//创建时间，由系统自动生成


    //非数据库字段
    private List<String> methods;//该权限管理拥有的访问方法集合
    private List<Permission> permissions;//该权限管理拥有的访问对象集合

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

    public String getPermissionIds() {
        return permissionIds;
    }

    public void setPermissionIds(String permissionIds) {
        this.permissionIds = permissionIds;
    }

    public List<String> getMethods() {
        return methods;
    }

    public void setMethods(List<String> methods) {
        this.methods = methods;
    }

    public List<Permission> getPermissions() {
        return permissions;
    }

    public void setPermissions(List<Permission> permissions) {
        this.permissions = permissions;
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
