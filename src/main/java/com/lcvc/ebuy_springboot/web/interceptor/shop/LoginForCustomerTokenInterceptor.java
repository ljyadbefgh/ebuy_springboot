package com.lcvc.ebuy_springboot.web.interceptor.shop;

import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.exception.MyCustomerLoginException;
import com.lcvc.ebuy_springboot.service.CustomerService;
import com.lcvc.ebuy_springboot.util.jwt.JwtUtilsForCustomer;
import com.lcvc.ebuy_springboot.util.redis.RedisUtilsForCustomer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 使用token来实现对Customer的登录状态验证
 * access_token和refresh_toke。
 */
public class LoginForCustomerTokenInterceptor extends HandlerInterceptorAdapter {
    @Autowired
    private RedisUtilsForCustomer redisUtilsForCustomer;
    @Autowired
    private JwtUtilsForCustomer jwtUtilsForCustomer;
    @Resource
    private CustomerService customerService;

    //private static final String[] IGNORE_URI = {};//定义不拦截的资源


    /**
     * 在请求处理之前进行调用（Controller方法调用之前）
     * 基于URL实现的拦截器
     * 在执行action里面的处理逻辑之前执行，它返回的是boolean，这里如果我们返回true在接着执行postHandle和afterCompletion，如果我们返回false则中断执行。
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String url = request.getRequestURL().toString();//获取被读取的接口路径,如http://127.0.0.1:8088/ebuy_springboot/backstage/logout
        boolean flag = false;//默认验证失败，即拦截请求
        String path = request.getServletPath();
        HttpSession session=request.getSession();
        if (flag) {//对要拦截的路径进行判断（当前不需要）
            //不需要的拦截直接过
            flag=true;
        } else {
            //对账户是否登陆进行验证
            // 从请求头中取出 token  这里需要和前端约定好把jwt放到请求头一个叫token的地方
            String customerAccressToken = request.getHeader(Constant.CUSTOMER_ACCRESS_TOKEN);
            String customerRefreshToken = request.getHeader(Constant.CUSTOMER_REFRESH_TOKEN);
            //验证token有效并获取 token 中的客户id
            Integer customerId= jwtUtilsForCustomer.verifyAndGetCustomerIdByToken(customerAccressToken,customerRefreshToken);
            //从缓冲中获取，要求在上一个拦截器中刷新reids中的客户信息
            Customer customer=redisUtilsForCustomer.getCustomerInRedis(customerId);
            if (customer == null) {
                throw new MyCustomerLoginException("用户不存在，请重新登录");
            }
            //如果能执行到最后一步，说明token验证成功
            flag=true;
        }
        return flag;
    }
}
