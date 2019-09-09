package com.lcvc.ebuy_springboot.config;

import com.lcvc.ebuy_springboot.EbuySpringbootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

/**
 * 特别说明：
 * 继承SpringBootServletInitializer可以使用外部tomcat,否则不能使用
 * 该配置仅仅是为了打包war才需要，如果不打包为war则不需要配置
 *
 */
public class WarInitializer extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        //此处的Application.class为带有@SpringBootApplication注解的启动类
        return builder.sources(EbuySpringbootApplication.class);
    }

}