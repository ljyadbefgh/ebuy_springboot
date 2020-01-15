package com.lcvc.ebuy_springboot.dao;

import org.springframework.stereotype.Repository;

@Repository//为了不让idea报错加上
public interface AdminMenuDao {

    /**
     * 读取该账户拥有的所有有效菜单id
     * 说明：
     * 1.只有角色启用，并且菜单启用的菜单才读取。
     * 2.非树形目录，没有层级关系，需要在业务层自己处理
     * @param adminId
     * @return
     */
    Integer[] getMenuIdsByAdminId(int adminId);

}
