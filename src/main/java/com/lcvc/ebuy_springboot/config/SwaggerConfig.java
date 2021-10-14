package com.lcvc.ebuy_springboot.config;

import com.github.xiaoymin.knife4j.spring.annotations.EnableKnife4j;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import springfox.documentation.swagger2.annotations.EnableSwagger2WebFlux;
import springfox.documentation.swagger2.annotations.EnableSwagger2WebMvc;

/**
 * Swagger配置
 * 1.swagger2ui原版配置后，可以通过诸如下述方式访问：http://127.0.0.1:8081/swagger-ui.html
 * 2.knife4j（swagger2ui扩展版）配置后，可以通过诸如下述方式访问：http://127.0.0.1:8081/doc.html
 */
@Configuration
@EnableSwagger2WebMvc//knife4j配置
//swagger2ui原版配置
//@EnableSwagger2
public class SwaggerConfig {
    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                //.protocols(Sets.newHashSet("http")) //协议，http或https
                .apiInfo(apiInfo())
                .ignoredParameterTypes(ModelMap.class, HttpServletRequest.class, HttpServletResponse.class, HttpSession.class,BindingResult.class)//忽略这些类型的注释
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.lcvc.ebuy_springboot.web.action")) //自动在这个路径下扫描定义的api
                .paths(PathSelectors.any())
                .build();
    }

    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("订餐系统API文档")
                .version("1.0")
                .description("用于订餐系统的接口描述")
                .contact(new Contact("ljy", "无", "89287689@qq.com"))//作者信息
                .build();
    }
}
