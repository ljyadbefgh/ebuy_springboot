package com.lcvc.ebuy_springboot.dao;

import com.lcvc.ebuy_springboot.model.LogOfAdminLogin;
import org.springframework.stereotype.Repository;

@Repository//为了不让idea报错加上
public interface LogOfAdminLoginDao extends IBaseDao<LogOfAdminLogin> {

    /**
     * 获取今天指定账户连续登陆失败的次数
     * @param adminId 指定账户
     * @return 失败的次数
     */
    int getContinuousLoginErrorNumber(int adminId);
}
