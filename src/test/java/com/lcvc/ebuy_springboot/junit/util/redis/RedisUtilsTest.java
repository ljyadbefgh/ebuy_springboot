package com.lcvc.ebuy_springboot.junit.util.redis;

import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.util.redis.RedisUtils;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.concurrent.TimeUnit;

public class RedisUtilsTest extends EbuySpringbootApplicationTests {
    @Autowired
    private RedisUtils redisUtils;

    @Test
    public void test(){
        System.out.println(redisUtils.exists("age"));
        redisUtils.set("name","adfad");
        System.out.println(redisUtils.get("name"));
    }

    @Test
    public void testSet(){
        redisUtils.add("customer","a","b","c","d");
    }

    @Test
    public void testGetExpire() throws Exception{
        redisUtils.set("test1","1分钟",60l, TimeUnit.SECONDS);//测试60秒后过期
        Thread.sleep(5l);
        long ex=redisUtils.getExpire("test1");//获取该key的剩余时间,剩余时间是原来设定的时间，即60秒
        System.out.println(ex);
    }
}
