package com.lcvc.ebuy_springboot.service;

import com.lcvc.ebuy_springboot.model.Role;
import com.lcvc.ebuy_springboot.model.base.PageObject;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.util.List;

public interface RoleService {

    /**
     * 获取所有角色信息
     * @return
     */
    List<Role> getAllRoles();

    /**
     * 获取当前可用的所角色信息
     * @return
     */
    List<Role> getAllEnabledRoles();
    /**
     * 分页查询角色集合
     */
    PageObject searchRoles(Integer page, Integer limit);

    /**
     * 根据账户id获取相应的角色集合
     * @param adminId
     * @return
     */
    List<Role> getRolesByAdmin(Integer adminId);

    /**
     * 添加新角色
     * 说明：
     * 1.角色名不能为空
     * 2.如果默认角色属性为null，则为false
     * @param role
     */
    void addRole(@Valid @NotNull Role role);

    /**
     * 编辑新角色
     * @param role
     */
    void updateRole(@Valid @NotNull Role role);

    /**
     * 根据id读取指定标识符
     * @param id
     * @return
     */
    Role getRole(Integer id);

    /**
     * 批量删除指定角色
     * 说明：
     * 1.如果角色已经拥有菜单则不允许删除
     * 2.如果角色已经拥有权限则不允许删除
     * 3.删除角色的同时，将同时移除相关角色与所有账户的关系
     * @param ids 多个角色的主键集合
     */
    void deleteRoles(Integer[] ids);



}
