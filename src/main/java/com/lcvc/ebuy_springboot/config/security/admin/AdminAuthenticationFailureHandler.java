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
        String message=null;
        if(e instanceof UsernameNotFoundException){
            message="登录失败：账户名不存在";
        }else  if(e instanceof BadCredentialsException){// 密码错误
            message=e.getMessage();
        }else if(e instanceof CredentialsExpiredException){
            message="录失败：密码已过期";
        }else if(e instanceof LockedException){
            message="登录失败：账户被锁定";
        }else if(e instanceof DisabledException){
            message="登录失败：账户被禁用("+e.getMessage()+")";
        }else if(e instanceof AccountExpiredException){
            message="登录失败：账户已过期";
        }else{
            message="登录失败：未知异常："+e.getMessage();
        }
        map.put(Constant.JSON_MESSAGE, message);//正常返回信息
        map.put("state",message);//专门为ueditor写的返回信息，如果不需要可以去掉该行
        response.setContentType("application/json;charset=UTF-8");
        response.getWriter().write(objectMapper.writeValueAsString(map));
    }
}
