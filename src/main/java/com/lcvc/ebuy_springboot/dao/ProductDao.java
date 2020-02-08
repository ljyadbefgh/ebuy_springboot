package com.lcvc.ebuy_springboot.dao;

import com.lcvc.ebuy_springboot.model.Product;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository//为了不让idea报错加上
public interface ProductDao extends IBaseDao<Product>{

    /**
     * 将选中产品都转移到指定产品栏目下
     * @param productIds 该参数为Product类的标识属性结合，不能为Null。集合长度任意
     * @param productTypeId 要转移到的栏目标识符
     */
    void updateProductToTransferProductTypeBySelect(@Param(value = "productIds")Integer[] productIds, @Param(value = "productTypeId")Integer productTypeId);


    /**
     * 为每个商品随机增加商品库存——用于测试订餐系统用
     * 说明：
     * 1.是增加（在原来的基础上增加），不是改变。
     * 2.每个商品增加的随机数不同
     * 3.如果库存超过10000就不再增加
     * @param min 最小数量
     * @param max 最大数量
     */
    void updateProductRepositoryByIncreasement(@Param(value = "min")Integer min,@Param(value = "max")Integer max);
}
