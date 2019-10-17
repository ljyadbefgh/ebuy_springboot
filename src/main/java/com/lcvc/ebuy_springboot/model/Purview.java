package com.lcvc.ebuy_springboot.model;

import org.hibernate.validator.constraints.Length;

import java.util.Objects;

public class Purview implements java.io.Serializable{
    private Integer id;
    @Length(min = 2, max = 20, message = "权限长度必须在 {min} - {max} 之间")
    private String name;//权限名称
    @Length(min = 2, max = 200, message = "路径的长度必须在 {min} - {max} 之间")
    private String url;//配合spring security使用，请求路径规则(表示拥有该路径的访问规则)。例如/employee/basic/**
    private Boolean enabled;//是否启用，true表示启用；false表示该权限不启用，即无法使用
    private String description;//权限的描述

    //非数据库字段
    private Integer roleNumber;//该权限对应的权限数量

    public Purview() {
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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Boolean getEnabled() {
        return enabled;
    }

    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getRoleNumber() {
        return roleNumber;
    }

    public void setRoleNumber(Integer roleNumber) {
        this.roleNumber = roleNumber;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Purview purview = (Purview) o;
        return Objects.equals(id, purview.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
