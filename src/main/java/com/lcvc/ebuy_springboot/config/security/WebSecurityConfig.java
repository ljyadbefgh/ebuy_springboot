package com.lcvc.ebuy_springboot.config.security;

import com.lcvc.ebuy_springboot.config.security.admin.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.ProviderManager;
import org.springframework.security.config.annotation.ObjectPostProcessor;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.web.access.intercept.FilterSecurityInterceptor;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.header.writers.frameoptions.XFrameOptionsHeaderWriter;

import java.util.Collections;

@EnableWebSecurity //如果不希望启用spring security，这里也不应该加上
@EnableGlobalMethodSecurity(prePostEnabled = true)//开启security注解
@Configuration
//@Order(-2)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {


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

    @Autowired
    private SessionRegistry sessionRegistry;//必须首先用@Bean注入，再在这里调用

    //主要用于给Oauth2的AbstractAuthenticationProcessingFilter认证服务器中进行依赖注入
   /* @Override
    @Bean
    public AuthenticationManager authenticationManagerBean() throws Exception {
        //return super.authenticationManagerBean();
        return new ProviderManager(Collections.singletonList(adminAuthenticationProvider));//自定义验证方式
    }*/

    /**
     * 该方法是用基于内存的方式，来保存本地的用户信息
     *
     * @param auth
     * @throws Exception
     */
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        //这是直接从内存中设置用户信息，可以测试用
       /* auth.inMemoryAuthentication()
                .withUser("admin").password("123456").roles("ADMIN")
                .and()
                .withUser("user").password("123").roles("USER");*/
        //配置认证方式,从数据库查找
        //auth.userDetailsService(adminService);
        //auth.authenticationProvider(adminAuthenticationProvider);//自定义验证方式
    }

    /**
     * Web层面的配置，一般用来配置无需权限校验的路径，也可以在HttpSecurity中配置，但是在web.ignoring()中配置效率更高。
     * web.ignoring()是一个忽略的过滤器，而HttpSecurity中定义了一个过滤器链，即使permitAll()放行还是会走所有的过滤器，
     * 直到最后一个过滤器FilterSecurityInterceptor认定是可以放行的，才能访问。
     */
    @Override
    public void configure(WebSecurity web){
        web.ignoring()
                //因为ueditor每次调用上传组件前会先访问服务端配置，如果访问不了服务端配置无法调用相关组件，所以这里只要拦截了服务端配置就可以（暂行办法）
                //.antMatchers(HttpMethod.POST, "/api/backstage/ueditor")//表示不拦截ueditor的图片上传请求，因为ueditor在测试中发现在上传的时候无法传递cookie
                //.antMatchers(HttpMethod.POST, "/api/backstage/login")
                .antMatchers("/vueclient/**")///不拦截vue版本的后台管理界面（当在本项目内运行时，用于测试）
                .antMatchers("/client/**")///不拦截jquery版本的后台管理界面（当在本项目内运行时，用于测试）
                .antMatchers("/upload/**")//不拦截上传文件展示的信息
                .antMatchers("/api/backstage/sessionId")//不拦截登录信息的cookied
                .antMatchers( "/api/shop/**")//不拦截前端请求
                .antMatchers("/v2/api-docs", "/configuration/ui", "/swagger-resources", "/configuration/security", "/swagger-ui.html", "/webjars/**","/swagger-resources/configuration/ui","/swagge‌​r-ui.html")//swagger文档不拦截
                .antMatchers( "/oauth/**")
        ;
    }


    ///HttpSecurity：一般用它来具体控制权限，角色，url等安全的东西。
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        //http.requestMatchers().antMatchers(HttpMethod.OPTIONS, "/**");//不拦截OPTIONS请求，目前已知用Ueditor上传时，因为用OPTIONS导致403跨域异常

        http
            .csrf() .disable()
                .cors()//允许跨域，注意必须配置相应的跨域过滤器
            .and().headers()
                .addHeaderWriter(new XFrameOptionsHeaderWriter(XFrameOptionsHeaderWriter.XFrameOptionsMode.SAMEORIGIN))//表示该页面可以在相同域名页面的 frame 中展示,因为Ueditor兼容性问题，所以必须加上
                .frameOptions().disable()
                .frameOptions().sameOrigin()//设置可以iframe访问;
            .and().authorizeRequests()//URL权限配置
                .antMatchers( "/oauth/**").permitAll()//不拦截Oauth2的认证请求，注意不能放在web.ignoring()里面
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

    /**
     *  获取spring security的session管理器，注意该管理器为只读。
     *  可以用于在线用户统计、在线用户删除等
     */
    @Bean
    public SessionRegistry getSessionRegistry(){
        SessionRegistry sessionRegistry=new SessionRegistryImpl();
        return sessionRegistry;
    }
}