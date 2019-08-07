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
                // 放行哪些原始域,这里改为允许所有端口访问
                .allowedOrigins("*")
                // 只允许本地的8020端口访问
                //.allowedOrigins("http://localhost:8088", "http://127.0.0.1:8020")
                //放行哪些原始域(头部信息)
                .allowedHeaders("*")
                //放行哪些原始域(请求方式)，resful风格
                .allowedMethods("GET", "POST", "PUT", "PATCH","DELETE" )
                // 允许发送Cookie。在跨域登陆的时候可以用于登陆状态的保持
                .allowCredentials(true)
                //暴露哪些头部信息（因为跨域访问默认不能获取全部头部信息）
                .exposedHeaders("token")
                .maxAge(3600);


    }
}
