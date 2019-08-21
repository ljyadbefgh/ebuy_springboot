package com.lcvc.ebuy_springboot.junit.dao;


import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.dao.ProductTypeDao;
import com.lcvc.ebuy_springboot.model.ProductType;
import org.junit.Test;

import javax.annotation.Resource;

public class ProductTypeDaoTest extends EbuySpringbootApplicationTests {
    @Resource
    private ProductTypeDao productTypeDao;


    @Test
    public void testDeletes(){
        System.out.println(productTypeDao.deletes(new Integer[]{85,87}));
    }

    @Test
    public void testGet(){
        ProductType productType=productTypeDao.get(3);//数据库不存在对应
        System.out.println(productType);//应输出null
        productType=productTypeDao.get(4);//数据库不存在对应
        System.out.println(productType);//应输出对应信息
    }

    @Test
    public void testReadAll(){
        System.out.println("账户总数："+productTypeDao.readAll().size());
    }

    @Test
    public void testTotal(){
        System.out.println("账户总数："+productTypeDao.total());
    }


}
