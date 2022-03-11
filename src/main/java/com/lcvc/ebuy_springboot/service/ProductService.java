package com.lcvc.ebuy_springboot.service;


import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.Product;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.model.query.ProductQuery;

import javax.validation.Valid;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;

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
     * 获取产品的总记录数
     * @return
     */
    Integer total();


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
     * 2.删除产品的同时，删除该产品的点击日志
     * 3.删除产品的同时，删除产品的预览图集合
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
     * 说明：点击产品时触发，实现点击数+1
     * 如果数据库中产品不存在则不会执行任何操作，也不会报错
     * @param productId 不能为NULL
     */
    void updateForClickProduct(@NotNull Integer productId) throws MyWebException;


    /**
     * 将选中产品都转移到指定产品栏目下
     * @param productIds 该参数为Product类的标识属性结合
     * @param productTypeId 要转移到的栏目标识符
     */
    void updateProductToTransferProductTypeBySelect(@NotNull Integer[] productIds,Integer productTypeId);

    /**
     * 为每个商品随机增加商品库存——用于测试订餐系统用
     * 说明：
     * 1.是增加（在原来的基础上增加），不是改变。
     * 2.每个商品增加的随机数不同
     * @param minNumber 最小数值
     * @param maxNumber 最大数值
     */
    void updateProductRepositoryByIncreasement(Integer minNumber, Integer maxNumber);

    /**
     * 为客户收藏产品
     * @param customerId
     * @param productId
     */
    void saveProductCollect(@NotNull(message = "客户id不能为空")Integer customerId,@NotNull(message = "产品id不能为空")Integer productId);

    /**
     * 移除收藏的产品
     * @param customerId
     * @param productId
     */
    void removeProductCollect(@NotNull(message = "客户id不能为空")Integer customerId,@NotNull(message = "产品id不能为空")Integer productId);

    /**
     * 判断该商品是否已经收藏
     * @param customerId
     * @param productId
     */
    boolean existsProductCollect(@NotNull(message = "客户id不能为空")Integer customerId,@NotNull(message = "产品id不能为空")Integer productId);

    /**
     * 获取指定用户的收藏商品
     * @param customerId
     */
    List<Product> getProductCollectByCustomer(@NotNull(message = "客户id不能为空")Integer customerId);

    /**
     * 将选中的收藏商品从客户下移除
     * @param productIds 该参数为Product类的标识属性结合
     * @param customerId
     */
    void removeProductCollectByCustomerAndProductIds(@NotNull(message = "客户id不能为空")Integer customerId,@NotEmpty(message = "必须选择产品") Integer[] productIds);
}
