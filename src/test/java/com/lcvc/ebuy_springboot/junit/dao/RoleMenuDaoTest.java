package com.lcvc.ebuy_springboot.junit.dao;


import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.dao.RoleMenuDao;
import org.junit.Test;

import javax.annotation.Resource;

public class RoleMenuDaoTest extends EbuySpringbootApplicationTests {
    @Resource
    private RoleMenuDao roleMenuDao;

    @Test
    public void testAddMenusIdForRoleId(){
        roleMenuDao.addMenusIdForRoleId(1,new int[]{51,15});
    }



}
