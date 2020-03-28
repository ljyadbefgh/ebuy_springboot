package com.lcvc.ebuy_springboot.service;

import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.query.LogOfProductClickQuery;
import com.lcvc.ebuy_springboot.model.base.PageObject;

import javax.validation.constraints.NotNull;

public interface LogOfProductClickService {
    /**
     * 保存日志
     * @param productId 产品id,不能为NULL
     * @param customer 访问产品的当前账户，可以为NULL。但是如果有值，必须保证客户信息存在，本方法不进行客户信息验证
     * @param ip ip地址,不能为NULL
     */
    void save(@NotNull Integer productId, Customer customer, @NotNull String ip);

    /**
     * 分页查询
     * @param page 当前页面
     * @param limit  每页最多显示的记录数
     * @param logOfProductClickQuery 查询条件类
     * @return
     */
    PageObject search(Integer page, Integer limit, LogOfProductClickQuery logOfProductClickQuery);

    /**
     * 根据查询条件查找指定的产品点击日志记录数
     * @param logOfProductClickQuery 查询条件类
     * @return
     */
    Integer querySize(LogOfProductClickQuery logOfProductClickQuery);
}