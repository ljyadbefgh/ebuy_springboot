package com.lcvc.ebuy_springboot;

import lombok.extern.slf4j.Slf4j;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.security.auth.login.Configuration;

//说明：exclude = {SecurityAutoConfiguration.class}表示关闭spring security验证，即让其无效
//@SpringBootApplication(exclude = {SecurityAutoConfiguration.class})
@Slf4j
@SpringBootApplication
@EnableScheduling //开启基于注解的定时任务支持
@EnableTransactionManagement // 如果mybatis中service实现类中加入事务注解，需要此处添加该注解。开启注解事务管理，等同于xml配置方式的 <tx:annotation-driven>
@MapperScan("com.lcvc.ebuy_springboot.dao")//与dao层的接口@Mapper二选一写上即可(主要作用是扫包)，扫描的是mapper.xml中namespace指向值的包位置
public class EbuySpringbootApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(EbuySpringbootApplication.class, args);
		//下述为测试:了解spring boot在启动时初始化的javabean
		/*ConfigurableApplicationContext context=SpringApplication.run(EbuySpringbootApplication.class, args);
		String[] beanNames= context.getBeanDefinitionNames();//获取Spring 容器中所有 JavaBean 的名称
		for(String beanName:beanNames){
			System.out.println(beanName);
		}*/
	}
}
