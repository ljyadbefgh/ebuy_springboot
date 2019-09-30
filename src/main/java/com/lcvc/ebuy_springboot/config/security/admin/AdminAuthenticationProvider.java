package com.lcvc.ebuy_springboot.config.security.admin;

import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.service.impl.AdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Component;

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

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        //表单输入的用户名
        String username = (String)authentication.getPrincipal();
        //表单输入的密码
        String password = (String) authentication.getCredentials();
        Admin admin = adminService.loadUserByUsername(username);
        //对加密密码进行验证
        if(adminPasswordEncoder.matches(password,admin.getPassword())){
            return new UsernamePasswordAuthenticationToken(admin,password,admin.getAuthorities());//分别设置账户信息，密码，权限（账户拥有的权限）
        }else {
            throw new BadCredentialsException("密码错误");
        }
    }

    @Override
    public boolean supports(Class<?> aClass) {
        return true;

    }
}
