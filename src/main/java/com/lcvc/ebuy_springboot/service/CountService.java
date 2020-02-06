package com.lcvc.ebuy_springboot.service;

import com.lcvc.ebuy_springboot.model.form.count.NameAndValueMap;
import com.lcvc.ebuy_springboot.model.form.count.ProductNameAndSalesVolumeData;
import com.lcvc.ebuy_springboot.model.form.count.ProductTypeSalesVolumeLineArrayChart;

import javax.validation.constraints.NotNull;
import java.util.List;

public interface CountService {

    /**
     * 说明：获取销量最大的产品名称和对应的销售量
     * 按销量从大到小的顺序排列出来
     * @param limit 表示要获取的最大销量的产品数
     * @return
     */
    ProductNameAndSalesVolumeData getProductNameAndSalesVolumeData(@NotNull Integer limit);

    /**
     * 说明：获取销售额最大的产品栏目名称和对应的销售额
     * 按销量从大到小的顺序排列出来
     * @param limit 表示要获取的产品栏目数量
     * @return
     */
    List<NameAndValueMap> getMaxSaleOfProductType(@NotNull Integer limit);

    /**
     * 说明：查询从今天开始，往前若干天内（包括今天），每天销售量最大的产品栏目，并返回名称和对应的销售量的集合
     * 日期顺序是从过去到现在
     * 每天的销量是按从大到小的顺序排列出来
     * @param productTypeIds 表示要获取的产品栏目集合,如果是NULL则表示查询所有栏目
     * @param dayNumber 代表天数,如果是1表示今天；如果是2表示今天和昨天，以此类推
     * @return 返回折线堆叠图的数据，但是前端还要根据实际情况处理
     */
    ProductTypeSalesVolumeLineArrayChart getSalesVolumeOfProductTypeInRecentlyEveryDay(Integer[] productTypeIds, @NotNull Integer dayNumber);


}

