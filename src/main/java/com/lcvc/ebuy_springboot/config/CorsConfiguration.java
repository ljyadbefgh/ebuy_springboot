package com.lcvc.ebuy_springboot.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class CorsConfiguration implements WebMvcConfigurer {
    @Override
    public void addCorsMappings(CorsRegistry corsRegistry) {
        // 允许跨域访问资源定义： /api/ 所有资源
        corsRegistry.addMapping("/**")
                // 允许所有端口访问
                .allowedOrigins("*")
                // 只允许本地的8088端口访问
                //.allowedOrigins("http://localhost:8088", "http://127.0.0.1:8088")
                // 允许发送Cookie
                .allowCredentials(true)
                .maxAge(3600)
                // 允许所有方法
                .allowedMethods("GET", "POST", "PUT", "DELETE", "HEAD");
    }
}
