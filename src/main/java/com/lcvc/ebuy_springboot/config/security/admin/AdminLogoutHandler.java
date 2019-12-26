package com.lcvc.ebuy_springboot.config.security.admin;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * 自定义注销
 */
@Component
public class AdminLogoutHandler implements LogoutHandler,LogoutSuccessHandler {
    /**Json转化工具*/
    @Autowired
    private ObjectMapper objectMapper;


    //注销成功后的请求
    @Override
    public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        Map<String, Object> map=new HashMap<String, Object>();
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        map.put(Constant.JSON_MESSAGE, "成功注销用户");
        response.setContentType("application/json;charset=UTF-8");
        response.getWriter().write(objectMapper.writeValueAsString(map));
    }

    //处理注销请求
    @Override
    public void logout(HttpServletRequest request, HttpServletResponse response, Authentication authentication) {
        //System.out.println("执行注销操作");
       /* Assert.notNull(request, "HttpServletRequest required");
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate(); //使当前会话失效
        }
        SecurityContextHolder.clearContext(); //清空安全上下文*/
    }
}
