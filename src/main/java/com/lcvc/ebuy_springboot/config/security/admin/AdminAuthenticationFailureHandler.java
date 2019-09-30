package com.lcvc.ebuy_springboot.config.security.admin;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.*;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * 处理后台管理员登录验证失败的类
 */
@Component
public class AdminAuthenticationFailureHandler implements AuthenticationFailureHandler{
    /**Json转化工具*/
    @Autowired
    private ObjectMapper objectMapper;

    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException e) throws IOException, ServletException {
        Map<String, Object> map=new HashMap<String, Object>();
        map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());
        if(e instanceof UsernameNotFoundException){
            map.put(Constant.JSON_MESSAGE, "登录失败：账户名不存在");
        }else  if(e instanceof BadCredentialsException){
            map.put(Constant.JSON_MESSAGE, "登录失败：密码错误");
        }else if(e instanceof CredentialsExpiredException){
            map.put(Constant.JSON_MESSAGE, "登录失败：密码已过期");
        }else if(e instanceof LockedException){
            map.put(Constant.JSON_MESSAGE, "登录失败：账户被锁定");
        }else if(e instanceof DisabledException){
            map.put(Constant.JSON_MESSAGE, "登录失败：账户被禁用");
        }else if(e instanceof AccountExpiredException){
            map.put(Constant.JSON_MESSAGE, "登录失败：账户已过期");
        }else{
            map.put(Constant.JSON_MESSAGE, "登录失败：未知异常："+e.getMessage());
        }
        response.setContentType("application/json;charset=UTF-8");
        response.getWriter().write(objectMapper.writeValueAsString(map));
    }
}
