package com.lcvc.ebuy_springboot.aop.web;


import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.LogOfCustomerLogin;
import com.lcvc.ebuy_springboot.model.WebConfig;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.exception.MyServiceException;
import com.lcvc.ebuy_springboot.service.CustomerService;
import com.lcvc.ebuy_springboot.service.LogOfCustomerLoginService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * 用于记录客户的登陆日志
 * 也用于对客户登陆进行切面处理
 * 说明：
 * 由于要记录IP地址，所以放在web层。
 * 相对业务层拦截的路径要多一些，但是也少去一些比必要的判断（如本不是执行登陆，也执行了login的方法）
 */
@Aspect
@Component
public class LoginOfCustomerAspect extends BaseWebAspect{

    public static final Log log= LogFactory.getLog(LoginOfCustomerAspect.class);

    @Autowired
    private LogOfCustomerLoginService logOfCustomerLoginService;
    @Autowired
    private CustomerService customerService;

    /**
     * 从session中获取客户信息
     * @return
     */
    private Customer getCustomerFromSession(){
        HttpSession session=super.getSession();
        Customer customer=null;
        if(session.getAttribute("customer")!=null){
            customer = (Customer) session.getAttribute("customer");
        }
        return customer;
    }


    /**
     * 知识点：
     * @AfterReturning：如果切面的方法或请求抛出异常，则不会执行该方法
     * 对登陆请求进行切面处理
     * 说明：
     * 只记录密码正确和错误的日志，其他情况（如密码长度不对等）不进行记录
     * 选择AfterReturning主要还是根据登陆的业务层和控制层
     * 1.首先，如果抛出异常，说明并非账户密码错误（例如没有输入账户名），或其他情况，这种情况系统不予以记录
     * 2.其次，登陆成功返回true；密码错误返回false。这样不予以处理
     * @param jp
     */
    @AfterReturning(returning="returnValue", pointcut="execution(*  com.lcvc.ebuy_springboot.web.action.shop.customer.CustomerShopController.login(..))")
    public void afterLogin(JoinPoint jp,Object returnValue) throws Exception {
        LogOfCustomerLogin logOfCustomerLogin=new LogOfCustomerLogin();
        logOfCustomerLogin.setIp(super.getClientIp());//获取IP地址
        Customer customer=this.getCustomerFromSession();//读取客户信息
        if(customer!=null){//可以通过session判断是否成功，也可以通过返回值。
            logOfCustomerLogin.setLoginResult(true);
        }else{
            logOfCustomerLogin.setLoginResult(false);
            Object[] objs = jp.getArgs();
            if(objs.length==3){//登陆方法由三个参数
                String username=(String)objs[0];
                customer=customerService.getCustomer(username);//读取要登陆的账户信息
                if(customer!=null){
                    WebConfig webConfig=super.getWebConfig();
                    Integer maxLoginErrorNumberOfCustomer=webConfig.getMaxLoginErrorNumberOfCustomer();//当天允许某客户连续登陆错误的次数
                    if(maxLoginErrorNumberOfCustomer>0){//如果有连续登陆错误的限制
                        Map<String, Object> map=( Map<String, Object>)returnValue;//获取登陆请求的返回值，从业务知道，必定存在，故不判定是否为Null
                        if((Integer)map.get(Constant.JSON_CODE)!=0){//强化验证，表示登陆失败，其实也可以忽略
                            int numberError=logOfCustomerLoginService.getContinuousLoginErrorNumber(customer.getId());//获取该账户当天连续登陆错误的次数（不包含本次错误）
                            ++numberError;//  ++numberError表示加上本次错误
                            map.put(Constant.JSON_MESSAGE, "登录失败：密码错误，您还有"+(maxLoginErrorNumberOfCustomer-numberError)+"次机会");//修改业务返回值，强调密码剩余的输入次数
                        }
                    }
                }
            }
        }
        if(customer!=null){//如果没有账户信息，则不执行记录
            logOfCustomerLogin.setCustomer(customer);
            logOfCustomerLoginService.save(logOfCustomerLogin);
        }
    }


