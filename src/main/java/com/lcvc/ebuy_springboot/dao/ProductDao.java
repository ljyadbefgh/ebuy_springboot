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


}
