package com.lcvc.ebuy_springboot.junit.dao;


import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.dao.ProductOrderDao;
import com.lcvc.ebuy_springboot.model.ProductOrderDetail;
import com.lcvc.ebuy_springboot.model.ProductOrder;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class ProductOrderDaoTest extends EbuySpringbootApplicationTests {
    @Autowired
    private ProductOrderDao productOrderDao;


    @Test
    public void testGet(){
        ProductOrder productOrder = productOrderDao.get("077dc8e1365045cc8fa386ba1d33a2e9");
        System.out.println("订单编号："+ productOrder.getOrderNo());
        System.out.println("客户名："+ productOrder.getCustomer().getName());
        for(ProductOrderDetail productOrderDetail : productOrder.getProductOrderDetails()){
            System.out.print(productOrderDetail.getProductOrder().getOrderNo()+"\t");
            System.out.print(productOrderDetail.getProduct().getName()+"\t");
            System.out.print(productOrderDetail.getOriginalPrice()+"\t");
            System.out.print(productOrderDetail.getPrice()+"\t");
            System.out.println(productOrderDetail.getProductNumber());
        }
    }

    @Test
    public void testQuery(){
        List<ProductOrder> productOrderList = productOrderDao.query(0,10,null);
        for(ProductOrder productOrder : productOrderList){
            System.out.println("订单编号："+ productOrder.getOrderNo());
            System.out.println("客户名："+ productOrder.getCustomer().getName());
            for(ProductOrderDetail productOrderDetail : productOrder.getProductOrderDetails()){
                //System.out.print(orderDetail.getOrders().getOrderNo()+"\t");
                System.out.print(productOrderDetail.getProduct().getName()+"\t");
                System.out.print(productOrderDetail.getOriginalPrice()+"\t");
                System.out.print(productOrderDetail.getPrice()+"\t");
                System.out.println(productOrderDetail.getProductNumber());
            }
        }
    }


}
