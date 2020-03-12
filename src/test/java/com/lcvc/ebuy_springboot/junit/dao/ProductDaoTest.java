package com.lcvc.ebuy_springboot.junit.dao;


import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.dao.ProductDao;
import com.lcvc.ebuy_springboot.model.Product;
import com.lcvc.ebuy_springboot.model.query.ProductQuery;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.List;

public class ProductDaoTest extends EbuySpringbootApplicationTests {
    @Resource
    private ProductDao productDao;


    @Test
    public void testGet(){
        Product product=productDao.get(3);//数据库比存在对应
        System.out.println(product);//应输出null
        product=productDao.get(72);//数据库存在对应
        System.out.println(product);//应输出对应信息
    }

    @Test
    public void testReadAll(){
        ProductQuery productQuery=new ProductQuery();
        productQuery.setOnSale(true);//前台只能访问上架的产品
        List<Product> products=productDao.readAll(productQuery);//获取所有产品信息
        System.out.println(products.size());
    }


}
