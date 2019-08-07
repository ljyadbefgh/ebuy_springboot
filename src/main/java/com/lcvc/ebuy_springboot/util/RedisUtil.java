package com.lcvc.ebuy_springboot.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Repository;

import java.util.concurrent.TimeUnit;

@Repository
public class RedisUtil {

    @Autowired
    RedisTemplate<String, String> redisTemplate;

    /**
     * 添加基本数据
     * @param key
     * @param value
     */
    public void add(String key,String value) {
        redisTemplate.opsForValue().set(key, value);
    }
    public void add(String key,String value,Long time) {
        redisTemplate.opsForValue().set(key, value, time, TimeUnit.MINUTES);
    }

    public String get(String key) {
        return redisTemplate.opsForValue().get(key);
    }

    public void delete(String key) {
        redisTemplate.opsForValue().getOperations().delete(key);
    }

}