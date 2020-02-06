package com.lcvc.ebuy_springboot.dao;

import com.lcvc.ebuy_springboot.model.ProductType;
import org.springframework.stereotype.Repository;

@Repository//为了不让idea报错加上
public interface ProductTypeDao extends IBaseDao<ProductType>{
    /**
     * 说明：获取所有栏目的主键集合
     * @return
     */
    Integer[] readAllIds();

    /**
     * 说明：验证传递过来的id集合是否在数据库存在，并返回存在的id集合
     * @param ids 需要验证的id集合
     * @return
     */
    Integer[] getIdsByIds(Integer[] ids);

}
