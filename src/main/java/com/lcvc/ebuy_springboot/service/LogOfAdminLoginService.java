package com.lcvc.ebuy_springboot.service;

import com.lcvc.ebuy_springboot.model.LogOfAdminLogin;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.query.LogOfAdminLoginQuery;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

public interface LogOfAdminLoginService {
    /**
     * 保存日志
     * @param logOfAdminLogin
     */
    void save(@Valid @NotNull LogOfAdminLogin logOfAdminLogin);

    /**
     * 分页查询
     * @param page 当前页面
     * @param limit  每页最多显示的记录数
     * @param logOfAdminLoginQuery 查询条件类
     * @return
     */
    PageObject search(Integer page, Integer limit, LogOfAdminLoginQuery logOfAdminLoginQuery);

    /**
     * 获取今天某客户连续登陆失败的次数
     * @param adminId 指定客户
     * @return 失败的次数
     */
    int getContinuousLoginErrorNumber(@NotNull Integer adminId);
}