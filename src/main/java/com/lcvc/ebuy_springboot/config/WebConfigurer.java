package com.lcvc.ebuy_springboot.config;

import com.lcvc.ebuy_springboot.web.interceptor.LoginForAdminInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * 拦截器配置
 */
@Configuration
public class WebConfigurer implements WebMvcConfigurer {

//    @Override
//    public void addResourceHandlers(ResourceHandlerRegistry registry) {
//        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
//    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //管理账户登陆的拦截器
     /*  registry.addInterceptor(lginForAdminInterceptor())
                .addPathPatterns("/api/backstage/**")//要拦截的路径
                .excludePathPatterns(new LinkedList<String>(){{//不拦截的路径（一般指addPathPatterns中包含，但是不进行拦截的特例）
                    add("/api/backstage/login");
                    add("/api/backstage/logout");
                }});*/
    }

    //创建拦截器对象，只有通过这里才能让拦截器中的依赖注入生效
    //后台登陆拦截器
    @Bean
    public LoginForAdminInterceptor lginForAdminInterceptor() {
        return new LoginForAdminInterceptor();
    }
}
