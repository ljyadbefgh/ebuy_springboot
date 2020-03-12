package com.lcvc.ebuy_springboot.config.security.admin;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * 处理后台管理员登录验证成功后的类
 */
@Component
public class AdminAuthenticationSuccessHandler implements AuthenticationSuccessHandler {
    /**Json转化工具*/
    @Autowired
    private ObjectMapper objectMapper;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException {
        //Admin admin = (Admin) authentication.getPrincipal();
        //System.out.println("管理员 " + admin.getUsername() + " 登录");
        Map<String, Object> map=new HashMap<String, Object>();
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        HttpSession session=request.getSession();
        //map.put(Constant.JSON_DATA,session.getId());//将sessionId传给客户端，这里是为了解决ueditor手动传递的问题
        response.setContentType("application/json;charset=UTF-8");
        response.getWriter().write(objectMapper.writeValueAsString(map));
    }
}
