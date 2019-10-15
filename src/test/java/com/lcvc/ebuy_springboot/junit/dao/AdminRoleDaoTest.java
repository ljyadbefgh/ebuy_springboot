package com.lcvc.ebuy_springboot.junit.dao;


import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.dao.AdminRoleDao;
import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.AdminRole;
import com.lcvc.ebuy_springboot.model.Role;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

public class AdminRoleDaoTest extends EbuySpringbootApplicationTests {
    @Autowired
    private AdminRoleDao adminRoleDao;



    @Test
    public void testGetAdminRoleByAdminId(){
        List<AdminRole> list=adminRoleDao.getAdminRoleByAdminId(1);
        System.out.println("总数："+list.size());
        for(AdminRole adminRole:list){
            System.out.println(adminRole.getAdmin().getName());
            System.out.println(adminRole.getRole().getName());
        }
    }

    @Test
    public void testGet(){
        AdminRole adminRole=adminRoleDao.get(1);
        System.out.println(adminRole.getId());
        System.out.println(adminRole.getAdmin().getName());
    }

    @Test
    public void testGetId(){
        System.out.println(adminRoleDao.getId(11,12));
    }

    @Test
    public void testSave(){
        AdminRole adminRole=new AdminRole();
        adminRole.setAdmin(new Admin(1));
        adminRole.setRole(new Role(2));
        System.out.println(adminRoleDao.save(adminRole));
        System.out.println(adminRole.getId());
    }

    @Test
    public void testSaves(){
        List<AdminRole> adminRoles=new ArrayList<AdminRole>();
        AdminRole adminRole=new AdminRole();
        adminRole.setAdmin(new Admin(19));
        adminRole.setRole(new Role(1));
        adminRoles.add(adminRole);
        adminRole=new AdminRole();
        adminRole.setAdmin(new Admin(19));
        adminRole.setRole(new Role(2));
        adminRoles.add(adminRole);
        adminRole=new AdminRole();
        adminRole.setAdmin(new Admin(19));
        adminRole.setRole(new Role(3));
        adminRoles.add(adminRole);
        System.out.println(adminRoleDao.saves(adminRoles));
    }

    @Test
    public void testDeleteByAdminIdAndRoleId(){
        AdminRole adminRole=new AdminRole();
        adminRoleDao.deleteByAdminIdAndRoleId(1,6);
    }


}
