package com.lcvc.ebuy_springboot.web.interceptor.shop;

import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.exception.MyCustomerLoginException;
import com.lcvc.ebuy_springboot.service.CustomerService;
import com.lcvc.ebuy_springboot.util.jwt.JwtUtilsForCustomer;
import com.lcvc.ebuy_springboot.util.redis.RedisUtilsForCustomer;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 用来针对shop，即移动端的请求进行统一处理
 * access_token和refresh_toke。
 */
public class ShopInterceptor extends HandlerInterceptorAdapter {
    @Autowired
    private RedisUtilsForCustomer redisUtilsForCustomer;
    @Autowired
    private JwtUtilsForCustomer jwtUtilsForCustomer;
    @Resource
    private CustomerService customerService;



    /**
     * 在请求处理之前进行调用（Controller方法调用之前）
     * 基于URL实现的拦截器
     * 在执行action里面的处理逻辑之前执行，它返回的是boolean，这里如果我们返回true在接着执行postHandle和afterCompletion，如果我们返回false则中断执行。
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //刷新客户端的customer在redis中的对象为最新对象
        String customerAccressToken = request.getHeader(Constant.CUSTOMER_ACCRESS_TOKEN);
        String customerRefreshToken = request.getHeader(Constant.CUSTOMER_REFRESH_TOKEN);
        if(!StringUtils.isEmpty(customerAccressToken)){//如果token不为空才进行处理
            Integer customerId= null;
            try {
                //验证token有效并获取 token 中的客户id，但是不弹出异常信息。token异常放在redis中
                customerId= jwtUtilsForCustomer.verifyAndGetCustomerIdByToken(customerAccressToken,customerRefreshToken);
                if(customerId!=null){//如果customerId
                    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";//获取项目根目录网址
                    Customer customer=customerService.getCustomer(Integer.valueOf(customerId),basePath);//读取客户信息
                    if (customer == null) {//如果用户信息已经不存在
                        redisUtilsForCustomer.removeCustomerFromRedis(customerId);//从redis移除customer
//                        throw new MyCustomerLoginException("该用户已经被移除，请重新登录");
                    }else{
                        redisUtilsForCustomer.saveCustomerInRedis(customer);//刷新redis中的客户信息
                    }
                }
            } catch (Exception e) {
                //不抛出异常
            }

        }
        return true;//本拦截器不做拦截，只是刷新数据
    }
}
