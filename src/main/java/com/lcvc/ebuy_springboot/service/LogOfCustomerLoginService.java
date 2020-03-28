package com.lcvc.ebuy_springboot.service;

import com.lcvc.ebuy_springboot.model.LogOfCustomerLogin;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.query.LogOfCustomerLoginQuery;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

public interface LogOfCustomerLoginService {
    /**
     * 保存日志
     * @param logOfCustomerLogin
     */
    void save(@Valid @NotNull LogOfCustomerLogin logOfCustomerLogin);

    /**
     * 分页查询
     * @param page 当前页面
     * @param limit  每页最多显示的记录数
     * @param logOfCustomerLoginQuery 查询条件类
     * @return
     */
    PageObject search(Integer page, Integer limit, LogOfCustomerLoginQuery logOfCustomerLoginQuery);

    /**
     * 获取今天某客户连续登陆失败的次数
     * @param customerId 指定客户
     * @return 失败的次数
     */
    int getContinuousLoginErrorNumber(@NotNull Integer customerId);

}