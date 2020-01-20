package com.lcvc.ebuy_springboot.junit.dao;


import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.dao.AdminMenuDao;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class AdminMenuDaoTest extends EbuySpringbootApplicationTests {
    @Autowired
    private AdminMenuDao adminMenuDao;

    @Test
    public void testGetRolesByPurviewId(){
        Integer[] array=adminMenuDao.getMenuIdsByAdminId(-99,true,true);
        System.out.println("总数："+array.length);
        for(int id:array){
            System.out.println(id);
        }
    }

}
