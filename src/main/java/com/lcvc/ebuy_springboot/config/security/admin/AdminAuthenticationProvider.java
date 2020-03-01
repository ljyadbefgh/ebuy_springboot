package com.lcvc.ebuy_springboot.config.security.admin;

import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.LogOfAdminLogin;
import com.lcvc.ebuy_springboot.model.WebConfig;
import com.lcvc.ebuy_springboot.service.LogOfAdminLoginService;
import com.lcvc.ebuy_springboot.service.WebConfigService;
import com.lcvc.ebuy_springboot.service.impl.AdminServiceImpl;
import com.lcvc.ebuy_springboot.util.web.IpUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.*;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

//自定义认证方式
@Component
public class AdminAuthenticationProvider implements AuthenticationProvider {

    //DAO查询用户
    @Autowired
    private AdminServiceImpl adminService;
    //密码加密解密
    @Autowired
    //private BCryptPasswordEncoder bCryptPasswordEncoder;
    private AdminPasswordEncoder adminPasswordEncoder;

    @Autowired
    private WebConfigService webConfigService;

    @Autowired
    private LogOfAdminLoginService logOfAdminLoginService;

    /**
     * 获取Web应用的HttpServletRequest对象：request对象
     * @return null表示获取不到，即不是以web方式访问
     */
    private HttpServletRequest getRequest() {
        RequestAttributes requestAttributes = RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = (HttpServletRequest) requestAttributes.resolveReference(RequestAttributes.REFERENCE_REQUEST);
        return request;
    }

    /**
     * 读取网站配置信息
     * 说明
     * 1.首先从session读取
     * 2.如果session没有（一般是在业务层测试中），则直接从数据库读取
     */
    private WebConfig getWebConfig(){
        WebConfig webConfig=null;
        HttpSession session=this.getRequest().getSession();
        if(session!=null){//如果是通过web调用本aop（例如定时程序或是业务层调用，不会获得web对象）
            webConfig=(WebConfig)session.getAttribute("webConfig");//更新客户的登陆信息
        }
        if(webConfig==null){
            webConfig=webConfigService.get();//从数据库读取
        }
        return webConfig;
    }

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        //表单输入的用户名
        String username = (String)authentication.getPrincipal();
        //表单输入的密码
        String password = (String) authentication.getCredentials();
        Admin admin = adminService.loadUserByUsername(username);
        //首先判断该账户是否还有登陆资格
        Integer loginNumberRest=null;//表示还剩多少次登陆次数，用于返回给客户端
        WebConfig webConfig=this.getWebConfig();
        Integer maxLoginErrorNumberOfAdmin=webConfig.getMaxLoginErrorNumberOfAdmin();//当天允许某管理员连续登陆错误的次数
        if(maxLoginErrorNumberOfAdmin>0) {//如果有连续登陆错误的限制
            int numberError=logOfAdminLoginService.getContinuousLoginErrorNumber(admin.getId());//获取该账户当天连续登陆错误的次数（不包含本次错误）
            if(numberError>=maxLoginErrorNumberOfAdmin){
                throw new DisabledException("您已经连续输错密码"+numberError+"次，今天不允许再登陆");
            }else{
                loginNumberRest=maxLoginErrorNumberOfAdmin-(++numberError);//++numberError表示加上本次错误
            }
        }
        //对加密密码进行验证
        LogOfAdminLogin logOfAdminLogin=new LogOfAdminLogin();
        logOfAdminLogin.setAdmin(admin);
        logOfAdminLogin.setIp(IpUtil.getIpAddr(this.getRequest()));//获取IP地址
        if(adminPasswordEncoder.matches(password,admin.getPassword())){//如果密码验证通过
            logOfAdminLogin.setLoginResult(true);
            logOfAdminLoginService.save(logOfAdminLogin);//保存日志
            if(admin.isAccountNonLocked()==false){//如果账户没有被锁定
                throw new LockedException("账户已经锁定");
            }
            return new UsernamePasswordAuthenticationToken(admin,password,admin.getAuthorities());//分别设置账户信息，密码，权限（账户拥有的权限）
        }else {
            logOfAdminLogin.setLoginResult(false);
            logOfAdminLoginService.save(logOfAdminLogin);//保存日志
            if(loginNumberRest!=null){
                throw new BadCredentialsException("登录失败：密码错误，您还有"+loginNumberRest+"次机会");
            }else{
                throw new BadCredentialsException("密码错误");//抛出密码错误
            }
        }
    }


    @Override
    public boolean supports(Class<?> aClass) {
        return true;

    }
}
