package com.lcvc.ebuy_springboot.config.oauth;

import com.lcvc.ebuy_springboot.config.security.admin.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.ProviderManager;
import org.springframework.security.config.annotation.ObjectPostProcessor;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.ResourceServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.web.access.intercept.FilterSecurityInterceptor;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.header.writers.frameoptions.XFrameOptionsHeaderWriter;

import java.util.Collections;

/**
 * 资源服务器
 *
 */
//@Configuration
//@EnableResourceServer
//@Order(-1)
public class AdminResourceServerConfig extends ResourceServerConfigurerAdapter {
    @Autowired
    private TokenStore tokenStore;

    @Autowired
    private AdminAuthenticationProvider adminAuthenticationProvider;//自定义认证方式

    @Autowired
    private AdminAuthenticationSuccessHandler adminAuthenticationSuccessHandler;//自定义成功验证

    @Autowired
    private AdminAuthenticationFailureHandler adminAuthenticationFailureHandler;//自定义失败验证

    @Autowired
    private AdminLogoutHandler adminLogoutHandler;//自定义注销成功验证

    @Autowired
    private AdminAuthenticationEntryPoint adminAuthenticationEntryPoint;//自定义后台匿名用户访问无权限资源时的异常

    @Autowired
    private AdminAccessDeniedHandler adminAccessDeniedHandler;//自定义权限不足异常

    @Autowired
    private AdminFilterInvocationSecurityMetadataSource adminFilterInvocationSecurityMetadataSource;//自定义权限资源验证规则

    @Autowired
    private AdminAccessDecisionManager adminAccessDecisionManager;//自定义权限决策规则

    @Override
    public void configure(ResourceServerSecurityConfigurer resources) throws Exception {
        resources.tokenStore(this.tokenStore);
       /* resources.resourceId("ljy")//设置资源id与授权服务器中的资源id一致
                .stateless(true)//设置这些资源仅基于令牌认证
                ;*/
    }

    ///HttpSecurity：一般用它来具体控制权限，角色，url等安全的东西。
   @Override
    public void configure(HttpSecurity http) throws Exception {
       http
                .csrf() .disable()
                .cors()//允许跨域，注意必须配置相应的跨域过滤器
            .and().headers()
                .addHeaderWriter(new XFrameOptionsHeaderWriter(XFrameOptionsHeaderWriter.XFrameOptionsMode.SAMEORIGIN))//表示该页面可以在相同域名页面的 frame 中展示,因为Ueditor兼容性问题，所以必须加上
                .frameOptions().disable()
                .frameOptions().sameOrigin()//设置可以iframe访问;
            .and().sessionManagement() // session 无状态 不使用 基于token访问
               .sessionCreationPolicy(SessionCreationPolicy.STATELESS)
            .and().authorizeRequests()//URL权限配置
                //.antMatchers("/upload/**").permitAll()//不拦截上传文件展示的信息
                //.requestMatchers(CorsUtils::isPreFlightRequest).permitAll()//对PreflightRequest不做拦截。因为Preflight不携带Cookie，即不携带JSESSIONID，因此Spring Security拦截器会认为你没有登录。
            .and().authorizeRequests()//URL权限配置
                .anyRequest().authenticated()//anyRequest()表示其余请求，都需要进行认证（登陆）才能访问
                .withObjectPostProcessor(new ObjectPostProcessor<FilterSecurityInterceptor>() {//自定义权限验证
                    @Override
                    public <O extends FilterSecurityInterceptor> O postProcess(O object) {
                        object.setSecurityMetadataSource(adminFilterInvocationSecurityMetadataSource);//自定义权限资源验证规则
                        object.setAccessDecisionManager(adminAccessDecisionManager);//自定义决策资源验证规则
                        return object;
                    }
                })
                // 在 UsernamePasswordAuthenticationFilter 前添加 adminAuthenticationFilter
                // 在 addFilterAt表示 相同位置添加 filter， 此 filter 不覆盖另一个filter
            .and().addFilterAt(adminAuthenticationFilter(), UsernamePasswordAuthenticationFilter.class).authorizeRequests()//添加自定义登陆接口
                //.and().formLogin()//登陆认证设定
                //.loginPage("/api/backstage/login")//服务端的登陆页面地址。因为已经前后端分离，故这里不进行设置
                //.loginProcessingUrl("/api/backstage/login")//服务端执行登陆验证的地址（如果配置了相应的控制器地址可以采用）。因为已经前后端分离，故这里不进行设置
                //.usernameParameter("username").passwordParameter("password")//自定义服务端认证器中接收前台的账户名参数名称和密码参数名称。因为已经自定义过滤器处理，故这里不进行设置
                //.loginProcessingUrl("/api/backstage/login").permitAll()
                //.successHandler(adminAuthenticationSuccessHandler)//验证成功后进行调用的处理器。因为已经自定义过滤器处理，故这里不进行设置
                //.failureHandler(adminAuthenticationFailureHandler)//验证失败后进行调用的处理器。因为已经自定义过滤器处理，故这里不进行设置
            .and().logout()//注销操作设置-初始化
                .logoutUrl("/api/backstage/logout")//设置服务器端执行注销请求的地址（非controller地址），设定后前端可以直接以该地址执行注销请求
                .addLogoutHandler(adminLogoutHandler)//设定注销时的执行动作
                .logoutSuccessHandler(adminLogoutHandler)//设置注销成功后的执行动作
                .invalidateHttpSession(true)//清空session,如果是false表示不清空
            .and().exceptionHandling()//自定义异常处理设置-初始化。因为采用前后端分离，故全部重新定义返回json
                .authenticationEntryPoint(adminAuthenticationEntryPoint)//自定义匿名用户访问无权限资源时的异常处理
                .accessDeniedHandler(adminAccessDeniedHandler)//自定义权限不足异常处理
        ;
    }




    /**
     * 自定义处理登陆请求的Filter：如果要修改登陆地址或验证规则，必须自定义
     */
    @Bean
    AdminAuthenticationProcessingFilter adminAuthenticationFilter() {
        AdminAuthenticationProcessingFilter adminAuthenticationProcessingFilter = new AdminAuthenticationProcessingFilter();
        ProviderManager providerManager = new ProviderManager(Collections.singletonList(adminAuthenticationProvider));//自定义认证方式
        adminAuthenticationProcessingFilter.setAuthenticationManager(providerManager);//自定义认证方式
        adminAuthenticationProcessingFilter.setAuthenticationSuccessHandler(adminAuthenticationSuccessHandler);//自定义认证成功后的处理方式
        adminAuthenticationProcessingFilter.setAuthenticationFailureHandler(adminAuthenticationFailureHandler);//自定义认证失败后的处理方式
        return adminAuthenticationProcessingFilter;
    }

}
