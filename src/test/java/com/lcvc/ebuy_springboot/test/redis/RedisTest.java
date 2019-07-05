package com.lcvc.ebuy_springboot.test.redis;

import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.model.Admin;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;

/**
 * 学习REdisTemplate的基本操作
 * @author ljy
 *
 * RedisTemplate中定义了对5种数据结构操作：

redisTemplate.opsForValue() ：操作字符串
redisTemplate.opsForHash() ：操作hash
redisTemplate.opsForList() ：操作list
redisTemplate.opsForSet() ：操作set
redisTemplate.opsForZSet() ：操作有序set
 */
public class RedisTest extends EbuySpringbootApplicationTests {
    @Autowired
    private RedisTemplate redisTemplate;

    @Test
    public void opsForValueTest1(){
        ValueOperations valueOperations=redisTemplate.opsForValue();//redisTemplate.opsForValue() ：操作字符串
        valueOperations.set("name1","张三");//添加基本类型数据
        valueOperations.set("name2","李四");
        Admin admin=new Admin();
        admin.setId(3);
        admin.setName("管理员");
        valueOperations.set("admin1",admin);//添加对象
        System.out.println(valueOperations.get("name1"));
        System.out.println(valueOperations.get("name2"));
        System.out.println(((Admin)valueOperations.get("admin1")).getName());
        valueOperations.getOperations().delete("name1");//删除key值
        System.out.println(valueOperations.get("name1"));
    }
}
