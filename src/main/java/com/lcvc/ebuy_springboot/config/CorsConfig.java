package com.lcvc.ebuy_springboot.config;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * 对跨域进行处理，但是该跨域方式对spring mvc的拦截器无效（即在spring mvc拦截器中如果用outprint返回Json等类型信息时会出现跨域异常，当然如果不返回信息到客户端就不会出错）
 * 因此如果配置拦截器，还需要增加filter过滤器进行处理
 */
@Configuration//@Configuration 代表是一个 Java 配置文件 ， Spring会根据它来生成 IoC 容器去装配 Bean
public class CorsConfig implements WebMvcConfigurer {
    /**
     * 说明：addCorsMappings允许跨域，简单访问没问题，如果用户没登录被 filter 拦截的话，返回信息得不到，显示跨域失败，
     * 原因是 filter 直接拦截的执行在前，允许跨域执行在后，
     * 需要添加FilterRegistrationBean后解决问题，注意FilterRegistrationBean需要设置成在最前面执行。
     */
    @Override
    public void addCorsMappings(CorsRegistry corsRegistry) {
        // 允许跨域访问资源定义： /api/ 所有资源
        corsRegistry.addMapping("/api/**")
                // 放行哪些原始域,这里改为允许所有端口访问
                .allowedOrigins("*")
                // 只允许本地的8020端口访问
                //.allowedOrigins("http://localhost:8088", "http://127.0.0.1:8020")
                //放行哪些原始域(头部信息)
                .allowedHeaders("accept","content-type","application/json")
                //放行哪些原始域(请求方式)，resful风格
                .allowedMethods("GET", "POST", "PUT", "PATCH","DELETE")
                // 允许发送Cookie。在跨域登陆的时候可以用于登陆状态的保持
                .allowCredentials(true)
                //暴露哪些头部信息（因为跨域访问默认不能获取全部头部信息）
                .exposedHeaders("token")
                .maxAge(3600);
    }

    //此处解决上面addCorsMappings无法覆盖拦截器跨域的问题
    @Bean
    public FilterRegistrationBean corsFilter() {
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        CorsConfiguration config = new CorsConfiguration ();
        config.setAllowCredentials(true); // 允许cookies跨域
        config.addAllowedOrigin("*");//用于提供给学生访问测试，如果是正式应用中这里尽量限制来源域，如http://127.0.0.1:8020，降低安全风险
        //addAllowedHeader,允许访问的头信息,*表示全部
        config.addAllowedHeader("accept");
        config.addAllowedHeader("content-type");
        config.addAllowedHeader("application/json");
        // 允许的方法 例如GET POST PUT DELETE，只要放行用过的
        config.addAllowedMethod("GET");
        config.addAllowedMethod("PUT");
        config.addAllowedMethod("POST");
        config.addAllowedMethod("DELETE");
        config.addAllowedMethod("PATCH");
        source.registerCorsConfiguration("/api/**", config);
        FilterRegistrationBean bean = new FilterRegistrationBean(new CorsFilter(source));//CorsFilter是spring提供的cors过滤器，此处注册Filter过滤器，替代web.xml的过滤器配置
        bean.setOrder(Integer.MIN_VALUE);//设置成优先级最高
        return bean;
    }
}
