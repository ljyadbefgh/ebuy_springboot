package com.lcvc.ebuy_springboot.config.security.admin;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.InsufficientAuthenticationException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * 处理后台匿名用户访问无权限资源时的异常
 * AuthenticationEntryPoint：该异常类实现了很多子类，概括来说都是身份校验问题。
 * AuthenticationException子实现
 * UsernameNotFoundException：用户名未找到。
 * BadCredentialsException：认证错误。可以用于密码错误、验证码错误等。
 * RememberMeAuthenticationException：记住我 认证错误。 在登录中常常有 记住我 选项，因为这个地方导致的错误。
 * AccountStatusException：用户账户状态异常。例如被封号之类的。
 * NonceExpiredException：Nonce过期异常。
 * AuthenticationCredentialsNotFoundException：SecurityContext中不存在Authentication异常。
 * AuthenticationServiceException：认证服务异常。可能是后端数据库之类的出现问题等等情况。
 * ProviderNotFoundException：Provider找不到异常。由ProviderManager抛出。
 * SessionAuthenticationException：会话认证异常。通常是因为同一个用户打开了多个会话。
 * InsufficientAuthenticationException：认证信息不足异常？可能是由于 记住我 选项引发的。
 */
@Component
public class AdminAuthenticationEntryPoint implements AuthenticationEntryPoint {
    /**Json转化工具*/
    @Autowired
    private ObjectMapper objectMapper;

    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException authException) throws IOException, ServletException {
        Map<String, Object> map=new HashMap<String, Object>();
        map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());
        if(authException instanceof InsufficientAuthenticationException){//认证信息不足异常，例如登陆信息已经失效（session不存在该值）
            map.put(Constant.JSON_MESSAGE, "请先登陆");
        }

        response.setContentType("application/json;charset=UTF-8");
        response.getWriter().write(objectMapper.writeValueAsString(map));
    }
}
