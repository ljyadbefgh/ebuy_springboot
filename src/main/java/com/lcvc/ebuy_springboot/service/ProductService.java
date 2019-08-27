package com.lcvc.ebuy_springboot.service;


import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.Product;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyServiceException;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.model.query.ProductQuery;

import javax.validation.Valid;

public interface ProductService {

    /**
     * 分页查询产品
     * @param page 当前页面
     * @param limit  每页最多显示的记录数
     * @param productQuery 查询条件类
     * @return
     */
    PageObject searchProducts(Integer page, Integer limit, ProductQuery productQuery);


    /**
     * 获取产品的初始值-用于创建时表单初始化
     */
    Product getProductInit();


    /**
     * 添加产品信息
     * @param product
     * @param admin 执行的管理账户
     * @throws MyWebException
     */
    void addProduct(@Valid Product product, Admin admin);


    /**
     * 批量删除指定产品
     * 说明：
     * 1.如果产品存在订单则不允许删除
     * @param ids 多个产品的主键集合
     * @throws MyWebException
     */
    void deleteProducts(Integer[] ids) throws MyWebException, MyServiceException;




    /**
     * 根据id读取对象
     * @param id
     * @return
     */
    Product getProduct(Integer id);


    /**
     * 编辑产品信息
     * 说明：
     * @param product
     */
    void updateProduct(Product product) throws MyWebException;
}
