package com.lcvc.ebuy_springboot.service;

import com.lcvc.ebuy_springboot.model.ProductOrderDetail;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.query.ProductOrderDetailQuery;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

public interface ProductOrderDetailService {
    /**
     * 分页查询产品子订单
     * @param page 当前页面
     * @param limit  每页最多显示的记录数
     * @param productOrderDetailQuery 查询条件类
     * @return
     */
    PageObject search(Integer page, Integer limit, ProductOrderDetailQuery productOrderDetailQuery);

    /**
     * 编辑子订单
     * 说明：
     * 1.只能修改待付款或待发货的订单（订单允许修改的前提条件）
     * 2.如果订单的成交价已经存在，则不再允许更改
     * 3.只能修改子订单的商品现价，购买数量等
     * @param productOrderDetail
     */
    void updateProductOrderDetail(@Valid @NotNull ProductOrderDetail productOrderDetail);
}
