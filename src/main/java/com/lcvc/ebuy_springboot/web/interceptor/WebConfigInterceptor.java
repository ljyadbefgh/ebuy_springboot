package com.lcvc.ebuy_springboot.web.interceptor;

import com.lcvc.ebuy_springboot.service.WebConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 不断更新网站配置信息
 * 未来要用redis实现
 */
public class WebConfigInterceptor extends HandlerInterceptorAdapter {

    @Autowired
    private WebConfigService webConfigService;

    /**
     * 在请求处理之前进行调用（Controller方法调用之前）
     * 基于URL实现的拦截器
     * 在执行action里面的处理逻辑之前执行，它返回的是boolean，这里如果我们返回true在接着执行postHandle和afterCompletion，如果我们返回false则中断执行。
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String path = request.getServletPath();
        HttpSession session=request.getSession();
        session.setAttribute("webConfig",webConfigService.get());//更新客户的登陆信息
        return true;
    }
}
