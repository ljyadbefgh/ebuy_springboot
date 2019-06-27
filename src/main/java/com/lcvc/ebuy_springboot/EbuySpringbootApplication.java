package com.lcvc.ebuy_springboot;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableTransactionManagement // 如果mybatis中service实现类中加入事务注解，需要此处添加该注解。开启注解事务管理，等同于xml配置方式的 <tx:annotation-driven>
@MapperScan("com.lcvc.ebuy_springboot.dao")//与dao层的接口@Mapper二选一写上即可(主要作用是扫包)，扫描的是mapper.xml中namespace指向值的包位置
public class EbuySpringbootApplication {

	public static void main(String[] args) {
		SpringApplication.run(EbuySpringbootApplication.class, args);
	}

}
