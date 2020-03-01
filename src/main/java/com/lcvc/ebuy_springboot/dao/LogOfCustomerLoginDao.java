package com.lcvc.ebuy_springboot.dao;

import com.lcvc.ebuy_springboot.model.LogOfCustomerLogin;
import org.springframework.stereotype.Repository;

@Repository//为了不让idea报错加上
public interface LogOfCustomerLoginDao extends IBaseDao<LogOfCustomerLogin> {

    /**
     * 获取今天某客户连续登陆失败的次数
     * @param customerId 指定客户
     * @return 失败的次数
     */
    int getContinuousLoginErrorNumber(int customerId);
}
