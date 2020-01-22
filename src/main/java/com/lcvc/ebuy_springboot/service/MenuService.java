package com.lcvc.ebuy_springboot.service;

import com.lcvc.ebuy_springboot.model.Menu;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.util.List;

public interface MenuService {

    /**
     *  获取数据库所有栏目，以树形方式存储
     *  特别说明：
     *  1.20200109取消该处，改为前端来进行处理。
     *  由于element-ui中级联选择器存在bug---空级联bug
     *  即"children": []，空数组时，会显示空的子菜单（正常来说应该不显示），故在服务端直接将空数组设置为null
     * @return
     */
    List<Menu> getTreeMenu();

    /**
     * 根据id读取指定菜单
     * @param id
     * @return
     */
    Menu getMenu(Integer id);

    /**
     * 保存菜单
     * @param menu
     */
    void addMenu(@Valid @NotNull Menu menu);



    /**
     * 编辑菜单
     * 说明：
     * 1.编辑菜单可以更改目录的层级
     * 2.父菜单如果为NULL,则数据库更新为父栏目。
     * @param menu
     */
    void updateMenu(@Valid @NotNull Menu menu);

    /**
     * 删除指定菜单
     * 说明：
     * 1.删除菜单和角色的关联
     * 2.删除菜单及其子菜单
     */
    void deleteMenu(@NotNull Integer id);
}
