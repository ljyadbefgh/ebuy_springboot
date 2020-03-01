package com.lcvc.ebuy_springboot.aop.service;


import com.lcvc.ebuy_springboot.aop.web.BaseWebAspect;
import com.lcvc.ebuy_springboot.service.AdminService;
import com.lcvc.ebuy_springboot.service.LogOfCustomerLoginService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * 用于记录管理员的登陆日志
 * 也用于对管理员进行切面处理
 * 说明：
 * （1)管理员一个拦截的是spring security的方法
 * （2）虽然管理员拦截业务层，但是由于登陆都是通过WEB层的，所以非测试环境下也可以获取到IP地址
 */
@Aspect
@Component
public class LoginOfAdminAspect extends BaseWebAspect{

    public static final Log log= LogFactory.getLog(LoginOfAdminAspect.class);

    @Autowired
    private LogOfCustomerLoginService logOfCustomerLoginService;
    @Autowired
    private AdminService adminService;

    private String username;//获取当前登陆的账户名

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

 /*   @Before("execution(*  com.lcvc.ebuy_springboot.config.security.admin.AdminAuthenticationProvider.authenticate(..))")
    public void afterLogin(JoinPoint jp) throws Exception {
        this.setUsername("");
        System.out.println("管理员登陆前");

    }
*/

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
   /* @AfterReturning(returning="returnValue", pointcut="execution(*  com.lcvc.ebuy_springboot.config.security.admin.AdminPasswordEncoder.matches(..))")
    public void afterLogin(JoinPoint jp,Object returnValue) throws Exception {
        //String username= ConstantOfSecurity.getCurrentUsernameBySpringSecurity();
        System.out.println("管理员登陆"+ SecurityContextHolder.getContext().getAuthentication());
        LogOfAdminLogin logOfAdminLogin=new LogOfAdminLogin();
        //logOfAdminLogin.setIp(super.getClientIp());//获取IP地址

    }*/
}
