package com.lcvc.ebuy_springboot.junit.dao;


import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.dao.CustomerDao;
import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.query.CustomerQuery;
import org.junit.Test;

import javax.annotation.Resource;

public class CustomerDaoTest extends EbuySpringbootApplicationTests {
    @Resource
    private CustomerDao customerDao;


    @Test
    public void testDeletes(){
        System.out.println(customerDao.deletes(new Integer[]{85,87}));
    }

    @Test
    public void testGet(){
        Customer customer=customerDao.get(3);//数据库不存在对应
        System.out.println(customer);//应输出null
        customer=customerDao.get(3);//数据库不存在对应
        System.out.println(customer);//应输出对应信息
    }

    @Test
    public void testReadAll(){
        System.out.println("账户总数："+customerDao.readAll(null).size());
    }

    @Test
    public void testTotal(){
        System.out.println("账户总数："+customerDao.total());
    }

    @Test
    public void testQuerySize(){
        CustomerQuery customerQuery=new CustomerQuery();
        //customerQuery.setUsername("x");
        customerQuery.setSex(1);
        System.out.println("账户总数："+customerDao.querySize(customerQuery));
    }

    @Test
    public void testQuery(){
        CustomerQuery customerQuery=new CustomerQuery();
        //customerQuery.setUsername("x");
        customerQuery.setSex(1);
        System.out.println("账户总数："+customerDao.query(0,3,customerQuery).size());
    }

}
