package com.lcvc.ebuy_springboot.junit.util.jwt;

import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.dao.AdminDao;
import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.Product;
import com.lcvc.ebuy_springboot.model.ProductType;
import com.lcvc.ebuy_springboot.service.CustomerService;
import com.lcvc.ebuy_springboot.util.MyBeanUtils;
import com.lcvc.ebuy_springboot.util.jwt.JwtUtilsForCustomer;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;
import java.lang.reflect.InvocationTargetException;
import java.time.LocalDateTime;

public class JwtUtilsForCustomerTest extends EbuySpringbootApplicationTests {
    @Autowired
    private JwtUtilsForCustomer jwtUtilsForCustomer;
    @Autowired
    private CustomerService customerService;

    @Test
    public void test1(){
        Customer customer=customerService.getCustomer("ljy");
        String accressCustomerToken=jwtUtilsForCustomer.createAccressCustomerToken(customer);
        System.out.println(accressCustomerToken);
    }

    @Test
    public void test2(){
        String token="eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxIiwibmFtZSI6Iua1i-ivlei0puWPtyIsImV4cCI6MTYyNDQxMDMyNCwiaWF0IjoxNjI0NDEwMTQ0LCJ1c2VybmFtZSI6ImxqeSJ9.7318GWqw_3IN7mv2ofLMnLNnLgeg3CHTFuCQrDNAP1s";
        //验证token是否合法
        Customer customer=customerService.getCustomer("ljy");
        try {
            jwtUtilsForCustomer.verifyCustomerToken(token,customer.getId());
        } catch (Exception e) {
            e.printStackTrace();
        }
        // 获取 token 中的客户id
        String customerId= jwtUtilsForCustomer.getAudience(token);
        System.out.println(customerId);
    }
}
