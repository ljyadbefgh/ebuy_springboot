package com.lcvc.ebuy_springboot.config;

import org.hibernate.validator.HibernateValidator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;


/**
 * 配置Hibernate-validator验证器
 * 说明：
 * 网上的通常都没有该配置而是直接用
 * 可以针对spring 验证框架进行统一配置
 * 1.设置校检策略为出现问题后即抛出异常（必要，否则在配置的时候很麻烦）
 * 由于默认情况下，Hibernate-validator使用的校验策略是依次校验，并且将不通过的结果保存，最后再统一抛出异常信息，
 * 但实际上，当校验出现第一个不满足情况的时候，就可以停止了(当然，如果选择全部验证完也是可以的)，所以我们手动配置一下
 */
@Configuration
public class ValidatorConfig {
    @Bean
    public Validator validator() {
        ValidatorFactory factory = Validation.byProvider(HibernateValidator.class)
                .configure()
                // 将fail_fast设置为true即可，如果想验证全部，则设置为false或者取消配置即可
                .addProperty("hibernate.validator.fail_fast", "true")
                .buildValidatorFactory();
        return factory.getValidator();
    }

}
