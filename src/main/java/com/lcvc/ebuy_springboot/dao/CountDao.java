package com.lcvc.ebuy_springboot.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * 专门用于计算统计结果
 */
@Repository//为了不让idea报错加上
public interface CountDao {

    /**
     * 说明：获取销量最大的产品，返回名称和对应的销售量
     * 按销量从大到小的顺序排列出来
     * @param limit 表示要获取的最大销量的产品数
     * @return productName表示产品名字，productSalesVolume表示产品销售量
     */
    List<Map<String, Object>> getMaxSalesVolumeOfProduct(@Param(value = "limit")Integer limit);


    /**
     * 说明：获取销售额最大的几个产品栏目，并返回产品栏目名称和对应的销售额
     * 按销量从大到小的顺序排列出来
     * @param limit 表示要获取的产品栏目数量
     * @return productTypeName表示产品栏目名字，productTypeSale表示产品销售量
     */
    List<Map<String, Object>> getMaxSaleOfProductType(@Param(value = "limit")Integer limit);

    /**
     * 说明：查询某一天（及其若干天范围内）的销售量最大的产品栏目，并返回名称和对应的销售量的集合
     * 按销量从大到小的顺序排列出来
     * @param limit 表示要获取的产品栏目数量
     * @param currentDay 查询某一天(当天)
     * @param dayNumber 查询几天前。如果只查询当天，请输入1；查询昨天和今天，请输入2（即查询两天）；以此类推，查询n天前，输入n的值
     * @return productTypeName表示产品栏目名字，productTypeSalesVolume表示产品栏目的销售量
     */
    List<Map<String, Object>> getMaxSalesVolumeOfProductTypeInSomeDay(@Param(value = "limit")Integer limit,@Param(value = "currentDay")Date currentDay,@Param(value = "dayNumber")Integer dayNumber);

    /**
     * 说明：查询指定栏目集合某一天（及其若干天范围内）的销售量最大的产品栏目，并返回名称和对应的销售量的集合
     * 按销量从大到小的顺序排列出来
     * 特别说明：如果某产品栏目在当前没有销量，则
     * @param productTypeIds 表示要获取的产品栏目集合,如果是NULL则表示查询所有栏目
     * @param currentDay 查询某一天(当天)
     * @param dayNumber 查询几天前。如果只查询当天，请输入1；查询昨天和今天，请输入2（即查询两天）；以此类推，查询n天前，输入n的值
     * @return productTypeId表示产品栏目id，productTypeName表示产品栏目名字，productTypeSalesVolume表示产品栏目的销售量
     */
    List<Map<String, Object>> getMaxSalesVolumeOfProductTypeByProductIdInSomeDay(@Param(value = "productTypeIds")Integer[] productTypeIds,@Param(value = "currentDay")Date currentDay,@Param(value = "dayNumber")Integer dayNumber);
}
