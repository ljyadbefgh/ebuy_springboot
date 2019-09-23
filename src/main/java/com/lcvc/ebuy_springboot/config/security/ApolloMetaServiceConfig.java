package com.lcvc.ebuy_springboot.config.security;

/**
 * 说明：
 * 1。触发原因：
 * 由于采用spring security后，客户端通过http://localhost:8080//app=xx来请求config service接口时就会被spring security默认的
 * HttpFirewall实例StrictHttpFirewall给拒绝掉，根本原因也就是客户端配置dev_meta时尾巴带了/后缀了，而有的客户端没有加尾巴没加/
 * 2.解决方案
 * （1）规范客户端config service url的连接配置
 * 这里标准化的URL必须符合以下条件 :
 * 指定路径中，必须不能包含以下字符串序列之一 :
 * ["//","./","/…/","/."]
 * （2）本项目采用（如果客户端无法控制，或是已经完成了较大工作量的开发）：
 * 使用用DefaultHttpFirewall替换默认的StrictHttpFirewall，这样改了后就可以兼容/和//，
 *
 */
//@EnableAutoConfiguration

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.web.firewall.DefaultHttpFirewall;
import org.springframework.security.web.firewall.HttpFirewall;

@Configuration
@ComponentScan(basePackageClasses = ApolloMetaServiceConfig.class)//basePackageClasses可以指定多个类或接口的class,扫描时会 在这些指定的类和接口所属的包进行扫面
public class ApolloMetaServiceConfig {
    /**
     *  用于支持url中带// 这种请求
     * @return
     */
   @Bean
    public HttpFirewall allowUrlEncodedSlashHttpFirewall() {
        return new DefaultHttpFirewall();
    }
}