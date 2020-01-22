package com.lcvc.ebuy_springboot.model;

import java.util.Objects;

/**
 * 权限操作类：对应资源表的增删改查操作
 * 设计说明：因为数据少且基本固定不变，所以选择在代码写死相关数据，不采用数据库表
 */
public class Permission implements java.io.Serializable {
    private Integer id;//自定义主键
    private String name;//权限名：如增加、编辑
    private String methods;//方法，支持的restful方法（如GET、DELETE等），可以多些，用|分隔，如：patch|put

    //非核心字段
    private Boolean selected;//是否选中。用于在展示所有操作权限数据时（配合前端）使用

    public Permission() {
    }

    public Permission(Integer id) {
        this.id = id;
    }

    public Permission(Integer id, String name, String methods) {
        this.id = id;
        this.name = name;
        this.methods = methods;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMethods() {
        return methods;
    }

    public void setMethods(String methods) {
        this.methods = methods;
    }

    public Boolean getSelected() {
        return selected;
    }

    public void setSelected(Boolean selected) {
        this.selected = selected;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Permission that = (Permission) o;
        return Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }


}
