package com.lcvc.ebuy_springboot.web.action.shop;

import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.ShoppingCart;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.util.jwt.JwtUtilsForCustomer;
import com.lcvc.ebuy_springboot.util.redis.RedisUtilsForCustomer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

import javax.servlet.http.HttpServletRequest;

/**
 * 用于前台的controller，用于封装部分公用函数
 */
public class BaseShopController {
    @Autowired
    protected JwtUtilsForCustomer jwtUtilsForCustomer;
    @Autowired
    protected RedisUtilsForCustomer redisUtilsForCustomer;
    /**
     * 从redis从获取Customer对象
     * @return
     */
    protected Customer getCustomerInRedis(){
        RequestAttributes requestAttributes = RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = (HttpServletRequest) requestAttributes.resolveReference(RequestAttributes.REFERENCE_REQUEST);
        //获取token
        String customerAccressToken = request.getHeader(Constant.CUSTOMER_ACCRESS_TOKEN);
        Integer customerId=jwtUtilsForCustomer.getCustomerIdByAccressToken(customerAccressToken);
        //获取redis中对应的客户信息，等于与获取session中的customer。该信息应在拦截中中做过更新
        return redisUtilsForCustomer.getCustomerInRedis(customerId);
    }

    /**
     * 从redis从获取Customer对象
     * @return
     */
//    protected ShoppingCart getShoppingCartInRedis(){
//        RequestAttributes requestAttributes = RequestContextHolder.getRequestAttributes();
//        HttpServletRequest request = (HttpServletRequest) requestAttributes.resolveReference(RequestAttributes.REFERENCE_REQUEST);
//        //获取token
//
//    }

}
