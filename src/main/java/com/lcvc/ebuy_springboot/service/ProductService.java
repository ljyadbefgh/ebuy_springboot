package com.lcvc.ebuy_springboot.service;


import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.Product;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.model.query.ProductQuery;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

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
     */
    void addProduct(@Valid @NotNull Product product, Admin admin);


    /**
     * 批量删除指定产品
     * 说明：
     * 1.如果产品存在订单则不允许删除
     * @param ids 多个产品的主键集合
     */
    void deleteProducts(Integer[] ids);




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
     * @param admin 执行的管理账户
     */
    void updateProduct(@Valid @NotNull Product product, Admin admin) throws MyWebException;


    /**
     * 将选中产品都转移到指定产品栏目下
     * @param productIds 该参数为Product类的标识属性结合
     * @param productTypeId 要转移到的栏目标识符
     */
    void updateProductToTransferProductTypeBySelect(@NotNull Integer[] productIds,Integer productTypeId);
}
