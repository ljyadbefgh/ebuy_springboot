package com.lcvc.ebuy_springboot.model.query;

import com.lcvc.ebuy_springboot.model.ProductOrderDetail;

/**
 * 详细订单
 * 
 */

public class ProductOrderDetailQuery extends ProductOrderDetail implements java.io.Serializable {
    private ProductOrderQuery productOrderQuery;

    public ProductOrderQuery getProductOrderQuery() {
        return productOrderQuery;
    }

    public void setProductOrderQuery(ProductOrderQuery productOrderQuery) {
        this.productOrderQuery = productOrderQuery;
    }
}