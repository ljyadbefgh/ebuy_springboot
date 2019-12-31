package com.lcvc.ebuy_springboot.junit.service;

import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.model.AdminRole;
import com.lcvc.ebuy_springboot.service.AdminRoleService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class AdminRoleServiceImplTest extends EbuySpringbootApplicationTests {

    @Autowired
    private AdminRoleService adminRoleService;

    @Test
    public void testSearchAdmins() {
        List<AdminRole> adminRoles=adminRoleService.getAllAdminRoleByAdminId(1);
        for(AdminRole adminRole:adminRoles){
            System.out.println(adminRole.getId());
            System.out.println(adminRole.getAdmin().getName());
            System.out.println(adminRole.getRole().getName());
            System.out.println(adminRole.getCreateTime());
        }
    }

    @Test
    public void testAddAllAdminRoleForAdmin() {
        adminRoleService.addAllAdminRoleForAdmin(1);
    }

    @Test
    public void testRemoveAdminRole() {
        adminRoleService.removeAdminRoles(new Integer[]{11},12);
    }
}