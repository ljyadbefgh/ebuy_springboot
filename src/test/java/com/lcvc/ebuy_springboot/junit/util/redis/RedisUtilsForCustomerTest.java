package com.lcvc.ebuy_springboot.junit.util.redis;

import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.service.CustomerService;
import com.lcvc.ebuy_springboot.util.redis.RedisUtils;
import com.lcvc.ebuy_springboot.util.redis.RedisUtilsForCustomer;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.concurrent.TimeUnit;

public class RedisUtilsForCustomerTest extends EbuySpringbootApplicationTests {
    @Autowired
    private RedisUtilsForCustomer redisUtilsForCustomer;
    @Autowired
    private CustomerService customerService;

    @Test
    public void test(){
        Customer customer=customerService.getCustomer(1);
        //redisUtilsForCustomer.saveCustomerInRedis(customer);
        try {
            Thread.sleep(10000l);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        customer=redisUtilsForCustomer.getCustomerInRedis(customer.getId());
        System.out.println(customer.getName());
    }


}
