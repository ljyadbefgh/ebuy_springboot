package com.lcvc.ebuy_springboot.dao;

import com.lcvc.ebuy_springboot.model.Product;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.List;

@Repository//为了不让idea报错加上
public interface ProductDao extends IBaseDao<Product>{

    /**
     * 说明：点击产品时触发，实现点击数+1
     * @param productId
     */
    void updateForClickProduct(Integer productId);

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

    /**
     * 读取指定产品的所有预览图（只读取地址）
     * @param productId
     * @return
     */
    List<String> getPreviewPicturePicUrlsOfProduct(@Param(value = "productId")Integer productId);

    /**
     * 一次插入多条记录：将产品和对应的预览图集合插入数据库
     * 说明：集合为空则不插入任何记录
     * @param previewPictures 不能为Null
     * @param productId 产品id，不能为NULL
     * @return 返回插入的记录数
     */
    int savePeviewPictures(@Param(value = "previewPictures")Collection<String> previewPictures,@Param(value = "productId")int productId);

    /**
     * 一次删除多条记录：将产品和对应的预览图集合从数据库中删除
     * 说明：集合为空则不插入任何记录
     * @param previewPictures 不能为Null
     * @param productId 产品id，不能为NULL
     * @return 返回删除的记录数
     */
    int deletePeviewPictures(@Param(value = "previewPictures")Collection<String> previewPictures,@Param(value = "productId")int productId);

    /**
     * 一次删除多条记录：将产品对应的所有预览图集合从数据库中删除
     * 说明：集合为空则不插入任何记录
     * @param productIds 产品id集合，不能为NULL
     * @return 返回删除的记录数
     */
    int deletePeviewPicturesByProductId(@Param(value = "productIds")Integer[] productIds);
}
