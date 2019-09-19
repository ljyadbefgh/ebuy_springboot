package com.lcvc.ebuy_springboot.config.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

//@EnableGlobalMethodSecurity(prePostEnabled = true)//这是开启全局的安全认证在方法请求之前
@Configuration
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    //密码加密方式
    @Bean
    PasswordEncoder passwordEncoder() {
        return NoOpPasswordEncoder.getInstance();
    }

    /**
     * 该方法是用基于内存的方式，来保存本地的用户信息
     *
     * @param auth
     * @throws Exception
     */
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        //这是直接从内存中取用户信息
        auth.inMemoryAuthentication()
                .withUser("admin").password("123456").roles("ADMIN")
                .and()
                .withUser("user").password("123").roles("USER");
        /**
         * 这是直接从数据库中查询用户数据
         */
        //auth.userDetailsService(userService).passwordEncoder();
    }


    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/").permitAll();
        http.csrf().disable();
                /*.antMatchers("/api/backstage/**")
                .hasRole("ADMIN")
                .antMatchers("/api/**")
                .hasRole("USER");*/
    }
}