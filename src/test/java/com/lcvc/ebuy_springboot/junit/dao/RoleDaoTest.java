package com.lcvc.ebuy_springboot.junit.dao;


import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.dao.RoleDao;
import org.junit.Test;

import javax.annotation.Resource;

public class RoleDaoTest extends EbuySpringbootApplicationTests {
    @Resource
    private RoleDao roleDao;


    @Test
    public void testReadAll(){
        System.out.println("角色总数："+roleDao.readAll().size());
    }

    @Test
    public void testGetRolesByAdminId(){
        System.out.println("指定账户的角色总数："+roleDao.getRolesByAdminId(2).size());
    }




}
