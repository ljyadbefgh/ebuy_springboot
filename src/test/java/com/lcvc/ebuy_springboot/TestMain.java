package com.lcvc.ebuy_springboot;

import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.Product;
import com.lcvc.ebuy_springboot.model.ProductType;
import com.lcvc.ebuy_springboot.util.MyBeanUtils;
import org.junit.Test;

import java.lang.reflect.InvocationTargetException;

public class TestMain {
    @Test
    public void test1(){
        String s="3.5";
        Integer.parseInt(s);
    }

    @Test
    public void test2(){
        Admin admin=new Admin(1);
        admin.setName("张三");
        Customer customer=new Customer();
        MyBeanUtils.copyProperties(admin,customer);
        System.out.println(customer.getId());
        System.out.println(customer.getName());
    }

    @Test
    public void test3() throws IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        Product product1=new Product(1);
        product1.setName("冰花");
        product1.setProductType(new ProductType(10));
        Product product2=new Product(1);
        MyBeanUtils.copyProperties(product1,product2);
        System.out.println(product2.getId());
        System.out.println(product2.getName());
        System.out.println(product2.getProductType().getId());
    }
}
