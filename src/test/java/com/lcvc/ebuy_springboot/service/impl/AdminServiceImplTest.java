package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.service.AdminService;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.List;

public class AdminServiceImplTest extends EbuySpringbootApplicationTests {

    @Resource
    private AdminService adminService;

    @Test
    public void testSearchAdmins() {
        List<Admin> admins=adminService.searchAdmins(3,10).getList();
        for(Admin admin:admins){
            System.out.println(admin.getName());
        }
    }


}