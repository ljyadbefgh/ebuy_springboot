package com.lcvc.ebuy_springboot.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository//为了不让idea报错加上
public interface RoleMenuDao{

    /**
     * 读取该角色拥有的所有菜单数量
     * @param roleId
     * @return
     */
    int getMenusCountByRoleId(int roleId);


    /**
     * 读取该角色拥有的所有菜单id，可以用于提供给前端的树形菜单已选列表
     * @param roleId
     * @return
     */
    List<Integer> getMenusIdByRoleId(int roleId);

    /**
     * 将菜单批量赋给角色
     * @param roleId 指定角色
     * @param menuIds 菜单集合
     */
    void addMenusForRoleId(@Param(value = "roleId")int roleId, @Param(value = "menuIds")int[] menuIds);


    /**
     * 删除该角色的所有子菜单
     * @param roleId 角色id
     */
    void deleteMenusByRoleId(int roleId);

    /**
     * 删除该菜单对应的所有角色菜单关系
     * @param menuIds 菜单集合，集合必须大于0
     */
    void deleteRoleMenusByMenuIds(java.io.Serializable[] menuIds);


}
