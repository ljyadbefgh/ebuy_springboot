package com.lcvc.ebuy_springboot.model.query;

import com.lcvc.ebuy_springboot.model.Product;

public class ProductQuery extends Product {
    /**
     * 排序方式
     * 默认按优先级降序、时间降序排序
     * 1、按优先级升序排序
     * 2、按优先级降序排序
     * 3、按发布时间降序排序
     * 4、按发布时间升序排序
     */
    private Integer orderType;

    public Integer getOrderType() {
        return orderType;
    }

    public void setOrderType(Integer orderType) {
        this.orderType = orderType;
    }

}
