package com.lcvc.ebuy_springboot.config.oauth;

import com.lcvc.ebuy_springboot.config.security.admin.AdminAuthenticationProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.ProviderManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.InMemoryTokenStore;

import java.util.Collections;

//@EnableWebSecurity //如果不希望启用spring security，这里也不应该加上
//@EnableGlobalMethodSecurity(prePostEnabled = true)//开启security注解
//@Configuration
//@Order(-2)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {


    @Autowired
    private AdminAuthenticationProvider adminAuthenticationProvider;//自定义认证方式

    //主要用于给Oauth2的AbstractAuthenticationProcessingFilter认证服务器中进行依赖注入
    @Override
    @Bean
    public AuthenticationManager authenticationManagerBean() throws Exception {
        //return super.authenticationManagerBean();
        return new ProviderManager(Collections.singletonList(adminAuthenticationProvider));//自定义验证方式
    }

    @Bean
    public TokenStore tokenStore() {
        return new InMemoryTokenStore();
    }

    /**
     * 该方法是用基于内存的方式，来保存本地的用户信息
     *
     * @param auth
     * @throws Exception
     */
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        //这是直接从内存中设置用户信息，可以测试用
    /*  auth.inMemoryAuthentication()
                .withUser("admin").password("ljy123456").roles("admin")
                .and()
                .withUser("user").password("123").roles("user");*/
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
                .antMatchers(HttpMethod.POST, "/api/backstage/ueditor")//表示不拦截ueditor的图片上传请求，因为ueditor在测试中发现在上传的时候无法传递cookie
                //.antMatchers(HttpMethod.POST, "/api/backstage/login")
                .antMatchers("/upload/**")//不拦截上传文件展示的信息
                .antMatchers( "/api/shop/**")//不拦截前端请求
                .antMatchers("/v2/api-docs", "/configuration/ui", "/swagger-resources", "/configuration/security", "/swagger-ui.html", "/webjars/**","/swagger-resources/configuration/ui","/swagge‌​r-ui.html")//swagger文档不拦截
        ;
    }


    ///HttpSecurity：一般用它来具体控制权限，角色，url等安全的东西。
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        //http.requestMatchers().antMatchers(HttpMethod.OPTIONS, "/**");//不拦截OPTIONS请求，目前已知用Ueditor上传时，因为用OPTIONS导致403跨域异常

        http
            .csrf() .disable()
                .cors()//允许跨域，注意必须配置相应的跨域过滤器
            .and().antMatcher("/oauth/**").authorizeRequests()//URL权限配置
                .antMatchers( "/oauth/**").permitAll()//不拦截Oauth2的认证请求，注意不能放在web.ignoring()里面*/

        ;


    }


}