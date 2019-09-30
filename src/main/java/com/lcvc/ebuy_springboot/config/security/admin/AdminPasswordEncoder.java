package com.lcvc.ebuy_springboot.config.security.admin;

import com.lcvc.ebuy_springboot.util.SHA;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

/**
 * 自定义Admin的密码加密方法
 */
@Component
public class AdminPasswordEncoder implements PasswordEncoder {

    /**
     *
     * @param password 前端传递过来的要验证的密码（未加密）
     * @return
     */
    @Override
    public String encode(CharSequence password) {
        //加密方法可以根据自己的需要修改
        //return charSequence.toString();
        return SHA.getResult(password.toString());
    }

    /**
     *
     * @param password 前端传递过来的要验证的密码（未加密）
     * @param dbaPassword 数据库密码
     * @return
     */
    @Override
    public boolean matches(CharSequence password, String dbaPassword) {
        return encode(password).equals(dbaPassword);
    }
}