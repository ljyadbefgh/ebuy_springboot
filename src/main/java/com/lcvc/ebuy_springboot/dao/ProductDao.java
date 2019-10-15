package com.lcvc.ebuy_springboot.dao;

import com.lcvc.ebuy_springboot.model.Product;
import org.springframework.stereotype.Repository;

@Repository//为了不让idea报错加上
public interface ProductDao extends IBaseDao<Product>{


}
