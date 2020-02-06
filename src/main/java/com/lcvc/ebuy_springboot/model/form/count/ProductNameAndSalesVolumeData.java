package com.lcvc.ebuy_springboot.model.form.count;

import java.util.List;

/**
 * 用于返回给前端echarts柱状图
 * 用于展示销量最大的几款产品数量
 */
public class ProductNameAndSalesVolumeData {
    private List<String> productNames;//产品的名称，按销量从大到小排列
    private List<Integer> productSalesVolumes;//销售量，按销量从大到小排列

    public List<String> getProductNames() {
        return productNames;
    }

    public void setProductNames(List<String> productNames) {
        this.productNames = productNames;
    }

    public List<Integer> getProductSalesVolumes() {
        return productSalesVolumes;
    }

    public void setProductSalesVolumes(List<Integer> productSalesVolumes) {
        this.productSalesVolumes = productSalesVolumes;
    }
}