    /**
     * 知识点：
     * @AfterReturning：如果切面的方法或请求抛出异常，则不会执行该方法
     * 对登陆请求进行切面处理
     * 说明：
     * 只记录密码正确和错误的日志，其他情况（如密码长度不对等）不进行记录
     * 选择AfterReturning主要还是根据登陆的业务层和控制层
     * 1.首先，如果抛出异常，说明并非账户密码错误（例如没有输入账户名），或其他情况，这种情况系统不予以记录
     * 2.其次，登陆成功返回true；密码错误返回false。这样不予以处理
     * @param jp
     */
    /*@AfterReturning(returning="returnValue", pointcut="execution(*  com.lcvc.ebuy_springboot.web.action.shop.customer.CustomerShopController.login(..))")
    public void afterLogin(JoinPoint jp,Object returnValue) throws Exception {
        LogOfCustomerLogin logOfCustomerLogin=new LogOfCustomerLogin();
        logOfCustomerLogin.setIp(super.getClientIp());//获取IP地址
        Customer customer=this.getCustomerFromSession();//读取客户信息
        if(customer!=null){//可以通过session判断是否成功，也可以通过返回值。
            logOfCustomerLogin.setLoginResult(true);
        }else{
            logOfCustomerLogin.setLoginResult(false);
            Object[] objs = jp.getArgs();
            if(objs.length==3){//登陆方法由三个参数
                String username=(String)objs[0];
                customer=customerService.getCustomer(username);//读取要登陆的账户信息
                if(customer!=null){
                    WebConfig webConfig=super.getWebConfig();
                    Integer maxLoginErrorNumberOfCustomer=webConfig.getMaxLoginErrorNumberOfCustomer();//当天允许某客户连续登陆错误的次数
                    if(maxLoginErrorNumberOfCustomer>0){//如果有连续登陆错误的限制
                        Map<String, Object> map=( Map<String, Object>)returnValue;//获取登陆请求的返回值，从业务知道，必定存在，故不判定是否为Null
                        if((Integer)map.get(Constant.JSON_CODE)!=0){//强化验证，表示登陆失败，其实也可以忽略
                            int numberError=logOfCustomerLoginService.getContinuousLoginErrorNumber(customer.getId());//获取该账户当天连续登陆错误的次数（不包含本次错误）
                            ++numberError;//  ++numberError表示加上本次错误
                            map.put(Constant.JSON_MESSAGE, "登录失败：密码错误，您还有"+(maxLoginErrorNumberOfCustomer-numberError)+"次机会");//修改业务返回值，强调密码剩余的输入次数
                        }
                    }
                }
            }
        }
        if(customer!=null){//如果没有账户信息，则不执行记录
            logOfCustomerLogin.setCustomer(customer);
            logOfCustomerLoginService.save(logOfCustomerLogin);
        }
    }*/

    /**
     * 对用户登陆请求进行拦截
     * 说明：
     * 1.如果连续登陆次数超过系统规定的次数，则不允许登陆
     * @param jp
     * @throws Exception
     */
    @Before("execution(*  com.lcvc.ebuy_springboot.web.action.shop.customer.CustomerShopController.login(..))")
    public void beforeLogin(JoinPoint jp) throws Exception {
        Object[] objs = jp.getArgs();
        WebConfig webConfig=super.getWebConfig();
        Integer maxLoginErrorNumberOfCustomer=webConfig.getMaxLoginErrorNumberOfCustomer();//当天允许某客户连续登陆错误的次数
        if(maxLoginErrorNumberOfCustomer>0){//如果有连续登陆错误次数的验证
            if(objs.length==3){//登陆方法由三个参数
                String username=(String)objs[0];
                Customer customer=customerService.getCustomer(username);//读取要登陆的账户信息
                if(customer!=null){
                    int numberError=logOfCustomerLoginService.getContinuousLoginErrorNumber(customer.getId());//获取该账户当天连续登陆错误的次数
                    if(numberError>=maxLoginErrorNumberOfCustomer){
                        throw new MyServiceException("登陆失败：您已经连续输错密码"+numberError+"次，今天不允许再登陆");
                    }
                }
            }
        }
    }
}
