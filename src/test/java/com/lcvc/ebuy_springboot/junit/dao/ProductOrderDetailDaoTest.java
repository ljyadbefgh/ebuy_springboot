package com.lcvc.ebuy_springboot.junit.dao;


import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.dao.ProductOrderDetailDao;
import com.lcvc.ebuy_springboot.model.ProductOrderDetail;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class ProductOrderDetailDaoTest extends EbuySpringbootApplicationTests {
    @Autowired
    private ProductOrderDetailDao productOrderDetailDao;


    @Test
    public void testGet(){
        ProductOrderDetail productOrderDetail = productOrderDetailDao.get(47);
        System.out.println("订单编号："+ productOrderDetail.getProductOrder().getOrderNo());
    }




}
