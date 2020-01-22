package com.lcvc.ebuy_springboot.model.form.role_menu;

import com.lcvc.ebuy_springboot.model.Menu;

import java.util.List;

public class MenuByRoleReturn {
    private List<Integer> menusId;//该角色拥有的菜单集合
    private List<Menu> treeMenu;//系统所有菜单-树形

    public List<Integer> getMenusId() {
        return menusId;
    }

    public void setMenusId(List<Integer> menusId) {
        this.menusId = menusId;
    }

    public List<Menu> getTreeMenu() {
        return treeMenu;
    }

    public void setTreeMenu(List<Menu> treeMenu) {
        this.treeMenu = treeMenu;
    }
}
