package com.lcvc.ebuy_springboot.dao;


import com.lcvc.ebuy_springboot.model.Menu;
import org.springframework.stereotype.Repository;

import java.util.List;

/*
 * 该接口用来与mybatis的对应映射文件对接
 */
@Repository//为了不让idea报错加上
public interface MenuDao  extends IBaseDao<Menu>{

    /**
     * 获取数据库所有菜单，以树形方式存储
     * @return
     */
    List<Menu> getTreeMenu();

    /**
     * 获取数据库指定菜单及其所有子菜单（递归），以树形方式存储
     * @param id 指定菜单的id
     * @return
     */
    Menu getTreeMenuById(Integer id);

    /**
     * 获取所有根目录
     * @return
     */
    //List<Menu> getRootMenu();

}
