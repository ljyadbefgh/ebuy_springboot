package com.lcvc.ebuy_springboot.web.action.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

/**
 * 网上代码，用于测试redis是否配置成功
 */
@Controller
@RequestMapping("/redis")
public class TestController {
    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    @Autowired
    private RedisTemplate redisTemplate;

    @RequestMapping("/get/{key}")
    public ModelAndView getRedis(@PathVariable(name = "key") String key) {
        ModelAndView modelAndView = new ModelAndView();
        redisTemplate.opsForValue().set("directions", "123");
        modelAndView.addObject("list1", redisTemplate.opsForValue().get("directions"));
        modelAndView.addObject("list", stringRedisTemplate.opsForValue().get(key));
        modelAndView.setView(new MappingJackson2JsonView());
        return modelAndView;
    }

}