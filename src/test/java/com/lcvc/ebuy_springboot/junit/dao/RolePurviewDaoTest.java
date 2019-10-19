package com.lcvc.ebuy_springboot.junit.dao;


import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.dao.RolePurviewDao;
import com.lcvc.ebuy_springboot.model.Role;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class RolePurviewDaoTest extends EbuySpringbootApplicationTests {
    @Autowired
    private RolePurviewDao rolePurviewDao;

    @Test
    public void testGetRolesByPurviewId(){
        List<Role> list=rolePurviewDao.getRolesByPurviewId(30);
        System.out.println("总数："+list.size());
        for(Role role:list){
            System.out.println(role.getName());
        }
    }

}
