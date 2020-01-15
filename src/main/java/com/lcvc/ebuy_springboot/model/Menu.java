package com.lcvc.ebuy_springboot.model;

import java.io.Serializable;
import java.util.List;
import java.util.Objects;

/**
 * 菜单
 * 菜单与权限模块没有关系
 */
public class Menu implements Serializable {
    private Integer id;
    private String name;//菜单名
    private Integer orderNum;//优先级，这里是默认升序排列
    private Integer parentId;//父菜单id，null表示没有父菜单，即顶级菜单
    private String url;//资源地址，服务器跳转地址的权限，目录形式，对应Controller地址
    //对应客户端vue的路由树形
    private String route;//表示路由的跳转地址（前端vue的跳转，通过点击该菜单跳转到的前端url）
    private String path;//vue组件的地址，详细地址
    private Object component;//专门为vue等设计，表示组件的名称（对应vue路由的name树形）
    private String iconCls;//图标-未来设计
    private Boolean requireAuth;//要求登陆后才能访问
    private Boolean enabled;//该菜单是否可用，也用于U服务端验证
    private Boolean display;//该菜单是否显示


    //非数据库字段
    private List<Menu> children;//该菜单拥有的子菜单集合（递归）
    private Boolean selected;//是否选中，用于业务判断

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

    public Integer getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(Integer orderNum) {
        this.orderNum = orderNum;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getRoute() {
        return route;
    }

    public void setRoute(String route) {
        this.route = route;
    }

    public Boolean getDisplay() {
        return display;
    }

    public void setDisplay(Boolean display) {
        this.display = display;
    }

    public Boolean getSelected() {
        return selected;
    }

    public void setSelected(Boolean selected) {
        this.selected = selected;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Object getComponent() {
        return component;
    }

    public void setComponent(Object component) {
        this.component = component;
    }

    public String getIconCls() {
        return iconCls;
    }

    public void setIconCls(String iconCls) {
        this.iconCls = iconCls;
    }

    public Boolean getRequireAuth() {
        return requireAuth;
    }

    public void setRequireAuth(Boolean requireAuth) {
        this.requireAuth = requireAuth;
    }

    public Boolean getEnabled() {
        return enabled;
    }

    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }

    public List<Menu> getChildren() {
        return children;
    }

    public void setChildren(List<Menu> children) {
        this.children = children;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Menu menu = (Menu) o;
        return Objects.equals(id, menu.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
