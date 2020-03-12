package com.lcvc.ebuy_springboot.model.form.count;

import java.math.BigDecimal;
import java.util.List;

/**
 * 用于返回给前端echarts柱状图
 * 用于展示销量最大的几款产品数量
 */
public class ProductNameAndSaleData {
    private List<String> productNames;//产品的名称，按销售额从大到小排列
    private List<BigDecimal> productSales;//销售额，按销售额从大到小排列

    public List<String> getProductNames() {
        return productNames;
    }

    public void setProductNames(List<String> productNames) {
        this.productNames = productNames;
    }

    public List<BigDecimal> getProductSales() {
        return productSales;
    }

    public void setProductSales(List<BigDecimal> productSales) {
        this.productSales = productSales;
    }
}
