package com.lcvc.ebuy_springboot.config;

import com.lcvc.ebuy_springboot.web.filter.LoginForAdminInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.LinkedList;

@Configuration
public class WebConfigurer implements WebMvcConfigurer {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //管理账户登陆的拦截器
       registry.addInterceptor(new LoginForAdminInterceptor())
                .addPathPatterns("/api/backstage/*")//要拦截的路径
                .excludePathPatterns(new LinkedList<String>(){{//不拦截的路径（一般指addPathPatterns中包含，但是不进行拦截的特例）
                    add("/api/backstage/login");
                    add("/api/backstage/logout");
                }});
    }
}
