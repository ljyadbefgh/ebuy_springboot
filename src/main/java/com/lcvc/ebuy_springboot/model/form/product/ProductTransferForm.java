package com.lcvc.ebuy_springboot.model.form.product;

/**
 * 用于处理表单栏目转移
 */
public class ProductTransferForm {
    private Integer[] productIds;//传授传递过来的产品Id集合
    private Integer productTypeId;//接收传递过来的栏目id

    public Integer[] getProductIds() {
        return productIds;
    }

    public void setProductIds(Integer[] productIds) {
        this.productIds = productIds;
    }

    public Integer getProductTypeId() {
        return productTypeId;
    }

    public void setProductTypeId(Integer productTypeId) {
        this.productTypeId = productTypeId;
    }
}
