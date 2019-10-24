package com.lcvc.ebuy_springboot.config.oauth;

import com.lcvc.ebuy_springboot.config.security.admin.AdminPasswordEncoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.token.store.redis.RedisTokenStore;

/**
 * 授权服务器配置
 * 负责提供令牌
 * 授权服务器负责验证用户标识并提供令牌
 */
//@Configuration
//@EnableAuthorizationServer //启用授权服务器配置
public class AdminAuthorizationServerConfig extends AuthorizationServerConfigurerAdapter {
    @Autowired
    private AuthenticationManager authenticationManager;
    @Autowired
    private RedisConnectionFactory redisConnectionFactory;
    //密码加密解密
    @Autowired
    private AdminPasswordEncoder adminPasswordEncoder;


    /*@Bean
    PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }*/

    /**
     * 配置授权服务器的安全，意味着实际上是/oauth/token端点。
     * /oauth/authorize端点也应该是安全的
     * 默认的设置覆盖到了绝大多数需求，所以一般情况下不需要做任何事情。
     */
    @Override
    public void configure(AuthorizationServerSecurityConfigurer security) throws Exception {
        //super.configure(security);
        //允许表单认证
        security.allowFormAuthenticationForClients() //主要是让/oauth/token支持client_id以及client_secret作登录认证
                .tokenKeyAccess("permitAll()")
                .checkTokenAccess("isAuthenticated()")
                .passwordEncoder(adminPasswordEncoder);
        ;
    }

    /**
     * 该方法是用来配置Authorization Server endpoints的一些非安全特性的，比如token存储、token自定义、授权类型等等的
     * 默认情况下，你不需要做任何事情，除非你需要密码授权，那么在这种情况下你需要提供一个AuthenticationManager
     */
    @Override
    public void configure(AuthorizationServerEndpointsConfigurer endpoints) throws Exception {
        //super.configure(endpoints);
        RedisTokenStore redisTokenStore = new RedisTokenStore(redisConnectionFactory);
        endpoints.tokenStore(redisTokenStore)
                .authenticationManager(authenticationManager)
        ;
    }

    /**
     * 配置ClientDetailsService
     * 注意，除非在下面的configure(AuthorizationServerEndpointsConfigurer)中指定了一个AuthenticationManager，否则密码授权方式不可用。
     * 至少配置一个client，否则服务器将不会启动。
     * 申请token:http://localhost:8088/ebuy_springboot/oauth/token?username=user_1&password=123456&grant_type=password&scope=select&client_id=client_2&client_secret=123456
     * 使用token访问资源：http://127.0.0.1:8088/ebuy_springboot/api/backstage/producttype?access_token=9edc1451-3f92-49cd-a218-cb9a574a4425
     */
    @Override
    public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
        //clients.withClientDetails(clientDetails());

        //基于内存配置项
        /*clients.inMemory()
               .withClient("ljy") //设置客户端client_id
                //.secret(passwordEncoder().encode("123456"))//客户端client_secret
                .secret("123456")
                .authorizedGrantTypes("authorization_code", "refresh_token","password") //支持的授权模式（数组类型）
                .redirectUris("http://tech.taiji.com.cn/") //web_server_redirect_uri，重定向地址，就是登录地址，授权后跳转的地址。
                .scopes("app").and().withClient("dev")
                .secret("all") //范围 //scope
                .accessTokenValiditySeconds(3600) //access_token的过期时间*/
        clients.inMemory()
                .withClient("ljy") //设置客户端client_id
                .resourceIds("admin")
                .authorizedGrantTypes("password", "client_credentials","refresh_token")
                .secret(adminPasswordEncoder.encode("123456"))
                .scopes("all") //范围 //scope
                .accessTokenValiditySeconds(3600) //access_token的过期时间
        ;
    }

}
