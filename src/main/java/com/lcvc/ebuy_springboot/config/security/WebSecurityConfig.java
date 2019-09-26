package com.lcvc.ebuy_springboot.config.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.header.writers.frameoptions.XFrameOptionsHeaderWriter;

@EnableWebSecurity //如果不希望启用spring security，这里也不应该加上
@EnableGlobalMethodSecurity(prePostEnabled = true)//开启security注解
@Configuration
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Bean
    @Override
    protected AuthenticationManager authenticationManager() throws Exception {
        return super.authenticationManager();
    }

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

   /* public XFrameOptionsHeaderWriter(XFrameOptionsHeaderWriter.XFrameOptionsMode frameOptionsMode) {
        Assert.notNull(frameOptionsMode, "frameOptionsMode cannot be null");
        *//*如果设置为允许，spring抛出异常，要使用FrameOptionsHeaderWriter*//*
        if (XFrameOptionsHeaderWriter.XFrameOptionsMode.ALLOW_FROM.equals(frameOptionsMode)) {
            throw new IllegalArgumentException(
                    "ALLOW_FROM requires an AllowFromStrategy. Please use FrameOptionsHeaderWriter(AllowFromStrategy allowFromStrategy) instead");
        }
        this.frameOptionsMode = frameOptionsMode;
        this.allowFromStrategy = null;
    }
*/

    @Override
    protected void configure(HttpSecurity http) throws Exception {
//        http
//                .cors()
//                .and()
//                .csrf().disable()
//                .authorizeRequests()
//                .requestMatchers(CorsUtils::isPreFlightRequest).permitAll()
//                .authorizeRequests()
//                .antMatchers("/**").permitAll()
//                .anyRequest().authenticated()
//                .and()
//                .headers()
//                //表示该页面可以在相同域名页面的 frame 中展示,因为Ueditor兼容性问题，所以必须加上
//                .addHeaderWriter(new XFrameOptionsHeaderWriter(XFrameOptionsHeaderWriter.XFrameOptionsMode.SAMEORIGIN ))
               // ;
        http.headers()
                .addHeaderWriter(new XFrameOptionsHeaderWriter(XFrameOptionsHeaderWriter.XFrameOptionsMode.SAMEORIGIN))
                .frameOptions().disable();
        http.csrf().disable();
        http.authorizeRequests()
                .antMatchers("/**").permitAll();//配置不需要登录验证
        http.headers().frameOptions().sameOrigin();//设置可以iframe访问



                /*.antMatchers("/api/backstage/**")
                .hasRole("ADMIN")
                .antMatchers("/api/**")
                .hasRole("USER");*/
    }
}