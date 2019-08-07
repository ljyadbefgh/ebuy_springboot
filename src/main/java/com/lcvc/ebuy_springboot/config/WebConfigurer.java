package com.lcvc.ebuy_springboot.config;

import com.lcvc.ebuy_springboot.web.filter.LoginForAdminInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfigurer implements WebMvcConfigurer {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //管理账户登陆的拦截器
        registry.addInterceptor(new LoginForAdminInterceptor())
                .addPathPatterns("/backstage/*")
                .excludePathPatterns("backstage/login");
    }
}
