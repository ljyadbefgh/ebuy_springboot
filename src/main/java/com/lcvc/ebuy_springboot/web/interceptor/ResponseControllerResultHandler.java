package com.lcvc.ebuy_springboot.web.interceptor;

import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.exception.MyCustomerLoginException;
import com.lcvc.ebuy_springboot.service.CustomerService;
import com.lcvc.ebuy_springboot.util.jwt.JwtUtilsForCustomer;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.MethodParameter;
import org.springframework.core.annotation.Order;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.mvc.method.annotation.ResponseBodyAdvice;
import org.thymeleaf.util.StringUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * 用来统一处理controller的返回值
 * 设计为在异常统一处理类后执行，所以order排序要注意优先级
 */
@Slf4j
@RestControllerAdvice
@Order(99)
public class ResponseControllerResultHandler implements ResponseBodyAdvice<Object> {
    @Autowired
    private JwtUtilsForCustomer jwtUtilsForCustomer;
    @Autowired
    private CustomerService customerService;

    // 判断是否要执行 beforeBodyWrite 方法，true为执行，false不执行，有注解标记的时候处理返回值
    @Override
    public boolean supports(MethodParameter methodParameter, Class<? extends HttpMessageConverter<?>> aClass) {
        boolean status=false;//默认不执行
        ServletRequestAttributes sra = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = sra.getRequest();
        String customerAccressToken = request.getHeader(Constant.CUSTOMER_ACCRESS_TOKEN);
        if(!StringUtils.isEmpty(customerAccressToken)){//如果令牌不为空
            status=true;//则对令牌的数值进行刷新处理
        }
        return status;
    }

    // 对返回值做包装处理
    @Override
    public Object beforeBodyWrite(Object object, MethodParameter methodParameter, MediaType mediaType, Class<? extends HttpMessageConverter<?>> aClass, ServerHttpRequest serverHttpRequest, ServerHttpResponse serverHttpResponse) {
        //HttpServletRequest request = (HttpServletRequest) serverHttpRequest;
        ServletRequestAttributes sra = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = sra.getRequest();
        //获取令牌
        String customerAccressToken = request.getHeader(Constant.CUSTOMER_ACCRESS_TOKEN);
        String customerRefreshToken = request.getHeader(Constant.CUSTOMER_REFRESH_TOKEN);
        String customerIdString= jwtUtilsForCustomer.getAudience(customerAccressToken);
        if(customerIdString==null){//如果获取不到
            customerAccressToken=null;
            customerRefreshToken=null;
        }
        Integer customerId=Integer.valueOf(customerIdString);
        try {
            //验证是否过期
            jwtUtilsForCustomer.verifyCustomerToken(customerAccressToken,customerId);
        } catch (MyCustomerLoginException e) {//如果令牌过期了，则根据刷新令牌执行刷新操作
            //验证customer_refresh_token刷新令牌是否过期
            try {
                jwtUtilsForCustomer.verifyCustomerToken(customerRefreshToken,customerId);
                Customer customer=customerService.getCustomer(Integer.valueOf(customerId));
                if(customer!=null){
                    customerAccressToken=jwtUtilsForCustomer.createAccressCustomerToken(customer);
                    customerRefreshToken=jwtUtilsForCustomer.createRefreshCustomerToken(customer);
                }
            } catch (MyCustomerLoginException ee) {//如果刷新令牌也过期了
                customerAccressToken=null;
                customerRefreshToken=null;
            }
        }
        if (object instanceof Map) {//如果返回值是Map集合
            Map<String,Object> map=(Map)object;//获取返回值
            //返回令牌
            map.put(Constant.CUSTOMER_ACCRESS_TOKEN, customerAccressToken);
            map.put(Constant.CUSTOMER_REFRESH_TOKEN, customerRefreshToken);
            return map;
        }
        return object;
    }
}
