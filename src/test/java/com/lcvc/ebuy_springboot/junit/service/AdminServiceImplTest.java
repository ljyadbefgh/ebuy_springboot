package com.lcvc.ebuy_springboot.junit.service;

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
        List<Admin> admins=adminService.searchAdmins(3,10,null).getList();
        for(Admin admin:admins){
            System.out.println(admin.getName());
        }
    }

    @Test
    public void testUpdateAdmin() {
        Admin admin=new Admin();
        admin.setId(1);
        admin.setPassword("12312fdafdadfasfdasfdf");
        adminService.updateAdmin(admin);
    }


}