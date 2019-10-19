package com.lcvc.ebuy_springboot.config.security.admin;

import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


/**
 * 登陆请求，用于重置spring security的登陆验证流程，改为自己定义
 * 特别说明：因为登录地址不是"/login"，所以继承的是AbstractAuthenticationProcessingFilter，如果登录地址为默认，那么可直接继承UsernamePasswordAuthenticationFilter重写attemptAuthentication方法即可。
 *
 * 授权过滤器，你可以自定义它，并把它添加到默认过滤器前或者后去执行，主要用来到授权的持久化，
 * 它可以从请求上下文中获取你的user,password等信息，然后去判断它是否符合规则，最后通过authenticate方法去授权。
 * 默认的UsernamePasswordAuthenticationFilter过滤器，主要判断请求方式是否为post，并且对username和password进行了默认值的处理，总之，在这个过滤器里不会涉及到具体业务。
 */
public class AdminAuthenticationProcessingFilter extends AbstractAuthenticationProcessingFilter {

    public AdminAuthenticationProcessingFilter() {
        super(new AntPathRequestMatcher("/api/backstage/login", "GET"));//设定登陆地址，提供给前台
    }

    @Override
    public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response) throws AuthenticationException, IOException, ServletException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username == null) {
            throw new InternalAuthenticationServiceException("请输入账户名");
        }
        if (password == null) {
            throw new InternalAuthenticationServiceException("请输入密码");
        }
        // 根据用户提供的用户名/密码信息构建一个认证token
        UsernamePasswordAuthenticationToken authRequest = new UsernamePasswordAuthenticationToken(username, password);
        authRequest.setDetails(authenticationDetailsSource.buildDetails(request));
        // 交给 authenticationManager执行真正的用户身份认证
        return this.getAuthenticationManager().authenticate(authRequest);
    }
}
