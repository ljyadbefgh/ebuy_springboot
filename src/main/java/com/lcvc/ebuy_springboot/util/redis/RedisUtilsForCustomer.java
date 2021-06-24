package com.lcvc.ebuy_springboot.util.redis;

import com.alibaba.fastjson.JSON;
import com.lcvc.ebuy_springboot.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.*;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

@Component
public class RedisUtilsForCustomer {
    @Autowired
    private RedisUtils redisUtils;
    @Value("${myJwt.accessTokenExpiresOfCustomer}")
    private Integer accessTokenExpiresOfCustomer;//客户登录token的有效时间，单位为分钟
    @Value("${myJwt.refreshTokenExpiresOfCustomer}")
    private Integer refreshTokenExpiresOfCustomer;//客户登录刷新token（根据刷新token重新获取token）的有效时间，单位为分钟

    private String getKey(int customerId){
        return "customer_"+customerId;
    }

    /**
     * 将客户信息存入redis中,时间与jwt加密的刷新token一致
     * @param customer
     */
    public void saveCustomerInRedis(Customer customer){
        String key=this.getKey(customer.getId());//计算出key值
        //将账户信息转化为json字符串
        //String json= JSON.toJSON(customer).toString();
        redisUtils.set(key,customer,(long)refreshTokenExpiresOfCustomer,TimeUnit.MINUTES);
    }

    /**
     * 将客户信息存入redis中
     * @param customerId
     */
    public Customer getCustomerInRedis(Integer customerId){
        String key=this.getKey(customerId);//计算出key值
        //将账户信息转化为json字符串
        return (Customer)redisUtils.get(key);
    }

    /**
     * 将客户信息从redis中移除
     * @param customerId
     */
    public void removeCustomerFromRedis(Integer customerId){
        String key=this.getKey(customerId);//计算出key值
        //将账户信息转化为json字符串
        redisUtils.remove(key);
    }
}
