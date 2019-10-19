package com.lcvc.ebuy_springboot.junit.dao;


import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.dao.AdminDao;
import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.query.AdminQuery;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.List;

public class AdminDaoTest  extends EbuySpringbootApplicationTests {
    @Resource
    private AdminDao adminDao;

    /**
     * 对login方法进行测试
       */
    @Test
    public void testLogin(){
        System.out.println(adminDao.login("user","123456"));
    }
    @Test
    public void testDelete(){
        System.out.println(adminDao.delete(2));
    }

    @Test
    public void testDeletes(){
        System.out.println(adminDao.deletes(new Integer[]{85,87}));
    }

    @Test
    public void testGet(){
        Admin admin=adminDao.get(3);//数据库不存在对应
        System.out.println(admin);//应输出null
        admin=adminDao.get(1);//数据库存在该数据
        System.out.println(admin);//应输出对应信息
    }

    @Test
    public void testAdd(){
        Admin admin=new Admin();
        admin.setUsername("user9");
        admin.setPassword("13");
        admin.setName("小红");
        adminDao.save(admin);
    }

    @Test
    public void testReadAll(){
        System.out.println("账户总数："+adminDao.readAll(null).size());
    }

    @Test
    public void testQuerySize(){
        AdminQuery adminQuery=new AdminQuery();
        adminQuery.setRoleId(1);
        System.out.println("账户总数："+adminDao.querySize(null));
    }

    @Test
    public void testQuery(){
        AdminQuery adminQuery=new AdminQuery();
        adminQuery.setRoleId(1);
        List<Admin> list=adminDao.query(0,10,adminQuery);
        System.out.println("账户总数："+list.size());
        for(Admin admin:list){
            System.out.println(admin.getId());

        }

    }

    @Test
    public void testCountAdminByUsername(){
        System.out.println("账户同名数量："+adminDao.countUsername("admin"));
    }

    @Test
    public void testExitsAdmin(){
        System.out.println(adminDao.countOtherUsername("liangxiu1",2));
    }
}
