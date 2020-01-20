package com.lcvc.ebuy_springboot.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository//为了不让idea报错加上
public interface AdminMenuDao {

    /**
     * 读取该账户拥有的所有菜单id
     * 说明：
     * 1.只有角色启用，并且菜单启用的菜单才读取。
     * 2.非树形目录，没有层级关系，需要在业务层自己处理
     * @param adminId
     * @param roleEnabled 如果为true，表示必须是有效的角色才能拥有菜单
     * @param menuEnabled 如果为true，表示必须是有效的菜单
     * @return
     */
    Integer[] getMenuIdsByAdminId(@Param(value = "adminId")int adminId,@Param(value = "roleEnabled")boolean roleEnabled,@Param(value = "menuEnabled")boolean menuEnabled);

}
