package com.lcvc.ebuy_springboot.service;

import com.lcvc.ebuy_springboot.model.ProductOrderDetail;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

public interface ProductOrderDetailService {

    /**
     * 编辑子订单
     * 说明：
     * 1.只能修改待付款的订单
     * 2.只能修改子订单的商品现价，购买数量等
     * @param productOrderDetail
     */
    void updateProductOrderDetail(@Valid @NotNull ProductOrderDetail productOrderDetail);
}
